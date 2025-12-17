/*
 * Super Mario Game - Hardware Interface Functions
 * Controls the sprite engine via AXI Lite interface
 */

#ifndef SUPER_MARIO_HW_H
#define SUPER_MARIO_HW_H

#include <stdint.h>
#include <stdbool.h>
#include "xil_io.h"
#include "xparameters.h"

// Sprite engine register offsets
#define SPRITE_X_POS_OFFSET     0x00000000
#define SPRITE_Y_POS_OFFSET     0x01000000
#define SPRITE_ID_OFFSET        0x02000000
#define SPRITE_PALETTE_OFFSET   0x03000000
#define SPRITE_ENABLE_OFFSET    0x04000000
#define SPRITE_FLIP_OFFSET      0x05000000
#define SPRITE_PRIORITY_OFFSET  0x06000000

// Hardware base address
#define SPRITE_ENGINE_BASE XPAR_SUPER_MARIO_TOP_0_S_AXI_BASEADDR

// Inline hardware access functions
static inline void sprite_set_position(uint8_t sprite_id, int x, int y)
{
    uint32_t addr;
    
    // Set X position
    addr = SPRITE_ENGINE_BASE + SPRITE_X_POS_OFFSET + (sprite_id << 8);
    Xil_Out32(addr, x & 0x3FF);
    
    // Set Y position
    addr = SPRITE_ENGINE_BASE + SPRITE_Y_POS_OFFSET + (sprite_id << 8);
    Xil_Out32(addr, y & 0x3FF);
}

static inline void sprite_set_sprite_id(uint8_t sprite_idx, uint8_t sprite_id)
{
    uint32_t addr = SPRITE_ENGINE_BASE + SPRITE_ID_OFFSET + (sprite_idx << 8);
    Xil_Out32(addr, sprite_id);
}

static inline void sprite_set_palette(uint8_t sprite_id, uint8_t palette)
{
    uint32_t addr = SPRITE_ENGINE_BASE + SPRITE_PALETTE_OFFSET + (sprite_id << 8);
    Xil_Out32(addr, palette & 0x0F);
}

static inline void sprite_set_enabled(uint8_t sprite_id, bool enabled)
{
    uint32_t addr = SPRITE_ENGINE_BASE + SPRITE_ENABLE_OFFSET + (sprite_id << 8);
    Xil_Out32(addr, enabled ? 1 : 0);
}

static inline void sprite_set_flip(uint8_t sprite_id, bool h_flip, bool v_flip)
{
    uint32_t addr = SPRITE_ENGINE_BASE + SPRITE_FLIP_OFFSET + (sprite_id << 8);
    uint32_t value = (v_flip ? 2 : 0) | (h_flip ? 1 : 0);
    Xil_Out32(addr, value);
}

static inline void sprite_set_priority(uint8_t sprite_id, uint8_t priority)
{
    uint32_t addr = SPRITE_ENGINE_BASE + SPRITE_PRIORITY_OFFSET + (sprite_id << 8);
    Xil_Out32(addr, priority & 0x0F);
}

// Convenience function to configure a complete sprite
static inline void sprite_configure(uint8_t sprite_id, 
                                    int x, int y,
                                    uint8_t sprite_pattern,
                                    uint8_t palette,
                                    bool enabled,
                                    bool h_flip,
                                    bool v_flip,
                                    uint8_t priority)
{
    sprite_set_position(sprite_id, x, y);
    sprite_set_sprite_id(sprite_id, sprite_pattern);
    sprite_set_palette(sprite_id, palette);
    sprite_set_flip(sprite_id, h_flip, v_flip);
    sprite_set_priority(sprite_id, priority);
    sprite_set_enabled(sprite_id, enabled);
}

#endif // SUPER_MARIO_HW_H

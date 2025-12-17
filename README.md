# Super Mario Bros. FPGA Edition

**ECE 385 Final Project - University of Illinois Urbana-Champaign - Fall 2025**

A fully-functional Super Mario Bros. clone implemented in SystemVerilog on the Urbana FPGA board.

---

## Features

### Graphics & Display
- 640×480 resolution at 60Hz via HDMI output
- Hardware sprite rendering with BRAM-based ROMs
- Smooth camera scrolling following the player
- Animated sprites for players and enemies

### Gameplay
- **5 complete levels** with increasing difficulty
- **2-player cooperative mode** (Mario & Luigi)
- Physics engine with gravity and variable jump height
- Collision detection for platforms, obstacles, and enemies

### Enemies
| Enemy | Description |
|-------|-------------|
| Goomba | Patrols left/right, stomp to defeat |
| Koopa | Becomes a fast-moving shell when stomped |
| Spiny | Has spikes - cannot be stomped! |
| Flying | Moves in sinusoidal pattern |
| Blocker | Stationary obstacle enemy |

### Power-Ups
- **Super Mushroom** - Grow to Big Mario, survive one extra hit
- **Super Star** - Temporary invincibility with rainbow effect

### Audio
- Background music streamed from SD card
- 22kHz 8-bit PCM audio with PWM output

### User Interface
- Hardware-rendered font for HUD display
- Score counter, lives display, level timer
- Title screen, pause menu, game over screen

---

## Controls

| Player 1 (Mario) | Player 2 (Luigi) | Action |
|------------------|------------------|--------|
| W | ↑ | Jump |
| A | ← | Move Left |
| S | ↓ | Crouch |
| D | → | Move Right |

| Key | Action |
|-----|--------|
| Enter | Start / Confirm |
| P | Pause |
| Q | Quit to menu |
| R | Restart level |

### Cheat Codes

| Key | Effect |
|-----|--------|
| L | +3 Lives (both players) |
| H | Toggle speed boost |
| I | Toggle god mode (invincibility) |
| N | Skip to next level |
| K | Kill all enemies on screen |

---

## Authors

- **Chen Zeng** 
- **Xinyang Liu**

---

## Copyright

© 2025 Chen Zeng and Xinyang Liu. All rights reserved.

This repository is publicly visible for **educational and portfolio purposes only**.

**Unauthorized copying, modification, or distribution of this code is strictly prohibited** without explicit written permission from the authors.

---

## Disclaimer

This is a **non-commercial educational project** created for ECE 385 at the University of Illinois Urbana-Champaign.

Super Mario Bros. is a registered trademark of **Nintendo Co., Ltd.** This project is **not affiliated with, endorsed by, or sponsored by Nintendo**. All game assets were recreated for educational purposes only.

---

*University of Illinois Urbana-Champaign - ECE 385 - Fall 2025*
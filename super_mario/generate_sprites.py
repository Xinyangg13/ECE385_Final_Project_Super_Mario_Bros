#!/usr/bin/env python3
"""
Mario Sprite Generator for FPGA
Converts PNG sprite sheets to COE/MEM files for Vivado Block RAM

Usage:
    python3 generate_sprites.py

Required: Pillow library (pip install Pillow)
"""

from PIL import Image
import os

# NES-style palette (16 colors)
PALETTE = {
    (92, 148, 252): 0,    # Sky blue (transparent)
    (0, 0, 0): 1,         # Black (outline)
    (181, 49, 32): 2,     # Mario red
    (252, 188, 160): 3,   # Skin tone
    (107, 68, 0): 4,      # Brown (hair/shoes)
    (0, 168, 0): 5,       # Pipe green
    (0, 252, 0): 6,       # Light green
    (252, 252, 0): 7,     # Yellow (coins)
    (252, 152, 56): 8,    # Orange (? blocks)
    (248, 216, 120): 9,   # Light orange
    (139, 69, 19): 10,    # Ground brown
    (210, 105, 30): 11,   # Brick brown
    (255, 255, 255): 12,  # White (clouds)
    (172, 172, 172): 13,  # Gray
    (0, 88, 248): 14,     # Dark blue
    (120, 120, 120): 15,  # Dark gray
}

def find_closest_color(r, g, b):
    """Find closest palette color for a given RGB value"""
    min_dist = float('inf')
    closest = 0
    for (pr, pg, pb), idx in PALETTE.items():
        dist = (r-pr)**2 + (g-pg)**2 + (b-pb)**2
        if dist < min_dist:
            min_dist = dist
            closest = idx
    return closest

def image_to_mem(image_path, output_path, sprite_width=16, sprite_height=16, num_frames=1):
    """Convert sprite sheet PNG to MEM file"""
    try:
        img = Image.open(image_path).convert('RGBA')
    except FileNotFoundError:
        print(f"Warning: {image_path} not found, generating placeholder data")
        return generate_placeholder_sprite(output_path, sprite_width, sprite_height, num_frames)
    
    pixels = []
    
    for frame in range(num_frames):
        frame_x = (frame * sprite_width) % img.width
        frame_y = ((frame * sprite_width) // img.width) * sprite_height
        
        for y in range(sprite_height):
            for x in range(sprite_width):
                px = frame_x + x
                py = frame_y + y
                
                if px < img.width and py < img.height:
                    r, g, b, a = img.getpixel((px, py))
                    if a < 128:  # Transparent
                        color_idx = 0
                    else:
                        color_idx = find_closest_color(r, g, b)
                else:
                    color_idx = 0
                
                pixels.append(color_idx)
    
    # Write MEM file (hex format)
    with open(output_path, 'w') as f:
        for i, pixel in enumerate(pixels):
            f.write(f"{pixel:01X}\n")
    
    print(f"Generated {output_path} with {len(pixels)} pixels")
    return len(pixels)

def generate_placeholder_sprite(output_path, width, height, num_frames):
    """Generate placeholder sprite data when image not available"""
    pixels = []
    
    for frame in range(num_frames):
        for y in range(height):
            for x in range(width):
                # Create a simple pattern
                if x == 0 or x == width-1 or y == 0 or y == height-1:
                    pixels.append(1)  # Black outline
                elif frame == 0:  # Idle - simple shape
                    if 4 <= x <= 11 and 2 <= y <= 6:
                        pixels.append(4)  # Hair (brown)
                    elif 5 <= x <= 10 and 7 <= y <= 9:
                        pixels.append(3)  # Face (skin)
                    elif 4 <= x <= 11 and 10 <= y <= 13:
                        pixels.append(2)  # Body (red)
                    elif (3 <= x <= 5 or 10 <= x <= 12) and 14 <= y <= 15:
                        pixels.append(4)  # Feet (brown)
                    else:
                        pixels.append(0)  # Transparent
                else:
                    # Walking frames - slight variations
                    if 4 <= x <= 11 and 2 <= y <= 6:
                        pixels.append(4)
                    elif 5 <= x <= 10 and 7 <= y <= 9:
                        pixels.append(3)
                    elif 4 <= x <= 11 and 10 <= y <= 13:
                        pixels.append(2)
                    elif frame % 2 == 0:
                        if (2 <= x <= 5) and 14 <= y <= 15:
                            pixels.append(4)
                        elif (10 <= x <= 13) and 14 <= y <= 15:
                            pixels.append(4)
                        else:
                            pixels.append(0)
                    else:
                        if (4 <= x <= 7) and 14 <= y <= 15:
                            pixels.append(4)
                        elif (8 <= x <= 11) and 14 <= y <= 15:
                            pixels.append(4)
                        else:
                            pixels.append(0)
    
    with open(output_path, 'w') as f:
        for pixel in pixels:
            f.write(f"{pixel:01X}\n")
    
    print(f"Generated placeholder {output_path} with {len(pixels)} pixels")
    return len(pixels)

def generate_mario_sprites(output_path="mario_sprites.mem"):
    """Generate Mario sprite data (6 frames, 16x16 each)"""
    # Try to load from image, or generate placeholder
    return generate_placeholder_sprite(output_path, 16, 16, 6)

def generate_tile_sprites(output_path="tiles.mem"):
    """Generate tile graphics (64 tiles, 16x16 each)"""
    pixels = []
    
    for tile_type in range(64):
        for y in range(16):
            for x in range(16):
                if tile_type == 0:  # Sky
                    pixels.append(0)
                
                elif tile_type == 1:  # Ground
                    if (x + y) % 8 < 4:
                        pixels.append(10)  # Brown
                    else:
                        pixels.append(11)  # Light brown
                
                elif tile_type == 2:  # Brick
                    if y % 8 == 0 or (x + (y // 8) * 4) % 8 == 0:
                        pixels.append(1)  # Black mortar
                    else:
                        pixels.append(11)  # Brick color
                
                elif tile_type == 3:  # Question block
                    if x == 0 or x == 15 or y == 0 or y == 15:
                        pixels.append(1)  # Outline
                    elif 5 <= x <= 10 and 4 <= y <= 11:
                        pixels.append(12)  # Question mark (white)
                    else:
                        pixels.append(8)  # Orange
                
                elif tile_type == 4:  # Used block
                    if x == 0 or x == 15 or y == 0 or y == 15:
                        pixels.append(1)
                    else:
                        pixels.append(11)  # Brown
                
                elif tile_type == 5:  # Pipe top left
                    if x < 2:
                        pixels.append(5)  # Dark green
                    elif x < 14:
                        pixels.append(6)  # Light green
                    else:
                        pixels.append(5)
                
                elif tile_type == 6:  # Pipe top right
                    if x < 2:
                        pixels.append(5)
                    elif x < 14:
                        pixels.append(6)
                    else:
                        pixels.append(5)
                
                elif tile_type == 7:  # Pipe body left
                    if x < 4:
                        pixels.append(5)
                    else:
                        pixels.append(6)
                
                elif tile_type == 8:  # Pipe body right
                    if x > 11:
                        pixels.append(5)
                    else:
                        pixels.append(6)
                
                elif tile_type == 9:  # Cloud left
                    if 4 <= x <= 15 and 4 <= y <= 12:
                        pixels.append(12)  # White
                    else:
                        pixels.append(0)  # Sky
                
                elif tile_type == 10:  # Cloud middle
                    if 2 <= y <= 13:
                        pixels.append(12)
                    else:
                        pixels.append(0)
                
                elif tile_type == 11:  # Cloud right
                    if 0 <= x <= 11 and 4 <= y <= 12:
                        pixels.append(12)
                    else:
                        pixels.append(0)
                
                elif tile_type == 12:  # Coin
                    dist = (x-7.5)**2 + (y-7.5)**2
                    if dist < 36:
                        pixels.append(7)  # Yellow
                    else:
                        pixels.append(0)
                
                else:  # Default - sky
                    pixels.append(0)
    
    with open(output_path, 'w') as f:
        for pixel in pixels:
            f.write(f"{pixel:01X}\n")
    
    print(f"Generated {output_path} with {len(pixels)} pixels")

def generate_enemy_sprites(output_path="enemies.mem"):
    """Generate enemy sprite data"""
    pixels = []
    
    # 8 enemy types, 16x16 each
    for enemy_type in range(8):
        for y in range(16):
            for x in range(16):
                if enemy_type == 0:  # None
                    pixels.append(0)
                
                elif enemy_type == 1:  # Goomba
                    if 3 <= x <= 12 and 2 <= y <= 8:
                        pixels.append(11)  # Brown head
                    elif 5 <= x <= 10 and 9 <= y <= 12:
                        pixels.append(11)  # Body
                    elif (2 <= x <= 5 or 10 <= x <= 13) and 13 <= y <= 15:
                        pixels.append(1)  # Feet
                    elif 6 <= x <= 7 and 4 <= y <= 6:
                        pixels.append(12)  # Left eye
                    elif 8 <= x <= 9 and 4 <= y <= 6:
                        pixels.append(12)  # Right eye
                    else:
                        pixels.append(0)
                
                elif enemy_type == 2:  # Koopa
                    if 4 <= x <= 11 and 0 <= y <= 4:
                        pixels.append(6)  # Green head
                    elif 3 <= x <= 12 and 5 <= y <= 12:
                        pixels.append(6)  # Shell
                    elif 5 <= x <= 10 and 13 <= y <= 15:
                        pixels.append(8)  # Feet (orange)
                    else:
                        pixels.append(0)
                
                elif enemy_type == 3:  # Piranha plant
                    if 4 <= x <= 11 and y < 8:
                        if (x + y) % 3 == 0:
                            pixels.append(12)  # White spots
                        else:
                            pixels.append(2)  # Red
                    elif 6 <= x <= 9 and 8 <= y <= 15:
                        pixels.append(5)  # Green stem
                    else:
                        pixels.append(0)
                
                else:
                    pixels.append(0)
    
    with open(output_path, 'w') as f:
        for pixel in pixels:
            f.write(f"{pixel:01X}\n")
    
    print(f"Generated {output_path} with {len(pixels)} pixels")

def generate_level_map(output_path="level1.mem"):
    """Generate World 1-1 style level layout"""
    # 256 tiles wide x 16 tiles tall
    level = [[0 for _ in range(256)] for _ in range(16)]
    
    # Ground (rows 14-15)
    for x in range(256):
        # Gaps in ground
        if not (69 <= x <= 70 or 86 <= x <= 88 or 153 <= x <= 154):
            level[14][x] = 1  # Ground
            level[15][x] = 1  # Ground
    
    # Bricks and question blocks
    # First set around x=16-22
    for x in [16, 20, 21, 22, 23]:
        level[10][x] = 2  # Brick
    level[10][17] = 3  # Question block (coin)
    level[6][21] = 3   # Question block (above, mushroom)
    
    # Second set
    for x in [77, 78, 79]:
        level[10][x] = 2
    level[10][80] = 3
    
    # Pipes
    pipe_positions = [(28, 12), (38, 11), (46, 10), (57, 10), (163, 12), (179, 12)]
    for px, height in pipe_positions:
        level[13][px] = 5      # Pipe top left
        level[13][px+1] = 6    # Pipe top right
        for py in range(14, 16):
            level[py][px] = 7    # Pipe body left
            level[py][px+1] = 8  # Pipe body right
    
    # Clouds (row 3)
    cloud_positions = [8, 19, 27, 36, 56, 67, 87, 103]
    for cx in cloud_positions:
        level[3][cx] = 9    # Cloud left
        level[3][cx+1] = 10 # Cloud middle
        level[3][cx+2] = 11 # Cloud right
    
    # Staircase at end (starts at x=134)
    for step in range(8):
        for x in range(134 + step, 142):
            level[13 - step][x] = 1
    
    # Flag pole area
    level[3][152] = 1   # Flag pole top
    for y in range(4, 14):
        level[y][152] = 1  # Flag pole
    
    # Write level data
    with open(output_path, 'w') as f:
        for y in range(16):
            for x in range(256):
                f.write(f"{level[y][x]:02X}\n")
    
    print(f"Generated {output_path}")

def generate_coe_file(mem_path, coe_path, radix=16):
    """Convert MEM file to COE file format for Vivado"""
    with open(mem_path, 'r') as f:
        data = [line.strip() for line in f if line.strip()]
    
    with open(coe_path, 'w') as f:
        f.write(f"; COE file generated from {mem_path}\n")
        f.write(f"memory_initialization_radix={radix};\n")
        f.write("memory_initialization_vector=\n")
        f.write(",\n".join(data) + ";\n")
    
    print(f"Generated {coe_path}")

if __name__ == "__main__":
    print("Generating Mario sprite data...")
    generate_mario_sprites("mario_sprites.mem")
    
    print("\nGenerating tile data...")
    generate_tile_sprites("tiles.mem")
    
    print("\nGenerating enemy data...")
    generate_enemy_sprites("enemies.mem")
    
    print("\nGenerating level map...")
    generate_level_map("level1.mem")
    
    # Also generate COE files for Vivado
    print("\nConverting to COE format...")
    generate_coe_file("mario_sprites.mem", "mario_sprites.coe")
    generate_coe_file("tiles.mem", "tiles.coe")
    generate_coe_file("enemies.mem", "enemies.coe")
    generate_coe_file("level1.mem", "level1.coe")
    
    print("\nDone! Files generated:")
    print("  - mario_sprites.mem / .coe")
    print("  - tiles.mem / .coe")
    print("  - enemies.mem / .coe")
    print("  - level1.mem / .coe")

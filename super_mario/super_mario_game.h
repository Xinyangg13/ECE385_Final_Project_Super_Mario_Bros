/*
 * Super Mario Game - Game Structures and Definitions
 */

#ifndef SUPER_MARIO_GAME_H
#define SUPER_MARIO_GAME_H

#include <stdint.h>
#include <stdbool.h>

// Game constants
#define MAX_ENEMIES     16
#define MAX_COINS       32
#define MAX_BLOCKS      64
#define LEVEL_WIDTH     160
#define LEVEL_HEIGHT    30

// Mario states
typedef enum {
    MARIO_SMALL,
    MARIO_BIG,
    MARIO_FIRE
} mario_state_e;

// Enemy types
typedef enum {
    ENEMY_GOOMBA,
    ENEMY_KOOPA,
    ENEMY_PIRANHA
} enemy_type_e;

// Block types
typedef enum {
    BLOCK_BRICK,
    BLOCK_QUESTION,
    BLOCK_PIPE,
    BLOCK_GROUND
} block_type_e;

// Mario structure
typedef struct {
    int x;
    int y;
    int velocity_x;
    int velocity_y;
    bool on_ground;
    bool facing_right;
    int lives;
    int score;
    mario_state_e state;
    uint8_t sprite_id;
    int invincible_timer;
} mario_t;

// Enemy structure
typedef struct {
    int x;
    int y;
    int velocity_x;
    bool active;
    enemy_type_e type;
    uint8_t sprite_id;
    bool moving_right;
} enemy_t;

// Coin structure
typedef struct {
    int x;
    int y;
    bool active;
} coin_t;

// Block structure
typedef struct {
    int x;
    int y;
    block_type_e type;
    bool active;
    bool solid;
    bool has_item;
    int item_type;
} block_t;

// Game state structure
typedef struct {
    int current_level;
    int time_remaining;
    bool paused;
    bool game_over;
    bool frame_ready;
    int frame_counter;
} game_state_t;

// Function prototypes
void load_level_1(void);
void spawn_enemies_level_1(void);
void spawn_coins_level_1(void);
void update_enemies(void);
void take_damage(void);
bool check_collision_rect(int x1, int y1, int w1, int h1,
                         int x2, int y2, int w2, int h2);

// External declarations
extern game_state_t game_state;
extern mario_t mario;
extern enemy_t enemies[MAX_ENEMIES];
extern coin_t coins[MAX_COINS];
extern block_t blocks[MAX_BLOCKS];
extern uint8_t level_map[LEVEL_HEIGHT][LEVEL_WIDTH];

#endif // SUPER_MARIO_GAME_H

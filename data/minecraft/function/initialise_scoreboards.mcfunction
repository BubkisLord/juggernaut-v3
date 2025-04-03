# Save HUD variables to scoreboard to access if needed. Note these are read-only.
scoreboard objectives add health health "Health"
scoreboard objectives add armor armor "Armor"
scoreboard objectives add hunger food "Food"
scoreboard objectives add level level "Level"
scoreboard objectives add experience_points xp "Level"

# Death / Kill Count
scoreboard objectives add total_deaths custom:deaths "Death Count"
scoreboard objectives add total_kills custom:player_kills "Player Kills"

# Player Statistics (For viewing stats, leaderboard, etc.)
scoreboard objectives add playtime custom:play_time "Playtime"
scoreboard objectives add distance_travelled custom:sprint_one_cm "Distance Sprinted"
scoreboard objectives add distance_travelled custom:walk_one_cm "Distance Walked"
scoreboard objectives add distance_crouched custom:crouch_one_cm "Distance Crouched"

# Game Management Variables
scoreboard objectives add game_time_ticks dummy "Game Time"
scoreboard objectives add game_time_seconds dummy "Game Time Seconds"
scoreboard objectives add debug_mode dummy "Debug Mode"

# Player Game Variables
scoreboard objectives add lives dummy "Lives"
scoreboard objectives add deaths dummy "Deaths"
scoreboard objectives add respawn_time_ticks dummy "Respawn Time (Ticks)"
scoreboard objectives add respawn_time_seconds dummy "Respawn Time"

# Cooldowns and Timers
scoreboard objectives add ability_one_cooldown dummy "Ability 1 Cooldown"
scoreboard objectives add ability_two_cooldown dummy "Ability 2 Cooldown"
scoreboard objectives add ability_three_cooldown dummy "Ability 3 Cooldown"
scoreboard objectives add ability_four_cooldown dummy "Ability 4 Cooldown"
scoreboard objectives add ability_five_cooldown dummy "Ability 5 Cooldown"

scoreboard objectives add passive_one_cooldown dummy "Passive Cooldown 1"
scoreboard objectives add passive_two_cooldown dummy "Passive Cooldown 2"
scoreboard objectives add passive_three_cooldown dummy "Passive Cooldown 3"

# Hooking Variables. (Updated by Minecraft, checked, then reset each tick)
scoreboard objectives add kill_this_tick custom:player_kills
scoreboard objectives add death_this_tick custom:deaths
scoreboard objectives add damage_dealt_this_tick custom:damage_dealt
scoreboard objectives add damaged_this_tick custom:damage_taken

# Player Movement Variables (Updated by Minecraft, checked, then reset each 5 ticks - enough time to move one cm)
scoreboard objectives add sneaking custom:sneak_time
scoreboard objectives add sprinting custom:sprint_one_cm
scoreboard objectives add walking custom:walk_one_cm
scoreboard objectives add swimming custom:swim_one_cm
scoreboard objectives add flying custom:fly_one_cm
scoreboard objectives add climbing custom:climb_one_cm
scoreboard objectives add falling custom:fall_one_cm
scoreboard objectives add jumping custom:jump
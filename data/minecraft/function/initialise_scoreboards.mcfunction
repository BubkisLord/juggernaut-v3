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

scoreboard objectives add stations_completed dummy "Stations Completed"
scoreboard objectives add stations_needed dummy "Stations Needed"

scoreboard objectives add replenishment_percent dummy "Replenishment Percent"

scoreboard objectives add temp_replenishment_done dummy
scoreboard objectives add replenishment_done dummy "Replenishment Done"
scoreboard objectives add replenishment_needed dummy "Replenishment Needed"
scoreboard objectives add regress_amount dummy
scoreboard objectives add replenish_timeout dummy

scoreboard objectives add replenish_mod_timer dummy
scoreboard objectives add ticks_spent_buffing dummy
scoreboard objectives add ticks_spent_debuffing dummy
scoreboard objectives add ticks_till_increment dummy
scoreboard objectives add ticks_till_decrement dummy

scoreboard objectives add game_state dummy "Game State"

# Player Game Variables
scoreboard objectives add max_lives dummy "Total Lives"
scoreboard objectives add lives_remaining dummy "Lives Remaining"
scoreboard objectives add deaths custom:deaths "Deaths"

scoreboard objectives add max_cage_time dummy "Max Cage Time"
scoreboard objectives add cage_time_left dummy "Cage Time Left"
scoreboard objectives add cage_time_left_s dummy "Cage Time Left (Seconds)"
scoreboard objectives add temp_cage_time dummy

scoreboard objectives add replenish_buff dummy "Replenishment Buff"
scoreboard objectives add replenish_debuff dummy "Replenishment Debuff"
scoreboard objectives add replenishment_mod dummy "Replenishment Modifier"

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

# General Variable
scoreboard objectives add var dummy


# Set numbers
scoreboard players set #0 var 0
scoreboard players set #1 var 1
scoreboard players set #2 var 2
scoreboard players set #3 var 3
scoreboard players set #4 var 4
scoreboard players set #5 var 5
scoreboard players set #6 var 6
scoreboard players set #7 var 7
scoreboard players set #8 var 8
scoreboard players set #9 var 9
scoreboard players set #10 var 10
scoreboard players set #20 var 20
scoreboard players set #30 var 30
scoreboard players set #33 var 33
scoreboard players set #40 var 40
scoreboard players set #50 var 50
scoreboard players set #60 var 60
scoreboard players set #66 var 66
scoreboard players set #70 var 70
scoreboard players set #75 var 75
scoreboard players set #80 var 80
scoreboard players set #85 var 85
scoreboard players set #90 var 90
scoreboard players set #95 var 95
scoreboard players set #100 var 100
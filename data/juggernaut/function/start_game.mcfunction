scoreboard players set #juggernaut max_lives 3

scoreboard players set @a[tag=runner] deaths 0
scoreboard players set @a[tag=juggernaut] deaths 0

# Set cage time left to 4800 ticks (4 minutes)
scoreboard players set #juggernaut max_cage_time 4800
scoreboard players operation @a[tag=runner] cage_time_left = #juggernaut max_cage_time
scoreboard players set @a[tag=runner] temp_cage_time 0

# Activate game.
scoreboard players set #global game_state 1
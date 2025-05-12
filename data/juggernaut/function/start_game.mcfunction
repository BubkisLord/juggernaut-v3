execute if score #global game_state matches 1 run return fail

scoreboard players set #juggernaut max_lives 3

scoreboard players set @a[tag=runner] deaths 0
scoreboard players set @a[tag=juggernaut] deaths 0

scoreboard players set @a hook_stages -1

execute as @a[limit=1,sort=random] run tag @s add juggernaut
execute as @a[tag=!juggernaut] run tag @s add runner

# Set cage time left to 4800 ticks (4 minutes)
scoreboard players set #juggernaut max_cage_time 4800
scoreboard players operation @a[tag=runner] cage_time_left = #juggernaut max_cage_time
scoreboard players set @a[tag=runner] temp_cage_time 0

# Activate game.
scoreboard players set #global game_state 1
# This should be set to 2 once the juggernaut spawning in the game works.
scoreboard players set #juggernaut game_state 1

tellraw @a {text:"--STARTED GAME--"}
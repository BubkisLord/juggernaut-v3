kill @e[tag=kill_on_end_game]

tag @a remove runner
tag @a remove juggernaut

scoreboard players set @a hook_stages -1

scoreboard players set @a deaths 0
scoreboard players set @a game_time_seconds 0
scoreboard players set @a game_time_ticks 0

scoreboard players set @a ability_one_cooldown 0
scoreboard players set @a ability_two_cooldown 0
scoreboard players set @a ability_three_cooldown 0
scoreboard players set @a ability_four_cooldown 0
scoreboard players set @a ability_five_cooldown 0

scoreboard players set @a passive_one_cooldown 0
scoreboard players set @a passive_two_cooldown 0
scoreboard players set @a passive_three_cooldown 0

# Set the game state to 0 (not started)
scoreboard players set #global game_state 0
scoreboard players set #juggernaut game_state 0

tellraw @a {text:"--ENDED GAME--"}
scoreboard players operation @s cage_time_left_s = @s cage_time_left
scoreboard players operation @s cage_time_left_s /= #20 var

scoreboard players operation @s temp_cage_time = #juggernaut max_cage_time
scoreboard players operation @s temp_cage_time /= #3 var
scoreboard players operation @s temp_cage_time *= #2 var
execute if entity @s[tag=!reached_second_stage] if score @s cage_time_left <= @s temp_cage_time run scoreboard players add @s deaths 1
execute if entity @s[tag=!reached_second_stage] if score @s cage_time_left <= @s temp_cage_time run tag @s add reached_second_stage
execute if score @s cage_time_left matches ..0 run scoreboard players operation @s deaths = #juggernaut max_lives
execute if score @s deaths >= #juggernaut max_lives run function juggernaut:cages/uncage_runner
execute if score @s deaths >= #juggernaut max_lives run kill @s
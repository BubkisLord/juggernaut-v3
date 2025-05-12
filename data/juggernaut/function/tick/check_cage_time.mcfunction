scoreboard players operation @s cage_time_left_s = @s cage_time_left
scoreboard players operation @s cage_time_left_s /= #20 var

scoreboard players operation @s temp_cage_time = #juggernaut max_cage_time
scoreboard players operation @s temp_cage_time /= #3 var
scoreboard players operation @s temp_cage_time *= #2 var
execute if score @s hook_stages matches ..0 if score @s cage_time_left <= @s temp_cage_time run scoreboard players set @s hook_stages 1
execute if score @s cage_time_left matches ..0 run scoreboard players set @s hook_stages 2
execute if score @s hook_stages matches 2.. run scoreboard players operation @s deaths = #juggernaut max_lives
execute if score @s deaths >= #juggernaut max_lives run function juggernaut:cages/uncage_runner
execute if score @s deaths >= #juggernaut max_lives run kill @s
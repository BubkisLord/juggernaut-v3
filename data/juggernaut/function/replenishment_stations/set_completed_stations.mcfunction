scoreboard players set #juggernaut stations_completed 0
execute as @e[type=armor_stand,tag=station_completed] run scoreboard players add #juggernaut stations_completed 1

execute if score #juggernaut stations_completed >= #juggernaut stations_needed run tellraw @a {"text": "Runners win! (Replenishment Complete)","bold": true}
execute if score #juggernaut stations_completed >= #juggernaut stations_needed run function juggernaut:end_game
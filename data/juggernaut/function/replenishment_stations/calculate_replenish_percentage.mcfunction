scoreboard players operation #juggernaut var = #juggernaut replenishment_done
scoreboard players operation #juggernaut var *= #100 var

execute store result score #juggernaut replenishment_percent run scoreboard players operation #juggernaut var /= #juggernaut replenishment_needed

execute if score #juggernaut game_state matches 1 run scoreboard players operation #juggernaut temp_replenishment_done = #juggernaut replenishment_done
execute if score #juggernaut game_state matches 1 run scoreboard players operation #juggernaut temp_replenishment_done *= #100 var

execute if score #juggernaut game_state matches 1 run execute store result score @s replenishment_percent run scoreboard players operation #juggernaut temp_replenishment_done /= #juggernaut replenishment_needed

function juggernaut:replenishment_stations/display_actionbar_station
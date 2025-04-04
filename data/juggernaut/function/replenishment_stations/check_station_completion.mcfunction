execute if score @s replenishment_done >= @s replenishment_needed run tag @s add completed_station
execute if score @s replenishment_done >= @s replenishment_needed run tag @s remove uncompleted_station
execute as @e[type=armor_stand,tag=completed_station,scores={replenishment_done=1..}] at @s run playsound block.end_portal_frame.fill master @a[tag=runner] ~ ~ ~ 3 0.4
execute as @e[type=armor_stand,tag=completed_station,scores={replenishment_done=1..}] at @s run playsound entity.ender_dragon.growl master @a[tag=juggernaut] ~ ~ ~ 3 0.4
execute if score @s replenishment_done >= @s replenishment_needed run scoreboard players set @s replenishment_done 0
function juggernaut:replenishment_stations/set_completed_stations
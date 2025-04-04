execute as @e[type=armor_stand,tag=replenishment_station,tag=uncompleted_station] at @s if score #juggernaut game_state matches 1 run particle minecraft:totem_of_undying ~ ~2.5 ~ 0.2 60 0.2 0 120 force @a
execute as @e[type=armor_stand,tag=replenishment_station,tag=uncompleted_station] at @s if score #juggernaut game_state matches 2 run particle minecraft:end_rod ~ ~2.5 ~ 0.2 60 0.2 0 120 force @a

execute as @e[type=armor_stand,tag=replenishment_station,tag=uncompleted_station] at @s if entity @a[tag=juggernaut,distance=..24] if entity @s[scores={replenish_timeout=1..}] run particle minecraft:witch ~ ~2.5 ~ 0.2 60 0.2 0 120 force @a[tag=!runner]
execute as @e[type=armor_stand,tag=replenishment_station,tag=uncompleted_station] at @s if entity @a[tag=juggernaut,distance=..12] if entity @s[scores={replenish_timeout=1..}] run particle minecraft:witch ~ ~2.5 ~ 0.2 60 0.2 0 120 force @a[tag=runner]

execute as @e[type=armor_stand,tag=replenishment_station,tag=uncompleted_station] at @s if score #juggernaut game_state matches 1 unless entity @a[tag=juggernaut,distance=..12] as @a[tag=runner,distance=..3] run scoreboard players add @n[type=armor_stand,tag=replenishment_station,tag=uncompleted_station] replenishment_done 1

execute as @e[type=armor_stand,tag=replenishment_station,tag=uncompleted_station] at @s if score #juggernaut game_state matches 1 unless entity @a[tag=juggernaut,distance=..12] as @a[tag=runner,distance=..3] run scoreboard players add @s replenish_mod_timer 1

execute as @e[type=armor_stand,tag=replenishment_station,tag=uncompleted_station] at @s if score #juggernaut game_state matches 1 unless entity @a[tag=juggernaut,distance=..12] as @a[tag=runner,distance=..3] run scoreboard players operation @s ticks_spent_buffing = @s replenish_mod_timer
execute as @e[type=armor_stand,tag=replenishment_station,tag=uncompleted_station] at @s if score #juggernaut game_state matches 1 unless entity @a[tag=juggernaut,distance=..12] as @a[tag=runner,distance=..3] run scoreboard players operation @s ticks_spent_debuffing = @s replenish_mod_timer

execute as @e[type=armor_stand,tag=replenishment_station,tag=uncompleted_station] at @s if score #juggernaut game_state matches 1 unless entity @a[tag=juggernaut,distance=..12] as @a[tag=runner,distance=..3] run scoreboard players operation @s ticks_till_increment = #100 var
execute as @e[type=armor_stand,tag=replenishment_station,tag=uncompleted_station] at @s if score #juggernaut game_state matches 1 unless entity @a[tag=juggernaut,distance=..12] as @a[tag=runner,distance=..3] run scoreboard players operation @s ticks_till_decrement = #100 var

execute as @e[type=armor_stand,tag=replenishment_station,tag=uncompleted_station] at @s if score #juggernaut game_state matches 1 unless entity @a[tag=juggernaut,distance=..12] as @a[tag=runner,distance=..3,scores={replenish_debuff=1..}] run scoreboard players operation @s ticks_till_decrement /= @s replenish_debuff
execute as @e[type=armor_stand,tag=replenishment_station,tag=uncompleted_station] at @s if score #juggernaut game_state matches 1 unless entity @a[tag=juggernaut,distance=..12] as @a[tag=runner,distance=..3,scores={replenish_debuff=1..}] run scoreboard players operation @s ticks_spent_debuffing %= @s ticks_till_decrement

execute as @e[type=armor_stand,tag=replenishment_station,tag=uncompleted_station] at @s if score #juggernaut game_state matches 1 unless entity @a[tag=juggernaut,distance=..12] as @a[tag=runner,distance=..3,scores={replenish_buff=1..}] run scoreboard players operation @s ticks_till_increment /= @s replenish_buff
execute as @e[type=armor_stand,tag=replenishment_station,tag=uncompleted_station] at @s if score #juggernaut game_state matches 1 unless entity @a[tag=juggernaut,distance=..12] as @a[tag=runner,distance=..3,scores={replenish_buff=1..}] run scoreboard players operation @s ticks_spent_buffing %= @s ticks_till_increment

execute as @e[type=armor_stand,tag=replenishment_station,tag=uncompleted_station] at @s if score #juggernaut game_state matches 1 unless entity @a[tag=juggernaut,distance=..12] as @a[tag=runner,distance=..3,scores={replenish_debuff=1..,ticks_spent_debuffing=0}] run scoreboard players remove @n[type=armor_stand,tag=replenishment_station,tag=uncompleted_station] replenishment_done 1

execute as @e[type=armor_stand,tag=replenishment_station,tag=uncompleted_station] at @s if score #juggernaut game_state matches 1 unless entity @a[tag=juggernaut,distance=..12] as @a[tag=runner,distance=..3,scores={replenish_buff=1..,ticks_spent_buffing=0}] run scoreboard players add @n[type=armor_stand,tag=replenishment_station,tag=uncompleted_station] replenishment_done 1

execute as @e[type=armor_stand,tag=replenishment_station,tag=uncompleted_station] at @s if score #juggernaut game_state matches 1 unless entity @a[tag=juggernaut,distance=..12] as @a[tag=runner,distance=..3] run scoreboard players add @n[type=armor_stand,tag=replenishment_station,tag=uncompleted_station] replenishment_done 1

execute as @e[type=armor_stand,tag=replenishment_station,tag=uncompleted_station] at @s if score @s replenishment_done >= @s replenishment_needed if score #juggernaut stations_needed matches 1 run function juggernaut:replenishment_stations/check_station_completion

execute as @e[type=armor_stand,tag=replenishment_station,tag=uncompleted_station] at @s if score #juggernaut game_state matches 1 unless entity @a[tag=juggernaut,distance=..12] as @a[tag=runner,distance=..3] at @s run particle end_rod ~ ~ ~ 0.5 1 0.5 0.00001 1 force

execute if score #juggernaut game_state matches 1 as @e[type=armor_stand,tag=replenishment_station,tag=uncompleted_station] at @s if entity @a[tag=runner,distance=..6] run scoreboard players set @s replenish_timeout 120
execute if score #juggernaut game_state matches 1 as @e[type=armor_stand,tag=replenishment_station,tag=uncompleted_station] at @s if entity @a[tag=runner,distance=6..] run scoreboard players remove @s replenish_timeout 1

scoreboard players set #stations_completed var 0
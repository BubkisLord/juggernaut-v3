execute if score #global debug_mode matches 0 as @a[tag=to_be_caged,scores={health=1..},tag=runner] at @s run spreadplayers ~ ~ 100 60 false @s
execute as @a[tag=to_be_caged,scores={health=1..},tag=runner] at @s run tag @s add caged
execute as @a[tag=to_be_caged,scores={health=1..},tag=runner] at @s run function juggernaut:cages/spawn_cage
execute as @a[tag=to_be_caged,scores={health=1..},tag=runner] at @s run tag @s remove to_be_caged
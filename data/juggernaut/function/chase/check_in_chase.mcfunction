execute as @a[tag=!in_chase] run tag @s add not_in_chase

# If neither player is sneaking, start the chase.
execute as @a[tag=juggernaut,scores={sneaking=..0}] at @s if entity @a[tag=runner,distance=..10,scores={sneaking=..0}] run tag @s add in_chase
execute as @a[tag=juggernaut,scores={sneaking=..0}] at @s as @a[tag=runner,distance=..10,scores={sneaking=..0}] run tag @s add in_chase

# If either player is sneaking, stop the chase.
execute if entity @a[tag=in_chase] as @a[tag=juggernaut,scores={sneaking=1..}] run tag @s remove in_chase
execute if entity @a[tag=in_chase] as @a[tag=runner] at @s unless entity @a[tag=juggernaut,distance=..10,scores={sneaking=..0}] run tag @s remove in_chase

execute if entity @a[tag=in_chase] as @a[tag=runner,scores={sneaking=1..}] run tag @s remove in_chase
execute if entity @a[tag=in_chase] as @a[tag=juggernaut] at @s unless entity @a[tag=runner,distance=..10,scores={sneaking=..0}] run tag @s remove in_chase

# Execute hook when player leaves chase.
execute as @a[tag=!in_chase,tag=!not_in_chase] at @s run function hooks:player_left_chase

# Execute hook when player enters chase.
execute as @a[tag=not_in_chase,tag=in_chase] at @s run function hooks:player_entered_chase
execute as @a[tag=not_in_chase,tag=in_chase] at @s run tag @s remove not_in_chase

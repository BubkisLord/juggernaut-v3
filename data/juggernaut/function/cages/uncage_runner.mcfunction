tag @s remove caged
attribute @s minecraft:gravity modifier remove juggernaut:cage_gravity
effect clear @s minecraft:resistance
effect clear @s minecraft:weakness
effect clear @s minecraft:glowing
playsound entity.ender_dragon.growl master @a[tag=juggernaut] ~ ~ ~ 1 1
playsound block.end_portal_frame.fill master @a[tag=runner,distance=..4] ~ ~ ~ 1 0.3
execute at @s run kill @e[type=text_display,tag=active_cage,distance=..7]
execute at @s run kill @n[type=armor_stand,tag=active_cage,distance=..4]
execute as @n[type=item,distance=..4,name="Release Caged Runner"] run kill @s
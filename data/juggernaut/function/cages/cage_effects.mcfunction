# Create the base of the cage
particle minecraft:dust{color:[1,0,0],scale:1} ~0.5 ~ ~ 0 0 0.25 0.1 2 force
particle minecraft:dust{color:[1,0,0],scale:1} ~-0.5 ~ ~ 0 0 0.25 0.1 2 force
particle minecraft:dust{color:[1,0,0],scale:1} ~ ~ ~0.5 0.25 0 0 0.1 2 force
particle minecraft:dust{color:[1,0,0],scale:1} ~ ~ ~-0.5 0.25 0 0 0.1 2 force

# Create the vertices of the cage
particle minecraft:dust{color:[1,0,0],scale:1} ~0.5 ~1.2 ~0.5 0 0.6 0 0.1 2 force
particle minecraft:dust{color:[1,0,0],scale:1} ~-0.5 ~1.2 ~0.5 0 0.6 0 0.1 2 force
particle minecraft:dust{color:[1,0,0],scale:1} ~0.5 ~1.2 ~-0.5 0 0.6 0 0.1 2 force
particle minecraft:dust{color:[1,0,0],scale:1} ~-0.5 ~1.2 ~-0.5 0 0.6 0 0.1 2 force

# Create the top of the cage.
particle minecraft:dust{color:[1,0,0],scale:1} ~0.5 ~2.4 ~ 0 0 0.25 0.1 2 force
particle minecraft:dust{color:[1,0,0],scale:1} ~-0.5 ~2.4 ~ 0 0 0.25 0.1 2 force
particle minecraft:dust{color:[1,0,0],scale:1} ~ ~2.4 ~0.5 0.25 0 0 0.1 2 force
particle minecraft:dust{color:[1,0,0],scale:1} ~ ~2.4 ~-0.5 0.25 0 0 0.1 2 force

execute as @p[distance=..2,tag=caged] run attribute @s minecraft:gravity modifier add juggernaut:cage_gravity -0.08 add_value
execute as @p[distance=..2,tag=caged] run effect give @s minecraft:resistance infinite 255 true
execute as @p[distance=..2,tag=caged] run effect give @s minecraft:weakness infinite 255 true
execute as @p[distance=..2,tag=caged] run effect give @s minecraft:glowing infinite 255 true
execute as @p[distance=..2,tag=caged] run scoreboard players remove @s cage_time_left 1
execute as @p[distance=..2,tag=caged] at @s run summon text_display ~ ~2.5 ~ {Tags:["active_cage","kill_on_end_game"],text:{"text": "Time Left: ","extra": [{"score": {"name": "@p[tag=caged]","objective": "cage_time_left_s"}}]},alignment:"center",NoGravity:true,see_through:true,view_range:10b,shadow:0b}
execute as @p[distance=..2,tag=caged] at @s run kill @e[type=text_display,tag=active_cage,distance=..7,limit=1,sort=random]
# execute as @p[distance=..2,tag=caged] at @s run summon text_display ~ ~2.5 ~ {Tags:["active_cage","kill_on_end_game"],text:{"text": "Time Left: ","extra": [{"score": {"name": "@p[tag=caged]","objective": "cage_time_left_s"}}]},alignment:"center",NoGravity:true,see_through:true,view_range:10b,shadow:0b}
execute as @p[distance=..2,tag=caged] run tp @s ~ ~0.2 ~

execute as @a[distance=..4,tag=runner,tag=!caged,tag=!to_be_caged] run item replace entity @s hotbar.8 with red_concrete[item_name='{"text": "Release Caged Runner","color": "red","bold": true}'] 1
execute as @a[distance=5..8,tag=runner,tag=!caged,tag=!to_be_caged,nbt={Inventory:[{Slot:8b,id:"minecraft:red_concrete"}]}] run item replace entity @s hotbar.8 with air 1

execute if entity @n[type=item,distance=..4,name="Release Caged Runner"] as @n[tag=caged,distance=..2] run function juggernaut:cages/uncage_runner
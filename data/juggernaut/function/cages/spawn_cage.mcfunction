playsound entity.ender_dragon.growl master @a[tag=runner,tag=!to_be_caged] ~ ~ ~ 1 1
summon armor_stand ~ ~ ~ {Tags:["active_cage"],Invisible:1b,NoGravity:1b,Marker:1b,Small:1b}
summon text_display ~ ~2 ~ {Tags:["active_cage"],text:'{"text":"Time Left:", "extra": [{"score": {"name": "@s","objective": "cage_time_left_s"},"bold": true}]}',alignment:"center",NoGravity:true,see_through:true}
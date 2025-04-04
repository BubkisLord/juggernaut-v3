# When a player reaches 0 health, run the respawn function to execute custom logic.
execute if entity @a[scores={health=..0}] as @a[scores={health=..0}] run function hooks:player_respawn

execute if entity @a[tag=to_be_caged] run function juggernaut:tick/cage_runners
execute if entity @a[tag=caged] run function juggernaut:tick/create_cage_effects
execute if entity @a[tag=caged,tag=runner] as @a[tag=caged,tag=runner] run function juggernaut:tick/check_cage_time
scoreboard players add @s deaths 1
scoreboard players operation @s lives_remaining = #juggernaut max_lives
scoreboard players operation @s lives_remaining -= @s deaths

# If the player is still alive, then cage the player.
execute if entity @s[tag=runner,scores={lives_remaining=1..}] run tag @s add to_be_caged

# If the player is dead, then remove the player from the game.
execute if entity @s[tag=runner,scores={lives_remaining=..0}] run tag @s remove runner
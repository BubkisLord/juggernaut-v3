# When a player reaches 0 health, run the respawn function to execute custom logic.
execute if entity @a[scores={health=..0}] as @a[scores={health=..0}] run function hooks:player_respawn
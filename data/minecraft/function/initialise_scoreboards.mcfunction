# Save HUD variables to scoreboard to access if needed. Note these are read-only.
scoreboard objectives add health health "Health"
scoreboard objectives add armor armor "Armor"
scoreboard objectives add hunger food "Food"
scoreboard objectives add level level "Level"
scoreboard objectives add experience_points xp "Level"

# Death / Kill Count
scoreboard objectives add death custom:deaths "Death Count"
scoreboard objectives add kills custom:player_kills "Player Kills"

# Player Statistics (For viewing stats, leaderboard, etc.)
scoreboard objectives add playtime custom:play_time "Playtime"
scoreboard objectives add distance_travelled custom:sprint_one_cm "Distance Sprinted"
scoreboard objectives add distance_travelled custom:walk_one_cm "Distance Walked"
scoreboard objectives add distance_crouched custom:crouch_one_cm "Distance Crouched"

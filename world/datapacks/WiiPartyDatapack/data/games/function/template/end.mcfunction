# Resets the global minigame score after the game ends
execute if score testing options matches 0 run scoreboard players reset global minigame

# Schedules the the draw segment in 12 ticks
execute if score testing options matches 0 run function board:draw/startstart

# Teleports the players to the draw area


# Resets scores
scoreboard players set ingame= 28scores 0

# Removes all tags


# Kills all entities

# Puts all players who have died back into adventure
gamemode adventure @a[tag=ingame]

# Hides the scoreboard
scoreboard objectives setdisplay sidebar

# Clears function scheduled if ended early
schedule clear games:28/begin



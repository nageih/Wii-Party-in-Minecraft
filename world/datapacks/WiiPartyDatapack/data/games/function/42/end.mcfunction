# Resets the global minigame score after the game ends
execute if score testing options matches 0 run scoreboard players reset global minigame

# Schedules the the draw segment in 12 ticks
execute if score testing options matches 0 run schedule function board:draw/startstart 1t


# Resets scores
scoreboard players set ingame= 42scores 0
scoreboard players reset direction= 42scores
scoreboard players reset phase= 42scores
scoreboard players reset speed= 42scores

# Removes all tags


# Kills all entities
kill @e[type=armor_stand,tag=42rope]

# Puts all players who have died back into adventure
gamemode adventure @a[tag=ingame]

# Hides the scoreboard
scoreboard objectives setdisplay sidebar

# Clears function scheduled if ended early
schedule clear games:42/begin


# Hides the scoreboard
scoreboard objectives setdisplay sidebar
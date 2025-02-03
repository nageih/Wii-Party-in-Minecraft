#   Author        =   @ T4Bl3rUs
#   Description   =   Ends the minigame and will run the next function of the game
#   Called By     =   games:27/end_game

# Resets the global minigame score after the game ends
execute if score playing= lobby matches 1 if score testing options matches 0 run scoreboard players reset global minigame

# Schedules the the draw segment in 12 ticks
execute if score playing= lobby matches 1 if score testing options matches 0 run schedule function board:draw/startstart 1t

# Return to lobby if playing just minigame
execute if score playing= lobby matches 2 run schedule function lobby:return_to_lobby 1t

# Resets scores


# Removes all tags


# Kills all entities
kill @e[type=minecraft:area_effect_cloud,tag=game27]

# Hides the scoreboard
scoreboard objectives setdisplay sidebar


# Clears effects

# Reset TV screens
fill 25984 15 26009 26016 37 26012 minecraft:white_terracotta replace minecraft:blue_terracotta
fill 25984 15 26009 26016 37 26012 minecraft:white_terracotta replace minecraft:red_terracotta
fill 25984 15 26009 26016 37 26012 minecraft:white_terracotta replace minecraft:lime_terracotta
fill 25984 15 26009 26016 37 26012 minecraft:white_terracotta replace minecraft:yellow_terracotta

fill 26002 41 26008 25998 43 26008 minecraft:air
fill 26002 41 26009 25998 43 26009 minecraft:black_concrete
# Player 1 - Left
fill 26015 34 26009 26011 36 26009 minecraft:air
fill 26015 34 26010 26011 36 26010 minecraft:black_concrete
fill 26015 28 26009 26011 30 26009 minecraft:air
fill 26015 28 26010 26011 30 26010 minecraft:black_concrete
fill 26015 22 26009 26011 24 26009 minecraft:air
fill 26015 22 26010 26011 24 26010 minecraft:black_concrete
fill 26015 16 26009 26011 18 26009 minecraft:air
fill 26015 16 26010 26011 18 26010 minecraft:black_concrete
# Player 1 - Right
fill 26007 34 26009 26003 36 26009 minecraft:air
fill 26007 34 26010 26003 36 26010 minecraft:black_concrete
fill 26007 28 26009 26003 30 26009 minecraft:air
fill 26007 28 26010 26003 30 26010 minecraft:black_concrete
fill 26007 22 26009 26003 24 26009 minecraft:air
fill 26007 22 26010 26003 24 26010 minecraft:black_concrete
fill 26007 16 26009 26003 18 26009 minecraft:air
fill 26007 16 26010 26003 18 26010 minecraft:black_concrete
# Player 2 - Left
fill 25997 34 26009 25993 36 26009 minecraft:air
fill 25997 34 26010 25993 36 26010 minecraft:black_concrete
fill 25997 28 26009 25993 30 26009 minecraft:air
fill 25997 28 26010 25993 30 26010 minecraft:black_concrete
fill 25997 22 26009 25993 24 26009 minecraft:air
fill 25997 22 26010 25993 24 26010 minecraft:black_concrete
fill 25997 16 26009 25993 18 26009 minecraft:air
fill 25997 16 26010 25993 18 26010 minecraft:black_concrete
# Player 2 - Right
fill 25989 34 26009 25985 36 26009 minecraft:air
fill 25989 34 26010 25985 36 26010 minecraft:black_concrete
fill 25989 28 26009 25985 30 26009 minecraft:air
fill 25989 28 26010 25985 30 26010 minecraft:black_concrete
fill 25989 22 26009 25985 24 26009 minecraft:air
fill 25989 22 26010 25985 24 26010 minecraft:black_concrete
fill 25989 16 26009 25985 18 26009 minecraft:air
fill 25989 16 26010 25985 18 26010 minecraft:black_concrete

scoreboard players set enabled= specOptions 0


schedule clear games:27/end
schedule clear games:27/start_title
schedule clear games:27/tvs/animation
schedule clear games:27/begin
schedule clear games:27/play_song

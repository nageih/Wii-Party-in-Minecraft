#   Author        =   @ T4Bl3rUs
#   Description   =   Resets the minigame if ran at any point
#   Called By     =   N/A


# Resets the global minigame score after the game ends
scoreboard players reset global minigame

# Resets scores


# Removes all tags


# Kills all entities


# Puts all players who have died back into adventure
gamemode adventure @a[tag=ingame]

# Hides the scoreboard
scoreboard objectives setdisplay sidebar

# Sets all players title time back to the default
title @a[tag=playing] times 10 20 10

# Clears the subtitle incase one is already being displayed
title @a[tag=playing] title " "
title @a[tag=playing] subtitle " "

# Clears all scheduled functions



# Stops players from seeing the bossbar


# Removes the tutorial lecterns
function games:27/remove_lecterns

function general:practice/end

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

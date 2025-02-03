#   Author        =   @ T4Bl3rUs
#   Description   =   Starts the minigame
#   Called By     =   games:27/main_start

# Fade screen to black
#function general:fade/main

# Schedule next part
schedule function games:27/start_title 3s

# # If the players voted on a practice round, then the practice= score is set to 1 to indicate that. This means the game will repeat again at the end
# scoreboard players set practice= 27scores 0
# execute if score practice= practice matches 1 run scoreboard players set practice= 27scores 1
# 
# # Resets both starting book scores
# scoreboard players reset play= practice
# scoreboard players reset practice= practice
# 
# # Removes the tutorial lecterns
# schedule function games:27/remove_lecterns 1s

# Shows that the game is now beginning
scoreboard players set ingame= 27scores 1

# Clears actionbar title
title @a[tag=playing] actionbar ""

# Prepare main TV animation
function games:27/apply_mods
execute store result score main= 27scores run loot spawn ~ -70 ~ loot games:27tvs
scoreboard players set animation= 27scores 13
schedule function games:27/tvs/animation 22t

# Replace TV screens
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

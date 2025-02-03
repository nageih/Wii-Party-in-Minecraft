# Chooses a random cloud at the current level and gives them the 1badCloud tag, this makes this the cloud you want to avoid
execute as @e[type=minecraft:area_effect_cloud,tag=cloud] if score @s 1level = level= 1scores run tag @s add temp
tag @e[type=minecraft:area_effect_cloud,tag=cloud,tag=temp,sort=random,limit=1] add 1badCloud
tag @e[type=minecraft:area_effect_cloud,tag=cloud,tag=temp] remove temp

# Runs the function to open the platform depending on the level they are on
execute if score level= 1scores matches 1 run function games:1/open1
execute if score level= 1scores matches 2 run function games:1/open2
execute if score level= 1scores matches 3 run function games:1/open3

# Sets the falling= score to 1, this score is used for the tick function to know when players are falling.
scoreboard players set falling= 1scores 1

# Sets the countdown= score to 0 to show that the countdown has ended
scoreboard players set countdown= 1scores 0

# Clears the title on the players actionbar as it would stay around for a few seconds when the player starts falling
title @a[tag=ingame] actionbar ""

# Schedules the end round function in 4 seconds, roughly the amount of time the it would take for the players to reach the groud
schedule function games:1/endround 4s
#   Author        =   @ JevinLevin
#   Description   =   Teleports the invisible zombie to its matching zombie
#   Called By     =   games:2/agro


# Sets the current= score to the 2agro id of the zombie
scoreboard players operation current= 2agro = @s 2agro

# Removes the current= score from all new zombies. This means that if the new zombie has the same id as the current zombie, their ID would suddenly become 0
scoreboard players operation @e[type=minecraft:zombie,tag=newzombie] 2agro -= current= 2agro

# Teleports the new zombie with the matching id to the current zombie
tp @e[type=minecraft:zombie,tag=newzombie,scores={2agro=0}] @s

# Reverts the new zombies id back to normal so it can be compared again in the next tick
scoreboard players operation @e[type=minecraft:zombie,tag=newzombie] 2agro += current= 2agro

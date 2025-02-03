#   Author        =   @ JevinLevin
#   Description   =   Runs every tick as a player who is knocked. Stops them from moving
#   Called By     =   games:26/player


# Removes a tick from the knocked cooldown
scoreboard players remove @s 26knocked 1

# Stores the players id in a temp score
scoreboard players operation temp= id = @s id

# Gives temp tag
tag @s add currentPlayer
# Teleports the player to their armor stand by finding the armor stand with the same id as them
execute if score slowtick= 26scores matches 0 as @e[type=minecraft:armor_stand,tag=knocked] if score @s id = temp= id at @s run tp @a[distance=.025..,tag=currentPlayer] ~ ~ ~
# Removes temp tag
tag @s remove currentPlayer

# Ran once the players knocked cooldown is up
execute if entity @s[scores={26knocked=0}] run function games:26/knocked_end
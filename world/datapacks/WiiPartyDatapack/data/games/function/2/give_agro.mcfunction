#   Author        =   @ JevinLevin
#   Description   =   Gives all the zombies a unique id score
#   Called By     =   games:2/startanimation


# Gives id tag to show that they have been given an id
tag @s add id

# Stores the number of players who have received an id in the current= score so that the player can get an incremented score
execute store result score current= 2agro if entity @e[type=minecraft:zombie,tag=zombietag,tag=id]

# Stores the value of current= (which should be 1 higher than the last id) in the players score
scoreboard players operation @s 2agro = current= 2agro

# Sets the zombies id to the current closest players id 
scoreboard players operation @s 2id = @p[tag=ingame] 2id
# Gives id tag to show that they have been given an id
tag @s add id

# Stores the number of players who have received an id in the current= score so that the player can get an incremented score
execute store result score current= 22order if entity @a[tag=id]

# Stores the value of current= (which should be 1 higher than the last id) in the players score
scoreboard players operation @s 22order = current= 22order
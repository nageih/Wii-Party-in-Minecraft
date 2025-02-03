#   Author        =   @ JevinLevin
#   Description   =   Ran as a player who right clicks
#   Called By     =   board:dice_roll/main


# Stores the players rotations into scores
    # Store X Rotation
execute store result score @s playerRotX run data get entity @s Rotation[0]
    # If the X Rotation is negative, then it adds 360 to it to make it positive
execute if score @s playerRotX matches ..0 run scoreboard players add @s playerRotX 360
    # Store Y Rotation
execute store result score @s playerRotY run data get entity @s Rotation[1]

# Does a shit ton of block checks to check if the player is in a suitable position to throw a dice
execute if block ~ ~2 ~ #board:dice_proof if block ~ ~3 ~ #board:dice_proof if block ~ ~3.5 ~ #board:dice_proof anchored eyes if block ^ ^ ^.5 #board:dice_proof if block ^ ^ ^1 #board:dice_proof run function board:dice_roll/summon
# If they arent in a suitable position then it runs the invalid function
execute if entity @s[tag=!thrown] run function board:dice_roll/invalid

# Removes the thrown tag
tag @s remove thrown
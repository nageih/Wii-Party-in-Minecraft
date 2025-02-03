#   Author        =   @ JevinLevin
#   Description   =   Calculates the new firstMotion score using the entities current motion. Also converts the number to positive if its negative
#   Called By     =   board:dice_roll/bounce + board:dice_roll/new_dice


# Stores the entities motion in the firstMotion scores
    # X Motion
execute store result score @s firstMotionX run data get entity @s Motion[0] 1000000
    # Y Motion
execute store result score @s firstMotionY run data get entity @s Motion[1] 1000000
    # Z Motion
execute store result score @s firstMotionZ run data get entity @s Motion[2] 1000000

# If the firstMotionY is negative, that means that the dice will go down. To stop that this line inverts the number if its negative so that the downwards motion becomes up
execute if score @s firstMotionY matches ..-1 run scoreboard players operation @s firstMotionY *= -1 Numbers
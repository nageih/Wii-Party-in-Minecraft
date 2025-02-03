#   Author        =   @ JevinLevin
#   Description   =   Rotates the armor stands dice model after it hits a wall so that it faces the right direction that its now heading in
#   Called By     =   board:dice_roll/wallbounce


# Because minecraft math is fucking stupid, ill try to explain what this does
# First it stores the Pose of the armor stand head in the temp= and then entities diceRotation score
execute store result score temp= diceRotation run data get entity @s Pose.Head[1]
execute store result score @s diceRotation run data get entity @s Pose.Head[1]
# Next it mods that score by 90 to calculate the difference
scoreboard players operation @s diceRotation %= 90 Numbers
# Now it needs to add the mod result to find the new angle
# It sets the 90= score to 90
scoreboard players set 90= diceRotation 90
# Then it takes away the mod result from 90
scoreboard players operation 90= diceRotation -= @s diceRotation
# Then it adds this result onto the original armor stand pose twice, which finally calculates the angle that will make it face the other way
scoreboard players operation temp= diceRotation += 90= diceRotation
scoreboard players operation temp= diceRotation += 90= diceRotation

# The previous system only works if the player throws the dice to the right, so this next part fixes that
# To do that, it checks if the player throws to the left my checking the Pose, and which direction the wall is in
# It will then rotate the armor stand pose by 180 so that it rolls the right direction
execute if score @s[tag=1] diceRotation matches 271..359 run scoreboard players add temp= diceRotation 180
execute if score @s[tag=2] diceRotation matches 91..179 run scoreboard players add temp= diceRotation 180
execute if score @s[tag=3] diceRotation matches 181..269 run scoreboard players add temp= diceRotation 180
execute if score @s[tag=4] diceRotation matches 1..89 run scoreboard players add temp= diceRotation 180

# If the dice lands in the corner of two blocks, it needs to change direction differently
    # First it stores the armor stands pose in the temp= score, which resets the previous math
execute if entity @s[tag=!1,tag=!2,tag=!3,tag=!4] store result score temp= diceRotation run data get entity @s Pose.Head[1]
    # Then it adds 180 onto it, which will cause it to change directions
execute if entity @s[tag=!1,tag=!2,tag=!3,tag=!4] run scoreboard players add temp= diceRotation 180

# Finally it stores the new calculated score into the armor stands head pose
execute store result entity @s Pose.Head[1] float 1 run scoreboard players get temp= diceRotation
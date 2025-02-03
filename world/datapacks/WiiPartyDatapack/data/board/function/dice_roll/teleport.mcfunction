#   Author        =   @ JevinLevin
#   Description   =   Teleports the armor stand with a dice model to the same position as the moving armor stands
#   Called By     =   board:dice_roll/main_dice


# Removes the current entities diceId score from all the throw armor stands diceId. This should make the throw armor stand with the same id as the current armor stand's 0
scoreboard players operation @e[type=minecraft:armor_stand,tag=throw] diceId -= @s diceId

# If the armor stand is still bouncing, then teleport the dice model slightly lower to it
execute if entity @s[tag=!stopbouncing] at @e[type=minecraft:armor_stand,tag=throw,scores={diceId=0}] run tp @s ~ ~-.25 ~

# If the armor stand has stopped bouncing, then teleport the dice model to the same position
execute if entity @s[tag=stopbouncing] at @e[type=minecraft:armor_stand,tag=throw,scores={diceId=0}] align y run tp @s ~ ~ ~

# If the armor stand somehow ends up in a block, then tp it a block up
execute at @s[tag=stopbouncing] unless block ~ ~ ~ #board:dice_proof align y run tp @s ~ ~1 ~

# Sets all the throw armor stands' ids back to what they were before
scoreboard players operation @e[type=minecraft:armor_stand,tag=throw] diceId += @s diceId
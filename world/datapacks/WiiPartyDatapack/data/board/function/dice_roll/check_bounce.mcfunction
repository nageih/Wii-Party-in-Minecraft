#   Author        =   @ JevinLevin
#   Description   =   Checks if the dice has stopped rolling, is on the ground and is facing the correct direction
#   Called By     =   board:dice_roll/main


# Stores the diceSpinX score into the temp= and mod= scores
scoreboard players operation temp= diceSpinX = @s[tag=throwdisplay] diceSpinX
scoreboard players operation mod= spinType = @s[tag=throwdisplay] diceSpinX

# Mods the mod= score by 90 to find the difference
execute if entity @s[tag=throwdisplay] run scoreboard players operation mod= spinType %= 90 Numbers

# Gives the dice the temporary currentThrow tag
tag @s[tag=throw] add currentThrow

# Runs the stop_bouncing function as both the throw and throwdisplay armor stands
execute if entity @s[tag=!stopbouncing,tag=!bounce] if score mod= spinType matches 0 as @e[type=minecraft:armor_stand,tag=throwdisplay] if score @s diceId = @e[type=minecraft:armor_stand,tag=currentThrow,limit=1] diceId run function board:dice_roll/stop_bouncing
execute if entity @s[tag=!stopbouncing,tag=!bounce] if score mod= spinType matches 0 run function board:dice_roll/stop_bouncing

# Removes the temporary currentThrow tag from the dice
tag @s remove currentThrow
#   Author        =   @ JevinLevin
#   Description   =   Changes the armor stands pose so that it looks like its spinning
#   Called By     =   board:dice_roll/main_dice


# Gives the armor stand a temporary currentSpin tag
tag @s add currentSpin

# Increases the armor stands diceSpinX score by 10
execute as @e[type=minecraft:armor_stand,tag=throw] if score @s diceId = @e[type=minecraft:armor_stand,tag=currentSpin,limit=1] diceId as @e[type=minecraft:armor_stand,tag=currentSpin] run scoreboard players add @s diceSpinX 10

# Stores the diceSpinX score into the armor stands head pose
execute store result entity @s Pose.Head[0] float 1 run scoreboard players get @s diceSpinX

# Stops the diceSpinX score getting past 360 so it sets it back to 0
execute if score @s diceSpinX matches 360.. run scoreboard players remove @s diceSpinX 360

# Air toggle (not sure if it does anything, too scared to remove)
execute store result entity @s Air double 1 run time query gametime

# Removes the currentSpin tag
tag @s remove currentSpin
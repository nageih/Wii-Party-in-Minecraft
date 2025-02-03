#   Author        =   @ JevinLevin
#   Description   =   Tick function ran as all dice armor stands
#   Called By     =   board:dice_roll/main


# Runs teleport function as the dice model, which teleports it to the moving armor stand
execute if entity @s[tag=throwdisplay] run function board:dice_roll/teleport

# If the dice is still bouncing, make sure it cant set on fire
execute if entity @s[tag=!stopbouncing] run data merge entity @s {Fire:0s}
# Once the dice stops bouncing, it constantly set it on fire so that model doesnt get dark when underground
execute if entity @s[tag=stopbouncing] run data merge entity @s {Fire:20s}

# Runs the spin function, which rotates the dice model around to make it look like its spinning
execute if entity @s[tag=throwdisplay,tag=!stopbouncing] run function board:dice_roll/spin

# Air toggle (not sure why its here but too scared to change)
execute store result entity @s[tag=throwdisplay] Air double 1 run time query gametime
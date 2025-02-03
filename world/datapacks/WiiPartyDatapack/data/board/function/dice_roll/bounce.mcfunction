#   Author        =   @ JevinLevin
#   Description   =   Lifts the armor stand back off the ground once it lands by increasing its Y motion, with the scale of the motion depending on how many times it has already bounced 
#   Called By     =   board:dice_roll/main_throw


# Continues the dice in the same direction once it bounces
    # Stores the firstMotionX score into the entities X motion
execute store result entity @s Motion[0] double 0.0000008 run scoreboard players get @s firstMotionX
    # Stores the firstMotionZ score into the entities Z motion
execute store result entity @s Motion[2] double 0.0000008 run scoreboard players get @s firstMotionZ

# Yeets the dice back up, with the scale depending on how many times its already bounced
    # First Bounce
execute unless score @s totalBounce matches 1.. store result entity @s Motion[1] double 0.00000125 run scoreboard players get @s firstMotionY
    # Second Bounce
execute if score @s totalBounce matches 1 store result entity @s Motion[1] double 0.000001 run scoreboard players get @s firstMotionY
    # Third Bounce
execute if score @s totalBounce matches 2 store result entity @s Motion[1] double 0.00000085 run scoreboard players get @s firstMotionY

# Runs the calculate function to generate new firstMotion scores for the next bounce
function board:dice_roll/calculate

# Increases the entities totalBounce number by 1 every bounce, used to check how many times it bounces
scoreboard players add @s totalBounce 1

# Once the dice bounces 4 times it removes the bounce tag which stops it from moving
execute if score @s totalBounce matches 4 run tag @s remove bounce

# Gives the entities the temporary tempBounce tag so that it cant bounce multiple times in a tick
tag @s add tempBounce

# Plays hat sound
execute if score @s totalBounce matches 1..3 run playsound minecraft:block.note_block.hat master @a ~ ~ ~ 1.5 1
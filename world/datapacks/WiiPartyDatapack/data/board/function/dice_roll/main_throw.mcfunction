#   Author        =   @ JevinLevin
#   Description   =   Ran as all throw armor stands
#   Called By     =   board:dice_roll/main


# Checks if the armor stand hits the ground in many ways. If any of the checks are true it runs the bounce function
    # Firstly it checks if the armor stand has the OnGround tag
execute if entity @s[tag=bounce,tag=!tempBounce,nbt={OnGround:1b}] run function board:dice_roll/bounce
    # If not, it checks if the armor stand is right above water
execute if entity @s[tag=bounce,tag=!tempBounce] if block ~ ~-.2 ~ minecraft:water run function board:dice_roll/bounce
    # If not it checks if the armor stand is inside a slab
execute if entity @s[tag=bounce,tag=!tempBounce] if block ~ ~.1 ~ #minecraft:slabs run function board:dice_roll/bounce
    # If not, it checks one last time if its inside a stair
execute if entity @s[tag=bounce,tag=!tempBounce] if block ~ ~ ~ #minecraft:stairs run function board:dice_roll/bounce

# Removes the tempBounce tag which is given to the armor stand when the bounce function is ran to prevent it running multiple times
tag @s[tag=tempBounce] remove tempBounce

# Decreases the armor stands diceWallBounceCd by 1 every tick. This cooldown prevents the dice from wall bouncing too often, and prevents it getting into a situation where its stuck
scoreboard players remove @s[scores={diceWallBounceCd=1..}] diceWallBounceCd 1

# Checks if the dice is in a position where it needs to wall bounce
    # If the cooldown is 0, the dice isnt inside a stair or slab and the block adjacent is a block the dice cant go through then it runs the wall_bounce function
execute unless score @s[tag=!wallbounce] diceWallBounceCd matches 1.. unless block ~ ~ ~ #minecraft:stairs unless block ~ ~ ~ #minecraft:slabs unless block ~0.25 ~.5 ~ #board:dice_proof run function board:dice_roll/wallbounce
execute unless score @s[tag=!wallbounce] diceWallBounceCd matches 1.. unless block ~ ~ ~ #minecraft:stairs unless block ~ ~ ~ #minecraft:slabs unless block ~-0.25 ~.5 ~ #board:dice_proof run function board:dice_roll/wallbounce
execute unless score @s[tag=!wallbounce] diceWallBounceCd matches 1.. unless block ~ ~ ~ #minecraft:stairs unless block ~ ~ ~ #minecraft:slabs unless block ~ ~.5 ~0.25 #board:dice_proof run function board:dice_roll/wallbounce
execute unless score @s[tag=!wallbounce] diceWallBounceCd matches 1.. unless block ~ ~ ~ #minecraft:stairs unless block ~ ~ ~ #minecraft:slabs unless block ~ ~.5 ~-0.25 #board:dice_proof run function board:dice_roll/wallbounce
execute unless score @s[tag=!wallbounce] diceWallBounceCd matches 1.. unless block ~ ~ ~ #minecraft:stairs unless block ~ ~ ~ #minecraft:slabs unless block ~0.25 ~.5 ~0.25 #board:dice_proof run function board:dice_roll/wallbounce
execute unless score @s[tag=!wallbounce] diceWallBounceCd matches 1.. unless block ~ ~ ~ #minecraft:stairs unless block ~ ~ ~ #minecraft:slabs unless block ~0.25 ~.5 ~-0.25 #board:dice_proof run function board:dice_roll/wallbounce
execute unless score @s[tag=!wallbounce] diceWallBounceCd matches 1.. unless block ~ ~ ~ #minecraft:stairs unless block ~ ~ ~ #minecraft:slabs unless block ~-0.25 ~.5 ~0.25 #board:dice_proof run function board:dice_roll/wallbounce
execute unless score @s[tag=!wallbounce] diceWallBounceCd matches 1.. unless block ~ ~ ~ #minecraft:stairs unless block ~ ~ ~ #minecraft:slabs unless block ~-0.25 ~.5 ~-0.25 #board:dice_proof run function board:dice_roll/wallbounce

# Removes the wallbounce tag which is given to the armor stand when the wall_bounce function is ran to prevent it running multiple times
tag @s[tag=wallbounce] remove wallbounce
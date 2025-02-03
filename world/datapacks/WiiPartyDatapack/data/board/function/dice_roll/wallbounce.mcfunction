#   Author        =   @ JevinLevin
#   Description   =   Runs when an armor stand hits a wall, makes it bounce off it
#   Called By     =   board:dice_roll/main_throw


# Checks if the armor stand hits the corner of a block and then gives the armor stand a tag
execute unless block ~0.25 ~.5 ~0.25 #board:dice_proof run tag @s[tag=!5,tag=!6,tag=!7,tag=!8] add 5
execute unless block ~0.25 ~.5 ~-0.25 #board:dice_proof run tag @s[tag=!5,tag=!6,tag=!7,tag=!8] add 6
execute unless block ~-0.25 ~.5 ~0.25 #board:dice_proof run tag @s[tag=!5,tag=!6,tag=!7,tag=!8] add 7
execute unless block ~-0.25 ~.5 ~-0.25 #board:dice_proof run tag @s[tag=!5,tag=!6,tag=!7,tag=!8] add 8

# Checks if the armor stand hits the side of a block then gives it a tag
execute unless block ~ ~.5 ~0.25 #board:dice_proof run tag @s[tag=!1,tag=!2,tag=!3,tag=!4] add 1
execute unless block ~ ~.5 ~-0.25 #board:dice_proof run tag @s[tag=!1,tag=!2,tag=!3,tag=!4] add 2
execute unless block ~0.25 ~.5 ~ #board:dice_proof run tag @s[tag=!1,tag=!2,tag=!3,tag=!4] add 3
execute unless block ~-0.25 ~.5 ~ #board:dice_proof run tag @s[tag=!1,tag=!2,tag=!3,tag=!4] add 4

# Inverts the score used to determine the armor stands motion depending on their tag. By inverting their motion it makes them go in the opposite direction, which kinda looks like it bounces
scoreboard players operation @s[tag=1] firstMotionZ *= -1 Numbers
scoreboard players operation @s[tag=2] firstMotionZ *= -1 Numbers
scoreboard players operation @s[tag=3] firstMotionX *= -1 Numbers
scoreboard players operation @s[tag=4] firstMotionX *= -1 Numbers

# Then stores this score into the armor stands motion with a lower scale
execute store result entity @s[tag=1] Motion[2] double 0.0000006 run scoreboard players get @s firstMotionZ
execute store result entity @s[tag=2] Motion[2] double 0.0000006 run scoreboard players get @s firstMotionZ
execute store result entity @s[tag=3] Motion[0] double 0.0000006 run scoreboard players get @s firstMotionX
execute store result entity @s[tag=4] Motion[0] double 0.0000006 run scoreboard players get @s firstMotionX

# Finally it takes the new motion scaled, and stores it into the firstMotion scores again
execute store result score @s[tag=1] firstMotionZ run data get entity @s Motion[2] 1000000
execute store result score @s[tag=2] firstMotionZ run data get entity @s Motion[2] 1000000
execute store result score @s[tag=3] firstMotionX run data get entity @s Motion[0] 1000000
execute store result score @s[tag=4] firstMotionX run data get entity @s Motion[0] 1000000

# Gives the armor stand the wallbounce tag so that it cant run this function multiple times in a tick
tag @s add wallbounce

# Sets the armor stands diceWallBounceCd to 5, so that it cant bounce again from the next 5 ticks
scoreboard players set @s diceWallBounceCd 5

# Sets the armor stands dicId to the now= score
scoreboard players operation now= diceId = @s diceId

# Gives the throwdisplay armor stands the same tag as the current armor stand
execute if entity @s[tag=1] as @e[type=minecraft:armor_stand,tag=throwdisplay] if score @s diceId = now= diceId run tag @s add 1
execute if entity @s[tag=2] as @e[type=minecraft:armor_stand,tag=throwdisplay] if score @s diceId = now= diceId run tag @s add 2
execute if entity @s[tag=3] as @e[type=minecraft:armor_stand,tag=throwdisplay] if score @s diceId = now= diceId run tag @s add 3
execute if entity @s[tag=4] as @e[type=minecraft:armor_stand,tag=throwdisplay] if score @s diceId = now= diceId run tag @s add 4
execute if entity @s[tag=5] as @e[type=minecraft:armor_stand,tag=throwdisplay] if score @s diceId = now= diceId run tag @s add 5
execute if entity @s[tag=6] as @e[type=minecraft:armor_stand,tag=throwdisplay] if score @s diceId = now= diceId run tag @s add 6
execute if entity @s[tag=7] as @e[type=minecraft:armor_stand,tag=throwdisplay] if score @s diceId = now= diceId run tag @s add 7
execute if entity @s[tag=8] as @e[type=minecraft:armor_stand,tag=throwdisplay] if score @s diceId = now= diceId run tag @s add 8

# Runs the bounce_turn function as the throwdisplay armor stand which rotates the model in the correct direction
execute as @e[type=minecraft:armor_stand,tag=throwdisplay] if score @s diceId = now= diceId at @s run function board:dice_roll/bounce_turn

# Removes all the number tags used to check which face wall the armor stand hit
tag @s remove 1
tag @s remove 2
tag @s remove 3
tag @s remove 4
tag @s remove 5
tag @s remove 6
tag @s remove 7
tag @s remove 8

# Plays hat sound
playsound minecraft:block.note_block.hat master @a ~ ~ ~ 1.5 1
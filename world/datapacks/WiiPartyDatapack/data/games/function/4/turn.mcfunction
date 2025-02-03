#   Author        =   @ JevinLevin
#   Description   =   Ran when the player changes direction
#   Called By     =   games:4/check_turn


scoreboard players remove @s[tag=4left] 4direction 1
scoreboard players add @s[tag=4right] 4direction 1

scoreboard players set @s[scores={4direction=0}] 4direction 4
scoreboard players set @s[scores={4direction=5}] 4direction 1

playsound minecraft:block.note_block.pling master @s[tag=!4super] ~ ~ ~ 1 1
playsound minecraft:block.note_block.pling master @s[tag=4super] ~ ~ ~ 1 1.4

# Removes all the tags used to check if the player is gonna turned
tag @s remove 4left
tag @s remove 4right

scoreboard players set @s 4turnCooldown 6
scoreboard players set @s 4inputCooldown 2

function games:4/set_cart_direction

# Clears the actionbar which would have previous text saying which direciton they are turning
title @s actionbar ""

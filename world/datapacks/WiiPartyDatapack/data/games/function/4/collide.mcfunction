#   Author        =   @ JevinLevin
#   Description   =   Ran when 2 players hit each other
#   Called By     =   games:4/player


tag @s remove 4left
tag @s remove 4right

# Clears the actionbar which would have previous text saying which direciton they are turning
title @s actionbar ""
# Sets the players 4turnCooldown to 4, so that the player cant turn again within 4 ticks
scoreboard players set @s 4turnCooldown 4
scoreboard players set @s 4inputCooldown 2
scoreboard players set @s 4tempImmune 3

playsound minecraft:block.anvil.land master @a ~ ~ ~ 0.4 1.5

scoreboard players add @s 4direction 2
execute if score @s 4direction matches 5.. run scoreboard players remove @s 4direction 4
execute if score @s 4direction matches ..0 run scoreboard players add @s 4direction 4

function games:4/set_cart_direction

execute as @s[team=blue] as @e[type=item_display,tag=4cart,tag=blue] at @s run function games:4/move_cart
execute as @s[team=red] as @e[type=item_display,tag=4cart,tag=red] at @s run function games:4/move_cart
execute as @s[team=green] as @e[type=item_display,tag=4cart,tag=green] at @s run function games:4/move_cart
execute as @s[team=orange] as @e[type=item_display,tag=4cart,tag=orange] at @s run function games:4/move_cart
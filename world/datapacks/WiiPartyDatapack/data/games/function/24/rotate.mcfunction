#   Author        =   @ T4Bl3rUs
#   Description   =   Rotates the player
#   Called By     =   games:24/repeating


tp @s @e[type=marker,tag=24pad,limit=1,sort=nearest]

tag @e[type=item_display,tag=24pad,limit=1,sort=nearest] add 24spin
data modify entity @e[type=item_display,tag=24pad,limit=1,sort=nearest] item.components."minecraft:custom_model_data" set value 24002

# Store a random number (1 - 3)
execute store result score temp= 24offset run random value 1..3
# Add it to the player twice
execute if entity @s[team=blue] run scoreboard players operation @a[team=blue,tag=ingame] 24offset += temp= 24offset
execute if entity @s[team=blue] run scoreboard players operation @a[team=blue,tag=ingame] 24offset += temp= 24offset
execute if entity @s[team=red] run scoreboard players operation @a[team=red,tag=ingame] 24offset += temp= 24offset
execute if entity @s[team=red] run scoreboard players operation @a[team=red,tag=ingame] 24offset += temp= 24offset
execute if entity @s[team=green] run scoreboard players operation @a[team=green,tag=ingame] 24offset += temp= 24offset
execute if entity @s[team=green] run scoreboard players operation @a[team=green,tag=ingame] 24offset += temp= 24offset
execute if entity @s[team=orange] run scoreboard players operation @a[team=orange,tag=ingame] 24offset += temp= 24offset
execute if entity @s[team=orange] run scoreboard players operation @a[team=orange,tag=ingame] 24offset += temp= 24offset


scoreboard players set @s 24rotate 0
tag @s remove 24move


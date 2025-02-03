summon item_display ~ ~.7 ~ {interpolation_duration:0, teleport_duration:1,Tags:["23cart","23temp"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.25f,1.25f,1.25f]},item:{id:"minecraft:carrot_on_a_stick",count:1,components:{"minecraft:custom_model_data":23001}}}
summon minecart ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Tags:["23cart","23temp"]}

team join noCollision @e[type=minecart,tag=23temp]

# Set color based off team
execute if entity @s[team=blue] run data modify entity @e[type=item_display,tag=23temp,limit=1] item.components."minecraft:custom_model_data" set value 23001
execute if entity @s[team=red] run data modify entity @e[type=item_display,tag=23temp,limit=1] item.components."minecraft:custom_model_data" set value 23002
execute if entity @s[team=green] run data modify entity @e[type=item_display,tag=23temp,limit=1] item.components."minecraft:custom_model_data" set value 23003
execute if entity @s[team=orange] run data modify entity @e[type=item_display,tag=23temp,limit=1] item.components."minecraft:custom_model_data" set value 23004
execute if entity @s[team=blue] run tag @e[tag=23temp] add blue
execute if entity @s[team=red] run tag @e[tag=23temp] add red
execute if entity @s[team=green] run tag @e[tag=23temp] add green
execute if entity @s[team=orange] run tag @e[tag=23temp] add orange


execute unless entity @e[type=minecart,tag=23cart,tag=23first] run tag @e[type=minecart,tag=23temp] add 23first

execute store result score carts= 23scores if entity @e[type=minecart,tag=23cart]
execute if score carts= 23scores = players= 23scores run tag @e[type=minecart,tag=23temp] add 23last


tag @e[tag=23temp] remove 23temp

# Prevents the player from having multiple carts spawned
tag @s add 23hascart
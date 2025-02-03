execute unless score colorNo= 5scores matches 1.. run data modify entity @s ArmorItems[3].components."minecraft:dyed_color".rgb set value 7918335
execute if score colorNo= 5scores matches 1 run data modify entity @s ArmorItems[3].components."minecraft:dyed_color".rgb set value 6225790
execute if score colorNo= 5scores matches 2 run data modify entity @s ArmorItems[3].components."minecraft:dyed_color".rgb set value 15427327
execute if score colorNo= 5scores matches 3 run data modify entity @s ArmorItems[3].components."minecraft:dyed_color".rgb set value 16761654

scoreboard players add colorNo= 5scores 1

execute store result score @s 5color run data get entity @s ArmorItems[3].components."minecraft:dyed_color".rgb
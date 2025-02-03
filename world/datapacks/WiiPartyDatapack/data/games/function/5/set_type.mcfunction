
execute unless score typeNo= 5scores matches 1.. run data modify entity @s ArmorItems[3].components."minecraft:custom_model_data" set value 500
execute if score typeNo= 5scores matches 1 run data modify entity @s ArmorItems[3].components."minecraft:custom_model_data" set value 510
execute if score typeNo= 5scores matches 2 run data modify entity @s ArmorItems[3].components."minecraft:custom_model_data" set value 520
execute if score typeNo= 5scores matches 3 run data modify entity @s ArmorItems[3].components."minecraft:custom_model_data" set value 530

scoreboard players add typeNo= 5scores 1

execute store result score @s 5cMD run data get entity @s ArmorItems[3].components."minecraft:custom_model_data"
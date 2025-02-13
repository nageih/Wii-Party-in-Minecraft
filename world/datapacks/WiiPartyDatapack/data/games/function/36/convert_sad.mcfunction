execute store result score cmd= 36scores run data get entity @s item.components."minecraft:custom_model_data"
scoreboard players add cmd= 36scores 4
execute store result entity @s item.components."minecraft:custom_model_data" double 1 run scoreboard players get cmd= 36scores

execute unless score patternNo= 5scores matches 1.. run scoreboard players set @s 5pattern 2
execute if score patternNo= 5scores matches 1 run scoreboard players set @s 5pattern 3
execute if score patternNo= 5scores matches 2 run scoreboard players set @s 5pattern 1
execute if score patternNo= 5scores matches 3 run scoreboard players set @s 5pattern 2

scoreboard players add patternNo= 5scores 1

scoreboard players operation @s 5cMD += @s 5pattern

execute store result entity @s ArmorItems[3].components."minecraft:custom_model_data" double 1 run scoreboard players get @s 5cMD
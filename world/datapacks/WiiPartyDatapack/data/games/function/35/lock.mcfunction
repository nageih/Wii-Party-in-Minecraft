execute store result score temp= 35num run data get entity @s SelectedItem.components."minecraft:custom_data".35num

# Make sure they arent selecting same choice
execute if score @s 35num = temp= 35num run return fail

scoreboard players operation @s 35num = temp= 35num
tag @s add 35lock

execute if score @s 35num matches 1.. run tellraw @s {"translate":"game.StrategySteps.Lock","color":"gray","with":[{"score":{"name": "@s","objective": "35num"},"bold":true}]}
execute if score @s 35num matches 1.. run tellraw @s {"translate":"game.StrategySteps.Lock","color":"gray","with":[{"score":{"name": "@s","objective": "35num"},"bold":true}]}
execute at @s run playsound block.note_block.pling master @s ~ ~ ~
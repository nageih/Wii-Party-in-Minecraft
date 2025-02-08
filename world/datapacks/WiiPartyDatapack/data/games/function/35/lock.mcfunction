execute store result score @s 35num run data get entity @s SelectedItem.components."minecraft:custom_data".35num
tag @s add 35lock

tellraw @s {"translate":"game.StrategySteps.Lock","color":"gray","with":[{"score":{"name": "@s","objective": "35num"},"bold":true}]}
execute at @s run playsound block.note_block.pling master @s ~ ~ ~
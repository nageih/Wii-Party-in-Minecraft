execute store result score temp= 35num run data get entity @s SelectedItem.components."minecraft:custom_data".35num

# Make sure they arent selecting same choice
execute if score @s 35num matches 1.. if score @s 35num = temp= 35num run return fail

scoreboard players operation @s 35num = temp= 35num
tag @s add 35lock

#execute if score @s 35num matches 1.. run tellraw @s {"translate":"game.StrategySteps.Lock","color":"gray","with":[{"score":{"name": "@s","objective": "35num"},"bold":true}]}
execute if score @s 35num matches 1.. run title @s[team=blue] actionbar {"translate":"game.StrategySteps.Selecting","color":"gray","with":[{"score":{"name": "@s","objective":"35num"},"color":"#0088ff","bold":true}]}
execute if score @s 35num matches 1.. run title @s[team=red] actionbar {"translate":"game.StrategySteps.Selecting","color":"gray","with":[{"score":{"name": "@s","objective":"35num"},"color":"red","bold":true}]}
execute if score @s 35num matches 1.. run title @s[team=green] actionbar {"translate":"game.StrategySteps.Selecting","color":"gray","with":[{"score":{"name": "@s","objective":"35num"},"color":"green","bold":true}]}
execute if score @s 35num matches 1.. run title @s[team=orange] actionbar {"translate":"game.StrategySteps.Selecting","color":"gray","with":[{"score":{"name": "@s","objective":"35num"},"color":"gold","bold":true}]}
execute unless score @s 35num matches 1.. run title @s[team=blue] actionbar {"translate":"game.StrategySteps.Lock","color":"gray","with":[{"translate":"game.StrategySteps.Nothing","bold":true,"color":"#0088ff"}]}
execute unless score @s 35num matches 1.. run title @s[team=red] actionbar {"translate":"game.StrategySteps.Lock","color":"gray","with":[{"translate":"game.StrategySteps.Nothing","bold":true,"color":"red"}]}
execute unless score @s 35num matches 1.. run title @s[team=green] actionbar {"translate":"game.StrategySteps.Lock","color":"gray","with":[{"translate":"game.StrategySteps.Nothing","bold":true,"color":"green"}]}
execute unless score @s 35num matches 1.. run title @s[team=orange] actionbar {"translate":"game.StrategySteps.Lock","color":"gray","with":[{"translate":"game.StrategySteps.Nothing","bold":true,"color":"gold"}]}
execute at @s run playsound block.note_block.pling master @s ~ ~ ~
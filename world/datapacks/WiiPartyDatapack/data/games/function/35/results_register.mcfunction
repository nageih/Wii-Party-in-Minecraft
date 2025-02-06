execute store result score 1= 35scores if entity @a[tag=ingame,scores={35num=1}]
execute store result score 3= 35scores if entity @a[tag=ingame,scores={35num=3}]
execute store result score 5= 35scores if entity @a[tag=ingame,scores={35num=5}]

execute if score 1= 35scores matches 1 run tag @a[tag=ingame,scores={35num=1}] add 35move
execute if score 3= 35scores matches 1 run tag @a[tag=ingame,scores={35num=3}] add 35move
execute if score 5= 35scores matches 1 run tag @a[tag=ingame,scores={35num=5}] add 35move

execute as @a[tag=playing,tag=35move] at @s run playsound block.note_block.cow_bell master @s ~ ~ ~ 1 1
execute as @a[tag=playing,tag=!35move] at @s run playsound block.note_block.didgeridoo master @s ~ ~ ~ 1 1


tellraw @a[tag=playing] ""
tellraw @a[tag=playing] {"translate":"game.StrategySteps.Results.Title","color":"gray","bold": true}
tellraw @a[tag=playing] ""
execute unless score 1= 35scores matches 1 run tellraw @a[tag=playing] {"translate":"game.StrategySteps.Results.Value","color":"gray","bold": true,"with":[{"selector":"@a[tag=ingame,scores={35num=1}]"},{"text":"1"}]}
execute unless score 3= 35scores matches 1 run tellraw @a[tag=playing] {"translate":"game.StrategySteps.Results.Value","color":"gray","bold": true,"with":[{"selector":"@a[tag=ingame,scores={35num=3}]"},{"text":"3"}]}
execute unless score 5= 35scores matches 1 run tellraw @a[tag=playing] {"translate":"game.StrategySteps.Results.Value","color":"gray","bold": true,"with":[{"selector":"@a[tag=ingame,scores={35num=5}]"},{"text":"5"}]}
execute if score 1= 35scores matches 1 run tellraw @a[tag=playing] [{"text":"     "},{"translate":"game.StrategySteps.Results.Value","color":"gray","bold": true,"with":[{"selector":"@a[tag=ingame,scores={35num=1}]"},{"text":"1"}]}]
execute if score 3= 35scores matches 1 run tellraw @a[tag=playing] [{"text":"     "},{"translate":"game.StrategySteps.Results.Value","color":"gray","bold": true,"with":[{"selector":"@a[tag=ingame,scores={35num=3}]"},{"text":"3"}]}]
execute if score 5= 35scores matches 1 run tellraw @a[tag=playing] [{"text":"     "},{"translate":"game.StrategySteps.Results.Value","color":"gray","bold": true,"with":[{"selector":"@a[tag=ingame,scores={35num=5}]"},{"text":"5"}]}]
tellraw @a[tag=playing] ""

execute unless entity @a[tag=ingame,tag=35move] run schedule function games:35/start_countdown 2s
execute if entity @a[tag=ingame,tag=35move] run schedule function games:35/travel_start 2s
tag @s remove 35move

tag @s add ignore
tellraw @a[tag=playing,tag=!ignore] {"translate": "game.StrategySteps.Reach","color":"gray","with":[{"selector":"@s","bold":false}]}
tellraw @s {"translate": "game.StrategySteps.Reach","color":"gray","with":[{"selector":"@s","bold":true}]}
tag @s remove ignore
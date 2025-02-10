tag @s remove 35move

tag @s add ignore
tellraw @a[tag=playing,tag=!ignore] {"translate": "game.StrategySteps.Reach","color":"gray","with":[{"selector":"@s","bold":false}]}
tellraw @s {"translate": "game.StrategySteps.Reach","color":"gray","with":[{"selector":"@s","bold":true}]}
tag @s remove ignore

tag @s[scores={35step=12..}] add 35finished

execute if entity @s[scores={35step=12..}] run schedule function games:35/finish 10t
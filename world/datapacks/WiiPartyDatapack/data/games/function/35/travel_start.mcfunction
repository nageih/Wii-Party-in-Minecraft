scoreboard players set show= 35scores 0
scoreboard players set travel= 35scores 0
clear @a[tag=ingame]

execute as @a[tag=playing] at @s run playsound entity.player.levelup master @s ~ ~ ~ 1 1.25

tellraw @a[tag=playing] {"translate":"game.StrategySteps.Travel.Info","color":"gray","with":[{"selector":"@a[tag=ingame,tag=35move]"}]}

execute as @a[tag=ingame,tag=35move] run scoreboard players operation @s 35step += @s 35num

schedule function games:35/travel_end 8s
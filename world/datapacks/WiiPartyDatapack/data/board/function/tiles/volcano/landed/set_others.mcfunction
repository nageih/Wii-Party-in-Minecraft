tag @s remove currentSpread

spreadplayers ~ ~ 2.5 2.5 false @s

execute at @s if entity @e[type=minecraft:area_effect_cloud,distance=..1.5,tag=volcanoTile] run function board:tiles/volcano/landed/set_others

tag @s add currentSpread
execute at @s if entity @e[type=minecraft:area_effect_cloud,distance=..2,tag=volcanoFake,tag=!currentSpread] at @e[type=minecraft:area_effect_cloud,tag=volcanoTile] run function board:tiles/volcano/landed/set_others
tag @s remove currentSpread

execute store result entity @s Pos[1] double 1 run scoreboard players get yPos= tiles
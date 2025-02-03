
scoreboard players operation currentMeteor= tiles = @s volcanoOrder

execute positioned ~ ~-1 ~ as @e[type=minecraft:area_effect_cloud,distance=..6,tag=volcanoFake] if score @s volcanoOrder = currentMeteor= tiles run function board:tiles/volcano/land

scoreboard players reset currentMeteor= tiles
tag @s add currentMeteor

tp @s ~ ~4 ~
execute as @e[type=minecraft:area_effect_cloud,tag=volcanoTile] if score @s volcanoOrder = @e[type=minecraft:armor_stand,tag=currentMeteor,limit=1] volcanoOrder run tag @s add currentTile
execute at @s run tp @s ^ ^ ^6 facing entity @e[type=minecraft:area_effect_cloud,tag=currentTile,limit=1]
execute as @e[type=minecraft:area_effect_cloud,tag=volcanoFake] if score @s volcanoOrder = @e[type=minecraft:armor_stand,tag=currentMeteor,limit=1] volcanoOrder run tag @s add currentTilef
execute at @s run tp @s ^ ^ ^8 facing entity @e[type=minecraft:area_effect_cloud,tag=currentTilef,limit=1]

tag @e[type=minecraft:area_effect_cloud] remove currentTile

tag @s remove currentMeteor
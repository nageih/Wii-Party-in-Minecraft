# Big thanks to MLGDuckboi for letting me yoink these particles
particle minecraft:flame ~ ~ ~ 0.1 0.1 0.1 0.7 30 force @a[tag=!lowDetail]
particle minecraft:campfire_cosy_smoke ~ ~ ~ 0.1 0.1 0.1 0.7 70 force @a[tag=!lowDetail]
particle minecraft:lava ~ ~ ~ 0.7 0.7 0.7 0.1 20 force @a[tag=!lowDetail]
particle minecraft:flash ~ ~ ~ 0 0 0 0 1 force @a[tag=!lowDetail]
particle minecraft:smoke ~ ~ ~ 0.2 0.2 0.2 0.5 50 force @a[tag=!lowDetail]

execute if entity @s[tag=finalMeteor] run scoreboard players add volcanoBoostTimer= tiles 1

execute if entity @s[tag=!volcanoFake] at @e[type=minecraft:area_effect_cloud,tag=volcanoTile,sort=nearest,limit=1] run clone -976 12 -1165 -974 12 -1163 ~-1 ~ ~-1

execute if entity @s[tag=!volcanoFake] as @e[type=minecraft:area_effect_cloud,distance=..25,tag=tileName,sort=nearest,limit=2] at @s run function board:tiles/volcano/change_name

kill @s
execute as @e[type=minecraft:armor_stand,tag=meteor] if score @s volcanoOrder = currentMeteor= tiles run kill @s

playsound minecraft:entity.generic.explode master @a ~ ~ ~ 5
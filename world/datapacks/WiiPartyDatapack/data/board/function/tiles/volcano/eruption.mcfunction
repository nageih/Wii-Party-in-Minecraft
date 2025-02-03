execute unless score volcanoTimer= tiles matches 40.. run scoreboard players add volcanoTimer= tiles 1

execute if score volcanoTimer= tiles matches 39 run time set 23300t

execute if score volcanoTimer= tiles matches 39 as @a[tag=playing] at @s run playsound minecraft:entity.zombie_villager.cure master @s -214 93 56 30 0.75

execute if score volcanoTimer= tiles matches 39 run tellraw @a[tag=playing] {"translate":"board.Tiles.Volcano.Errupted","bold":true,"color":"gray"}

execute if score volcanoTotal= tiles matches 1.. if score volcanoTimer= tiles matches 40.. as @a[tag=playing] at @s run function board:tiles/volcano/camera_shake

execute if score volcanoTimer= tiles matches 40.. unless score volcanoTotal= tiles matches 0 run function board:tiles/volcano/errupt

execute as @e[type=minecraft:armor_stand,tag=meteor] at @s run function board:tiles/volcano/travel

execute as @e[type=minecraft:armor_stand,tag=meteor] at @s if entity @e[type=minecraft:area_effect_cloud,distance=..1.5,tag=volcanoTile] run function board:tiles/volcano/land

execute at @e[type=minecraft:armor_stand,tag=meteor] run particle minecraft:flame ~ ~1 ~ 0.5 0.5 0.5 0.2 3 force @a[tag=!lowDetail]
execute at @e[type=minecraft:armor_stand,tag=meteor] run particle minecraft:large_smoke ~ ~1 ~ 0.5 0.5 0.5 0.1 5 force @a[tag=!lowDetail]
execute at @e[type=minecraft:armor_stand,tag=meteor] run particle minecraft:lava ~ ~1 ~ 0.7 0.7 0.7 0.1 3 force @a[tag=!lowDetail]

execute if score volcanoTimer= tiles matches 40.. unless entity @e[type=minecraft:armor_stand,tag=meteor] run scoreboard players add volcanoTimer= tiles 1
execute if score volcanoTimer= tiles matches 60.. run function board:tiles/volcano/end


scoreboard players add volcanoBackup= tiles 1
execute if score volcanoBackup= tiles matches 200.. run function board:tiles/volcano/end

kill @e[type=minecraft:area_effect_cloud,tag=game18,tag=raycast]
execute as @e[type=minecraft:armor_stand,tag=game18,tag=!selected] at @s run tp ~ 40 ~
tag @e[type=minecraft:armor_stand,tag=game18,tag=!selected] remove placeable
execute as @e[type=minecraft:armor_stand,tag=game18,tag=hasshadow,tag=!selected] run function games:18/raycasting/removeshadow

execute as @e[type=minecraft:armor_stand,tag=game18,tag=selected] run function games:18/raycasting/movetile

kill @e[type=minecraft:area_effect_cloud,tag=game18,tag=raycast]
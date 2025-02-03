tag @e[type=minecraft:armor_stand,tag=game18] remove lookingat
execute at @s run function games:18/raycasting/start
execute as @e[type=minecraft:armor_stand,tag=lookingat,tag=placed] run function games:18/arrays/removematrix
tag @e[type=minecraft:armor_stand,tag=lookingat] add selected
tag @e[type=minecraft:armor_stand,tag=game18] remove lookingat

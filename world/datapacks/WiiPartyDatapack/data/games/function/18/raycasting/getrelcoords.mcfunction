execute store result score raycastx= 18scores run data get entity @s Pos[0]
execute store result score raycastz= 18scores run data get entity @s Pos[2]

scoreboard players operation relx= 18scores = raycastx= 18scores
scoreboard players operation rely= 18scores = raycastz= 18scores

execute store result score xsize= 18scores run data get entity @s ArmorItems[3].components."minecraft:custom_data".Data.Size[0]
execute store result score ysize= 18scores run data get entity @s ArmorItems[3].components."minecraft:custom_data".Data.Size[1]

data modify storage minecraft:game18 sums.add set from entity @s ArmorItems[3].components."minecraft:custom_data".Data.Array

# BLUE
execute if entity @s[tag=blue] run scoreboard players remove relx= 18scores 19159
execute if entity @s[tag=blue] run scoreboard players remove rely= 18scores 19156
execute if entity @s[tag=blue] run data modify storage minecraft:game18 sums.base set from storage minecraft:game18 blue

# RED
execute if entity @s[tag=red] run scoreboard players remove relx= 18scores 19159
execute if entity @s[tag=red] run scoreboard players remove rely= 18scores 19150
execute if entity @s[tag=red] run data modify storage minecraft:game18 sums.base set from storage minecraft:game18 red

# GREEN
execute if entity @s[tag=green] run scoreboard players remove relx= 18scores 19153
execute if entity @s[tag=green] run scoreboard players remove rely= 18scores 19150
execute if entity @s[tag=green] run data modify storage minecraft:game18 sums.base set from storage minecraft:game18 green

# ORANGE
execute if entity @s[tag=orange] run scoreboard players remove relx= 18scores 19153
execute if entity @s[tag=orange] run scoreboard players remove rely= 18scores 19156
execute if entity @s[tag=orange] run data modify storage minecraft:game18 sums.base set from storage minecraft:game18 orange

scoreboard players operation relx= 18scores *= 2 Numbers
scoreboard players operation rely= 18scores *= 2 Numbers

scoreboard players operation relx= 18scores += xoffset= 18scores
scoreboard players operation rely= 18scores += yoffset= 18scores

scoreboard players operation relx= 18scores *= 2 Numbers
scoreboard players operation rely= 18scores *= 2 Numbers

scoreboard players operation relx= 18scores += xsize= 18scores
scoreboard players operation rely= 18scores += ysize= 18scores

scoreboard players operation relx= 18scores /= 2 Numbers
scoreboard players operation rely= 18scores /= 2 Numbers

scoreboard players set x 18sums 8
scoreboard players set y 18sums 8

scoreboard players operation x 18sums -= relx= 18scores
scoreboard players operation y 18sums -= rely= 18scores

function games:18/arrays/summatrix
execute if score error 18sums matches 1 run effect give @s minecraft:glowing 1 0 true
execute if score error 18sums matches 1 run tag @s remove placeable
execute if score error 18sums matches 0 run effect clear @s minecraft:glowing
execute if score error 18sums matches 0 run tag @s add placeable

execute if entity @s[tag=placeable,tag=place,tag=blue] run data modify storage minecraft:game18 blue set from storage minecraft:game18 sums.temp
execute if entity @s[tag=placeable,tag=place,tag=red] run data modify storage minecraft:game18 red set from storage minecraft:game18 sums.temp
execute if entity @s[tag=placeable,tag=place,tag=green] run data modify storage minecraft:game18 green set from storage minecraft:game18 sums.temp
execute if entity @s[tag=placeable,tag=place,tag=orange] run data modify storage minecraft:game18 orange set from storage minecraft:game18 sums.temp

tag @s[tag=placeable,tag=place] remove selected
tag @s[tag=placeable,tag=place] add placed
execute if entity @s[tag=placeable,tag=place] run function games:18/arrays/validate/checkboard

data modify entity @s ArmorItems[3].components."minecraft:custom_data".Data.Pos set value [0,0]
execute store result entity @s ArmorItems[3].components."minecraft:custom_data".Data.Pos[0] int 1 run scoreboard players get x 18sums
execute store result entity @s ArmorItems[3].components."minecraft:custom_data".Data.Pos[1] int 1 run scoreboard players get y 18sums

execute if entity @s[tag=place,tag=blue,tag=!placeable] at @a[team=blue] run playsound minecraft:entity.villager.no voice @a[team=blue] ~ ~ ~ .2
execute if entity @s[tag=place,tag=red,tag=!placeable] at @a[team=red] run playsound minecraft:entity.villager.no voice @a[team=red] ~ ~ ~ .2
execute if entity @s[tag=place,tag=green,tag=!placeable] at @a[team=green] run playsound minecraft:entity.villager.no voice @a[team=green] ~ ~ ~ .2
execute if entity @s[tag=place,tag=orange,tag=!placeable] at @a[team=orange] run playsound minecraft:entity.villager.no voice @a[team=orange] ~ ~ ~ .2

tag @s remove place
execute if entity @s[tag=blue] run data modify storage minecraft:game18 sums.base set from storage minecraft:game18 blue
execute if entity @s[tag=red] run data modify storage minecraft:game18 sums.base set from storage minecraft:game18 red
execute if entity @s[tag=green] run data modify storage minecraft:game18 sums.base set from storage minecraft:game18 green
execute if entity @s[tag=orange] run data modify storage minecraft:game18 sums.base set from storage minecraft:game18 orange

execute store result score x 18sums run data get entity @s ArmorItems[3].components."minecraft:custom_data".Data.Pos[0]
execute store result score y 18sums run data get entity @s ArmorItems[3].components."minecraft:custom_data".Data.Pos[1]
data modify storage minecraft:game18 sums.add set from entity @s ArmorItems[3].components."minecraft:custom_data".Data.Array

scoreboard players set error 18sums 0
scoreboard players set mode= 18sums -1
function games:18/arrays/getmatrixsize
function games:18/arrays/summatrix2

execute if entity @s[tag=blue] run data modify storage minecraft:game18 blue set from storage minecraft:game18 sums.temp
execute if entity @s[tag=red] run data modify storage minecraft:game18 red set from storage minecraft:game18 sums.temp
execute if entity @s[tag=green] run data modify storage minecraft:game18 green set from storage minecraft:game18 sums.temp
execute if entity @s[tag=orange] run data modify storage minecraft:game18 orange set from storage minecraft:game18 sums.temp

tag @s remove placed
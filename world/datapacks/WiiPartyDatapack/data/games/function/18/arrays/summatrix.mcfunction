execute if entity @s[team=blue] run data modify storage minecraft:game18 sums.base set from storage minecraft:game18 blue
execute if entity @s[team=red] run data modify storage minecraft:game18 sums.base set from storage minecraft:game18 red
execute if entity @s[team=green] run data modify storage minecraft:game18 sums.base set from storage minecraft:game18 green
execute if entity @s[team=orange] run data modify storage minecraft:game18 sums.base set from storage minecraft:game18 orange

scoreboard players set error 18sums 0
scoreboard players set mode= 18sums 1
function games:18/arrays/validate
execute if score error 18sums matches 0 run function games:18/arrays/summatrix2
execute store result score current 18sums run data get storage minecraft:game18 sums.base[0][0]
data remove storage minecraft:game18 sums.base[0][0]
scoreboard players set sum 18sums 0
execute store success score sum 18sums if score sumx 18sums >= x 18sums if score sumx 18sums <= maxx 18sums
execute store success score sum 18sums if score sum 18sums matches 1 if score sumy 18sums >= y 18sums
execute store success score sum 18sums if score sum 18sums matches 1 if score sumy 18sums <= maxy 18sums
scoreboard players set current2 18sums 0
execute if score sum 18sums matches 1 store result score current2 18sums run data get storage minecraft:game18 sums.add[0][0]
execute if score sum 18sums matches 1 run data remove storage minecraft:game18 sums.add[0][0]
execute if score sumx 18sums = maxx 18sums if score sum 18sums matches 1 run data remove storage minecraft:game18 sums.add[0]
scoreboard players operation current2 18sums *= mode= 18sums
scoreboard players operation current 18sums += current2 18sums
execute store result storage minecraft:game18 sums.temp2 int 1 run scoreboard players get current 18sums
data modify storage minecraft:game18 sums.temp[-1] append from storage minecraft:game18 sums.temp2
execute if score mode= 18sums matches 1 if score current 18sums matches 3.. run scoreboard players set error 18sums 1
scoreboard players add sumx 18sums 1
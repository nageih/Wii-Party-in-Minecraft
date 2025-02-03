scoreboard players set sizex 18sums 0
scoreboard players set sizey 18sums 0

data modify storage minecraft:game18 sums.temp set from storage minecraft:game18 sums.add[0]
scoreboard players set sum 18sums 0
function games:18/arrays/getmatrixsize2
scoreboard players operation sizex 18sums = sum 18sums

data modify storage minecraft:game18 sums.temp set from storage minecraft:game18 sums.add
scoreboard players set sum 18sums 0
function games:18/arrays/getmatrixsize2
scoreboard players operation sizey 18sums = sum 18sums
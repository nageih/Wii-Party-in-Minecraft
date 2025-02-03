data modify storage minecraft:game18 sums.temp append value []
scoreboard players set sumx 18sums 0
function games:18/arrays/summatrix4
execute if score error 18sums matches 0 run function games:18/arrays/summatrix4
execute if score error 18sums matches 0 run function games:18/arrays/summatrix4
execute if score error 18sums matches 0 run function games:18/arrays/summatrix4
execute if score error 18sums matches 0 run function games:18/arrays/summatrix4
execute if score error 18sums matches 0 run function games:18/arrays/summatrix4
execute if score error 18sums matches 0 run function games:18/arrays/summatrix4
execute if score error 18sums matches 0 run function games:18/arrays/summatrix4
data remove storage minecraft:game18 sums.base[0]
scoreboard players add sumy 18sums 1
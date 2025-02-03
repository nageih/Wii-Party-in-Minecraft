scoreboard players operation maxx 18sums = sizex 18sums
scoreboard players operation maxx 18sums += x 18sums
scoreboard players remove maxx 18sums 1
scoreboard players operation maxy 18sums = sizey 18sums
scoreboard players operation maxy 18sums += y 18sums
scoreboard players remove maxy 18sums 1
data modify storage minecraft:game18 sums.temp set value []

scoreboard players set sumy 18sums 0
function games:18/arrays/summatrix3
execute if score error 18sums matches 0 run function games:18/arrays/summatrix3
execute if score error 18sums matches 0 run function games:18/arrays/summatrix3
execute if score error 18sums matches 0 run function games:18/arrays/summatrix3
execute if score error 18sums matches 0 run function games:18/arrays/summatrix3
execute if score error 18sums matches 0 run function games:18/arrays/summatrix3
execute if score error 18sums matches 0 run function games:18/arrays/summatrix3
execute if score error 18sums matches 0 run function games:18/arrays/summatrix3
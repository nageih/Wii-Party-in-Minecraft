function games:18/arrays/getmatrixsize

scoreboard players set sum 18sums 0
scoreboard players operation sum 18sums = x 18sums
scoreboard players operation sum 18sums += sizex 18sums
execute if score sum 18sums matches 9.. run scoreboard players set error 18sums 1
execute if score x 18sums matches ..-1 run scoreboard players set error 18sums 1

scoreboard players set sum 18sums 0
scoreboard players operation sum 18sums = y 18sums
scoreboard players operation sum 18sums += sizey 18sums
execute if score sum 18sums matches 9.. run scoreboard players set error 18sums 1
execute if score y 18sums matches ..-1 run scoreboard players set error 18sums 1
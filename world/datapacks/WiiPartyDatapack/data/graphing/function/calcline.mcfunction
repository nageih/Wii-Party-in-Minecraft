#   Author        =   @ T4Bl3rUs
#   Description   =   Calcs an entire line
#   Called By     =   graphing:calc + graphing:calcline

scoreboard players set #continue2 graphing 0

execute store result score from= graphing run data get storage minecraft:graphing tempvalues[0]
data remove storage minecraft:graphing tempvalues[0]
execute store result score to= graphing run data get storage minecraft:graphing tempvalues[0]
scoreboard players operation from= graphing *= 1000 Numbers
scoreboard players operation to= graphing *= 1000 Numbers
scoreboard players operation diff= graphing = to= graphing
scoreboard players operation diff= graphing -= from= graphing

scoreboard players operation diff_percent= graphing = diff= graphing
scoreboard players operation diff_percent= graphing /= value_diff= graphing
execute if score diff_percent= graphing matches ..0 run scoreboard players operation diff_percent= graphing *= -1 Numbers
execute store result storage minecraft:graphing temp3 double 0.1 run scoreboard players get diff_percent= graphing

function graphing:calcpoint

data remove storage minecraft:graphing temp3

scoreboard players add #continue graphing 1
execute if score #continue graphing < dp= graphing run function graphing:calcline
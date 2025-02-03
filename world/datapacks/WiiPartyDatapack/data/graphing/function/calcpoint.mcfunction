#   Author        =   @ T4Bl3rUs
#   Description   =   Calcs the height of a point
#   Called By     =   graphing:calcline + graphing:calcpoint

scoreboard players operation val= graphing = diff= graphing
scoreboard players operation val= graphing *= #continue2 graphing
scoreboard players operation val= graphing /= ppv= graphing
scoreboard players operation val= graphing += from= graphing
scoreboard players operation val= graphing /= h= graphing
scoreboard players operation val= graphing += start= graphing
execute store result storage minecraft:graphing temp double 0.001 run scoreboard players get val= graphing
data modify storage minecraft:graphing heights append from storage minecraft:graphing temp

scoreboard players add #continue2 graphing 1
execute if score #continue2 graphing < ppv= graphing run function graphing:calcpoint
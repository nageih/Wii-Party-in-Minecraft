#   Author        =   @ T4Bl3rUs
#   Description   =   Calcs the height of the points used in the graph
#   Called By     =  

# Get the variables into the scoreboard
execute store result score dp= graphing run data get storage minecraft:graphing config.datapoints
scoreboard players remove dp= graphing 1
scoreboard players operation start= graphing *= 1000 Numbers

# Calc diff between lowest division and actual value
execute store result score res= graphing run data get storage minecraft:graphing config.resolution
scoreboard players operation res= graphing /= dp= graphing
scoreboard players operation res= graphing *= dp= graphing
execute store result score low= graphing run data get storage minecraft:graphing config.resolution
scoreboard players operation low= graphing -= res= graphing

# Calc diff between highest division and actual value
execute store result score high= graphing run data get storage minecraft:graphing config.resolution
scoreboard players operation high= graphing /= dp= graphing
scoreboard players add high= graphing 1
scoreboard players operation high= graphing *= dp= graphing
execute store result score res= graphing run data get storage minecraft:graphing config.resolution
scoreboard players operation high= graphing -= res= graphing

# Set points per value to the closest value to the resolution
scoreboard players operation ppv= graphing = res= graphing
scoreboard players operation ppv= graphing /= dp= graphing
execute if score low= graphing > high= graphing run scoreboard players add ppv= graphing 1

# Get lowest and highest numbers
data modify storage minecraft:graphing tempvalues set from storage minecraft:graphing values
#scoreboard players set lowest= graphing 1000000000
#scoreboard players set highest= graphing -1000000000
#function graphing:highestlowest
scoreboard players set lowest= graphing 0
scoreboard players set highest= graphing 90
scoreboard players set value_diff= graphing 90
#scoreboard players operation value_diff= graphing = highest= graphing
#scoreboard players operation value_diff= graphing -= lowest= graphing

# Get every height
data modify storage minecraft:graphing tempvalues set from storage minecraft:graphing values
data modify storage minecraft:graphing heights set value []
data modify storage minecraft:graphing diffs set value []
scoreboard players operation h= graphing = highest= graphing
scoreboard players operation h= graphing -= lowest= graphing
execute store result score h2= graphing run data get storage minecraft:graphing config.height
scoreboard players operation h= graphing *= 1000 Numbers
scoreboard players operation h2= graphing *= 1000 Numbers
scoreboard players operation h= graphing /= h2= graphing
scoreboard players set #continue graphing 0
function graphing:calcline
function graphing:calcpoint
data remove storage minecraft:graphing tempvalues
data remove storage minecraft:graphing temp
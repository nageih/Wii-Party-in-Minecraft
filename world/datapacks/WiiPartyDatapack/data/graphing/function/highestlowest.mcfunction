#   Author        =   @ T4Bl3rUs
#   Description   =   Checks every value to find the highest and the lowest
#   Called By     =   graphing:calc + graphing:highestowest

# Get current value
execute store result score val= graphing run data get storage minecraft:graphing tempvalues[0]
data remove storage minecraft:graphing tempvalues[0]

# Detect if it should change the values
scoreboard players operation lowest= graphing < val= graphing
scoreboard players operation highest= graphing > val= graphing

# Decide if it should continue
execute store success score #continue graphing run data get storage minecraft:graphing tempvalues[0]
execute if score #continue graphing matches 1 run function graphing:highestlowest
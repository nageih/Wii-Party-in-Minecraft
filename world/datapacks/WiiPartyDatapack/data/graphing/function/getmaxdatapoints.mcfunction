#   Author        =   @ T4Bl3rUs
#   Description   =   Deduces the maximum number of datapoints among all teams
#   Called By     =   graphing:fullgraph

# Initialize the maximum datapoints to 0
scoreboard players set max_dp graphing 0

# Check the length of each team's array and update max_dp accordingly
execute store result score temp graphing run data get storage minecraft:graphing blue
execute if score temp graphing > max_dp graphing run scoreboard players operation max_dp graphing = temp graphing

execute store result score temp graphing run data get storage minecraft:graphing red
execute if score temp graphing > max_dp graphing run scoreboard players operation max_dp graphing = temp graphing

execute store result score temp graphing run data get storage minecraft:graphing green
execute if score temp graphing > max_dp graphing run scoreboard players operation max_dp graphing = temp graphing

execute store result score temp graphing run data get storage minecraft:graphing orange
execute if score temp graphing > max_dp graphing run scoreboard players operation max_dp graphing = temp graphing

# Store the deduced datapoints in config.datapoints
execute store result storage minecraft:graphing config.datapoints int 1 run scoreboard players get max_dp graphing
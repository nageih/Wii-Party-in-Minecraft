#   Author        =   @ T4Bl3rUs
#   Description   =   Renders the graph for all teams
#   Called By     =   

# NOTE: config.resolution will change the length of the graph

# NOTE: config.datapoints should match the length of the biggest array
# If it has less, some points will be cut off
# If it has more, all unset values will be assumed to be 0

# TODO: Automatically calculate config.datapoints and, in case a team has less than that, add
# points equal to the value of the last element of the array until the desired length is met

# TODO?: The graph causes a bit of lag if rendered every tick, so a system to limit it to 1/4 or 1/5 ticks can be added

# Skip ig 3 or less datapoints
execute store result score temp graphing run data get storage minecraft:graphing config.datapoints
execute if score temp graphing matches ..3 run return fail


data modify storage minecraft:graphing config.colour set value 1
data modify storage minecraft:graphing values set from storage minecraft:graphing blue
function graphing:render

data modify storage minecraft:graphing config.colour set value 2
data modify storage minecraft:graphing values set from storage minecraft:graphing red
function graphing:render

data modify storage minecraft:graphing config.colour set value 3
data modify storage minecraft:graphing values set from storage minecraft:graphing green
function graphing:render

data modify storage minecraft:graphing config.colour set value 4
data modify storage minecraft:graphing values set from storage minecraft:graphing orange
function graphing:render
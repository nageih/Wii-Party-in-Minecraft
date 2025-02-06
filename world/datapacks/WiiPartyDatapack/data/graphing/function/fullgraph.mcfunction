#   Author        =   @ T4Bl3rUs
#   Description   =   Renders the graph for all teams
#   Called By     =   

# Deduce the number of datapoints
function graphing:getmaxdatapoints

# Skip if 3 or fewer datapoints
execute store result score temp graphing run data get storage minecraft:graphing config.datapoints
execute if score temp graphing matches ..3 run return fail

# Render the graph for each team
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

# Clean up
data remove storage minecraft:graphing config.colour
data remove storage minecraft:graphing config.datapoints
data remove storage minecraft:graphing values
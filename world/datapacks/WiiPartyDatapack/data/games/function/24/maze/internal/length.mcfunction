#   Author        =   @ T4Bl3rUs
#   Description   =   Creates the maze
#   Called By     =   games:24/maze/internal/build

scoreboard players operation #width2 24maze = #width 24maze
function games:24/maze/internal/width

scoreboard players remove #length2 24maze 1
execute if score #length2 24maze matches 1.. positioned ~ ~ ~2 run function games:24/maze/internal/length
#   Author        =   @ T4Bl3rUs
#   Description   =   Copies the maze
#   Called By     =   games:24/maze/internal/finish

place template wiiparty:maze 25041 7 24972 clockwise_90
clone 25021 8 24972 25041 7 24992 25021 11 24972 masked
setblock 25020 11 24970 minecraft:air

function games:24/maze/internal/fixmaze
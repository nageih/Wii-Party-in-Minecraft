#   Author        =   @ T4Bl3rUs
#   Description   =   Pastes the last 2 sides and copies the maze to the board
#   Called By     =   games:24/maze/internal/fixmaze

setblock 25020 11 24970 minecraft:redstone_block
place template wiiparty:maze 25021 7 24972
clone 25021 8 24972 25041 7 24992 25021 11 24972 masked
place template wiiparty:maze 25041 7 24972 clockwise_90
clone 25021 8 24972 25041 7 24992 25021 11 24972 masked
place template wiiparty:maze 25041 7 24992 180
clone 25021 8 24972 25041 7 24992 25021 11 24972 masked
place template wiiparty:maze 25021 7 24992 counterclockwise_90
clone 25021 8 24972 25041 7 24992 25021 11 24972 masked

#Return the maze to its original blocks
fill 25021 12 24972 25041 12 24992 minecraft:terracotta replace minecraft:air
fill 25021 11 24972 25041 11 24992 minecraft:cyan_concrete replace minecraft:air
fill 25021 12 24972 25041 11 24992 minecraft:air replace minecraft:barrier
fill 25041 8 24992 25021 7 24972 minecraft:air

execute positioned 25021 11 24972 run function games:24/maze/internal/build
#Carve centre
fill 25033 11 24980 25029 12 24984 minecraft:air
fill 25033 10 24980 25029 10 24984 minecraft:yellow_terracotta
fill 25030 10 24983 25032 10 24981 minecraft:yellow_concrete

#Copy the small maze to the big maze
function games:24/maze/internal/clone
#   Author        =   @ T4Bl3rUs
#   Description   =   Executes once a quarter of the maze is carved. Copies the maze and rotates it
#   Called By     =   games:24/maze/create

kill @e[type=minecraft:marker,tag=24maze2]

#Replace air with barriers and the other materials with air so it can be cloned masked
fill 25021 12 24972 25041 11 24992 minecraft:barrier replace minecraft:air
fill 25021 12 24972 25041 11 24992 minecraft:air replace minecraft:terracotta
fill 25021 12 24972 25041 11 24992 minecraft:air replace minecraft:cyan_concrete
setblock 25020 11 24970 minecraft:air
#COPY
setblock 25020 11 24970 minecraft:redstone_block

#First rotation
function games:24/maze/internal/rotate
#   Author        =   @ T4Bl3rUs
#   Description   =   Creates the maze
#   Called By     =   games:24/maze/internal/length + games:24/maze/internal/length

#fill ~-1 ~ ~-1 ~1 ~ ~1 cyan_concrete
#fill ~-1 ~1 ~-1 ~1 ~1 ~1 terracotta
#fill ~ ~ ~ ~ ~1 ~ air
fill ~-1 ~-1 ~-1 ~1 ~-1 ~1 minecraft:white_concrete replace minecraft:air
#setblock ~ ~-2 ~ cyan_concrete
setblock ~ ~-1 ~ minecraft:light_gray_concrete
fill ~ ~ ~ ~ ~1 ~ minecraft:air replace minecraft:cyan_concrete
setblock ~ ~1 ~ minecraft:air

scoreboard players remove #width2 24maze 1
execute if score #width2 24maze matches 1.. positioned ~2 ~ ~ run function games:24/maze/internal/width
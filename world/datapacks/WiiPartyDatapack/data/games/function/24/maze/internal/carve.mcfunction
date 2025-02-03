#   Author        =   @ T4Bl3rUs
#   Description   =   Carve the maze
#   Called By     =   games:24/maze/internal/carve + games:24/maze/create

#COMMENT THE LINE BELOW TO PREVENT PATHS FROM JOINING, BUT IT MAY LEAVE SPOTS LOCKED
#execute if score count 24maze matches 25.. run scoreboard players set count 24maze 25

#Copy the maze rotated to limit the spots
execute as @e[type=minecraft:marker,tag=24maze2] at @s if block ~ ~-2 ~ minecraft:red_wool run tag @s add this
execute as @e[type=minecraft:marker,tag=24maze2,tag=this] as @e[type=minecraft:marker,tag=24maze2] at @s if score @s 24as = @e[type=minecraft:marker,tag=24maze2,tag=this,limit=1] 24as run function games:24/maze/internal/copy

#Determine available directions
scoreboard players set @e[type=minecraft:armor_stand,tag=24maze] 24maze 0
execute if block ~2 ~ ~ minecraft:cyan_concrete run scoreboard players set @e[type=minecraft:armor_stand,tag=24maze,scores={24maze=0},limit=1] 24maze 1
execute if block ~-2 ~ ~ minecraft:cyan_concrete run scoreboard players set @e[type=minecraft:armor_stand,tag=24maze,scores={24maze=0},limit=1] 24maze 2
execute if block ~ ~ ~2 minecraft:cyan_concrete run scoreboard players set @e[type=minecraft:armor_stand,tag=24maze,scores={24maze=0},limit=1] 24maze 3
execute if block ~ ~ ~-2 minecraft:cyan_concrete run scoreboard players set @e[type=minecraft:armor_stand,tag=24maze,scores={24maze=0},limit=1] 24maze 4

#Select maze direction (if available)
scoreboard players set #random 24maze 0
scoreboard players operation #random 24maze = @e[type=minecraft:armor_stand,tag=24maze,scores={24maze=1..},sort=random,limit=1] 24maze

#Set red_wool if a direction is chosen
execute if score #random 24maze matches 1.. run setblock ~ ~ ~ minecraft:red_wool
execute if score #random 24maze matches 1.. run scoreboard players add count 24maze 1
#execute if score count 24maze matches 5 run setblock ~ ~2 ~ diamond_block
#execute if score count 24maze matches 15 run setblock ~ ~2 ~ diamond_block


#Carve out maze in chosen direction (if one is chosen)
execute if score #random 24maze matches 1 if score count 24maze matches ..50 run fill ~1 ~2 ~ ~1 ~3 ~ minecraft:air
execute if score #random 24maze matches 1 positioned ~2 ~ ~ if score count 24maze matches ..50 run function games:24/maze/internal/carve
execute if score #random 24maze matches 2 if score count 24maze matches ..50 run fill ~-1 ~2 ~ ~-1 ~3 ~ minecraft:air
execute if score #random 24maze matches 2 positioned ~-2 ~ ~ if score count 24maze matches ..50 run function games:24/maze/internal/carve
execute if score #random 24maze matches 3 if score count 24maze matches ..50 run fill ~ ~2 ~1 ~ ~3 ~1 minecraft:air
execute if score #random 24maze matches 3 positioned ~ ~ ~2 if score count 24maze matches ..50 run function games:24/maze/internal/carve
execute if score #random 24maze matches 4 if score count 24maze matches ..50 run fill ~ ~2 ~-1 ~ ~3 ~-1 minecraft:air
execute if score #random 24maze matches 4 positioned ~ ~ ~-2 if score count 24maze matches ..50 run function games:24/maze/internal/carve

#Backtrack if there are no available directions
execute if score #random 24maze matches 0 run setblock ~ ~ ~ minecraft:blue_wool
execute if score #random 24maze matches 0 if block ~1 ~2 ~ minecraft:air if block ~2 ~ ~ minecraft:red_wool positioned ~2 ~ ~ if score count 24maze matches ..50 run function games:24/maze/internal/carve
execute if score #random 24maze matches 0 if block ~-1 ~2 ~ minecraft:air if block ~-2 ~ ~ minecraft:red_wool positioned ~-2 ~ ~ if score count 24maze matches ..50 run function games:24/maze/internal/carve
execute if score #random 24maze matches 0 if block ~ ~2 ~1 minecraft:air if block ~ ~ ~2 minecraft:red_wool positioned ~ ~ ~2 if score count 24maze matches ..50 run function games:24/maze/internal/carve
execute if score #random 24maze matches 0 if block ~ ~2 ~-1 minecraft:air if block ~ ~ ~-2 minecraft:red_wool positioned ~ ~ ~-2 if score count 24maze matches ..50 run function games:24/maze/internal/carve
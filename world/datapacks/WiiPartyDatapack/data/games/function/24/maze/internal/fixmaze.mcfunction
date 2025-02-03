#   Author        =   @ T4Bl3rUs
#   Description   =   Checks if its a valid maze and makes a new one if not
#   Called By     =   games:24/maze/internal/rotate

scoreboard players set valid= 24maze 0
scoreboard players set len= 24maze 0

kill @e[type=minecraft:marker,tag=24maze2]
scoreboard players set total= 24as 1
summon minecraft:marker 25021 11 24972 {Tags:["24maze2"]}
scoreboard players set @e[type=minecraft:marker,tag=24maze2] 24as 1

function games:24/maze/internal/check
#execute positioned 25031 11 24982 run scoreboard players operation len= 24maze = @e[type=marker,distance=..2] 24as
execute as @e[type=minecraft:marker,tag=24maze2,scores={24as=6},sort=random,limit=1] positioned as @s run setblock ~ ~ ~ minecraft:diamond_block
execute as @e[type=minecraft:marker,tag=24maze2,scores={24as=12},sort=random,limit=1] positioned as @s run setblock ~ ~ ~ minecraft:diamond_block
kill @e[type=minecraft:marker,tag=24maze2]

execute if score valid= 24maze matches 0 run function games:24/maze/internal/create
execute if score valid= 24maze matches 1 if score len= 24maze < minlen= 24maze run scoreboard players remove minlen= 24maze 1
execute if score valid= 24maze matches 1 if score len= 24maze < minlen= 24maze run function games:24/maze/internal/create
execute if score valid= 24maze matches 1 unless score len= 24maze < minlen= 24maze run function games:24/maze/internal/last
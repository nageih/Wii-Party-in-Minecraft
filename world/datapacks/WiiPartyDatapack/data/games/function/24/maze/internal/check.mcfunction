#   Author        =   @ T4Bl3rUs
#   Description   =   Fills the maze with markers
#   Called By     =   games:24/maze/internal/fixmaze

scoreboard players set continue= 24maze 0
scoreboard players add total= 24as 1

execute as @e[type=minecraft:marker,tag=24maze2] positioned as @s if block ~-1 ~ ~ minecraft:barrier positioned ~-2 ~ ~ unless entity @e[type=minecraft:marker,distance=..0.5,tag=24maze2] run scoreboard players set continue= 24maze 1
execute as @e[type=minecraft:marker,tag=24maze2] positioned as @s if block ~1 ~ ~ minecraft:barrier positioned ~2 ~ ~ unless entity @e[type=minecraft:marker,distance=..0.5,tag=24maze2] run scoreboard players set continue= 24maze 1
execute as @e[type=minecraft:marker,tag=24maze2] positioned as @s if block ~ ~ ~-1 minecraft:barrier positioned ~ ~ ~-2 unless entity @e[type=minecraft:marker,distance=..0.5,tag=24maze2] run scoreboard players set continue= 24maze 1
execute as @e[type=minecraft:marker,tag=24maze2] positioned as @s if block ~ ~ ~1 minecraft:barrier positioned ~ ~ ~2 unless entity @e[type=minecraft:marker,distance=..0.5,tag=24maze2] run scoreboard players set continue= 24maze 1

execute as @e[type=minecraft:marker,tag=24maze2,tag=!new] positioned as @s if block ~-1 ~ ~ minecraft:barrier positioned ~-2 ~ ~ unless entity @e[type=minecraft:marker,distance=..0.5,tag=24maze2] run summon minecraft:marker ~ ~ ~ {Tags:["24maze2","new"]}
execute as @e[type=minecraft:marker,tag=24maze2,tag=!new] positioned as @s if block ~1 ~ ~ minecraft:barrier positioned ~2 ~ ~ unless entity @e[type=minecraft:marker,distance=..0.5,tag=24maze2] run summon minecraft:marker ~ ~ ~ {Tags:["24maze2","new"]}
execute as @e[type=minecraft:marker,tag=24maze2,tag=!new] positioned as @s if block ~ ~ ~-1 minecraft:barrier positioned ~ ~ ~-2 unless entity @e[type=minecraft:marker,distance=..0.5,tag=24maze2] run summon minecraft:marker ~ ~ ~ {Tags:["24maze2","new"]}
execute as @e[type=minecraft:marker,tag=24maze2,tag=!new] positioned as @s if block ~ ~ ~1 minecraft:barrier positioned ~ ~ ~2 unless entity @e[type=minecraft:marker,distance=..0.5,tag=24maze2] run summon minecraft:marker ~ ~ ~ {Tags:["24maze2","new"]}

execute as @e[type=minecraft:marker,tag=24maze2,tag=new] run scoreboard players operation @s 24as = total= 24as
execute if score len= 24maze matches 0 positioned 25031 11 24982 if entity @e[type=minecraft:marker,distance=..3,tag=24maze2,tag=new] run scoreboard players operation len= 24maze = total= 24as
tag @e[type=minecraft:marker,tag=24maze2,tag=new] remove new

execute if score continue= 24maze matches 0 positioned 25041 11 24971 unless entity @e[type=minecraft:marker,distance=..1,tag=24maze2] run scoreboard players set valid= 24maze 1
execute if score continue= 24maze matches 1 run function games:24/maze/internal/check
#   Author        =   @ T4Bl3rUs
#   Description   =   Generates a new symetrical maze 
#   Called By     =   games:24/maze/create

setblock 25021 9 24972 minecraft:red_wool
fill 25029 9 24980 25033 9 24984 minecraft:red_wool replace minecraft:cyan_concrete
scoreboard players set count 24maze 0

#Spawwn markers to rotate the maze
kill @e[type=minecraft:marker,tag=24maze2]
#RING 1
summon minecraft:marker 25041 11 24992 {Tags:["24maze2"]}
summon minecraft:marker 25021 11 24992 {Tags:["24maze2"]}
summon minecraft:marker 25021 11 24972 {Tags:["24maze2"]}
summon minecraft:marker 25041 11 24972 {Tags:["24maze2"]}
scoreboard players add @e[type=minecraft:marker,tag=24maze2] 24as 1
summon minecraft:marker 25039 11 24992 {Tags:["24maze2"]}
summon minecraft:marker 25021 11 24990 {Tags:["24maze2"]}
summon minecraft:marker 25023 11 24972 {Tags:["24maze2"]}
summon minecraft:marker 25041 11 24974 {Tags:["24maze2"]}
scoreboard players add @e[type=minecraft:marker,tag=24maze2] 24as 1
summon minecraft:marker 25037 11 24992 {Tags:["24maze2"]}
summon minecraft:marker 25021 11 24988 {Tags:["24maze2"]}
summon minecraft:marker 25025 11 24972 {Tags:["24maze2"]}
summon minecraft:marker 25041 11 24976 {Tags:["24maze2"]}
scoreboard players add @e[type=minecraft:marker,tag=24maze2] 24as 1
summon minecraft:marker 25041 11 24978 {Tags:["24maze2"]}
summon minecraft:marker 25035 11 24992 {Tags:["24maze2"]}
summon minecraft:marker 25021 11 24986 {Tags:["24maze2"]}
summon minecraft:marker 25027 11 24972 {Tags:["24maze2"]}
scoreboard players add @e[type=minecraft:marker,tag=24maze2] 24as 1
summon minecraft:marker 25029 11 24972 {Tags:["24maze2"]}
summon minecraft:marker 25041 11 24980 {Tags:["24maze2"]}
summon minecraft:marker 25033 11 24992 {Tags:["24maze2"]}
summon minecraft:marker 25021 11 24984 {Tags:["24maze2"]}
scoreboard players add @e[type=minecraft:marker,tag=24maze2] 24as 1
summon minecraft:marker 25021 11 24982 {Tags:["24maze2"]}
summon minecraft:marker 25031 11 24972 {Tags:["24maze2"]}
summon minecraft:marker 25041 11 24982 {Tags:["24maze2"]}
summon minecraft:marker 25031 11 24992 {Tags:["24maze2"]}
scoreboard players add @e[type=minecraft:marker,tag=24maze2] 24as 1
summon minecraft:marker 25029 11 24992 {Tags:["24maze2"]}
summon minecraft:marker 25021 11 24980 {Tags:["24maze2"]}
summon minecraft:marker 25033 11 24972 {Tags:["24maze2"]}
summon minecraft:marker 25041 11 24984 {Tags:["24maze2"]}
scoreboard players add @e[type=minecraft:marker,tag=24maze2] 24as 1
summon minecraft:marker 25041 11 24986 {Tags:["24maze2"]}
summon minecraft:marker 25027 11 24992 {Tags:["24maze2"]}
summon minecraft:marker 25021 11 24978 {Tags:["24maze2"]}
summon minecraft:marker 25035 11 24972 {Tags:["24maze2"]}
scoreboard players add @e[type=minecraft:marker,tag=24maze2] 24as 1
summon minecraft:marker 25037 11 24972 {Tags:["24maze2"]}
summon minecraft:marker 25041 11 24988 {Tags:["24maze2"]}
summon minecraft:marker 25025 11 24992 {Tags:["24maze2"]}
summon minecraft:marker 25021 11 24976 {Tags:["24maze2"]}
scoreboard players add @e[type=minecraft:marker,tag=24maze2] 24as 1
summon minecraft:marker 25021 11 24974 {Tags:["24maze2"]}
summon minecraft:marker 25039 11 24972 {Tags:["24maze2"]}
summon minecraft:marker 25041 11 24990 {Tags:["24maze2"]}
summon minecraft:marker 25023 11 24992 {Tags:["24maze2"]}
scoreboard players add @e[type=minecraft:marker,tag=24maze2] 24as 1

#RING 2
summon minecraft:marker 25023 11 24990 {Tags:["24maze2"]}
summon minecraft:marker 25023 11 24974 {Tags:["24maze2"]}
summon minecraft:marker 25039 11 24974 {Tags:["24maze2"]}
summon minecraft:marker 25039 11 24990 {Tags:["24maze2"]}
scoreboard players add @e[type=minecraft:marker,tag=24maze2] 24as 1
summon minecraft:marker 25037 11 24990 {Tags:["24maze2"]}
summon minecraft:marker 25023 11 24988 {Tags:["24maze2"]}
summon minecraft:marker 25025 11 24974 {Tags:["24maze2"]}
summon minecraft:marker 25039 11 24976 {Tags:["24maze2"]}
scoreboard players add @e[type=minecraft:marker,tag=24maze2] 24as 1
summon minecraft:marker 25039 11 24978 {Tags:["24maze2"]}
summon minecraft:marker 25035 11 24990 {Tags:["24maze2"]}
summon minecraft:marker 25023 11 24986 {Tags:["24maze2"]}
summon minecraft:marker 25027 11 24974 {Tags:["24maze2"]}
scoreboard players add @e[type=minecraft:marker,tag=24maze2] 24as 1
summon minecraft:marker 25029 11 24974 {Tags:["24maze2"]}
summon minecraft:marker 25039 11 24980 {Tags:["24maze2"]}
summon minecraft:marker 25033 11 24990 {Tags:["24maze2"]}
summon minecraft:marker 25023 11 24984 {Tags:["24maze2"]}
scoreboard players add @e[type=minecraft:marker,tag=24maze2] 24as 1
summon minecraft:marker 25023 11 24982 {Tags:["24maze2"]}
summon minecraft:marker 25031 11 24974 {Tags:["24maze2"]}
summon minecraft:marker 25039 11 24982 {Tags:["24maze2"]}
summon minecraft:marker 25031 11 24990 {Tags:["24maze2"]}
scoreboard players add @e[type=minecraft:marker,tag=24maze2] 24as 1
summon minecraft:marker 25029 11 24990 {Tags:["24maze2"]}
summon minecraft:marker 25023 11 24980 {Tags:["24maze2"]}
summon minecraft:marker 25033 11 24974 {Tags:["24maze2"]}
summon minecraft:marker 25039 11 24984 {Tags:["24maze2"]}
scoreboard players add @e[type=minecraft:marker,tag=24maze2] 24as 1
summon minecraft:marker 25039 11 24986 {Tags:["24maze2"]}
summon minecraft:marker 25027 11 24990 {Tags:["24maze2"]}
summon minecraft:marker 25023 11 24978 {Tags:["24maze2"]}
summon minecraft:marker 25035 11 24974 {Tags:["24maze2"]}
scoreboard players add @e[type=minecraft:marker,tag=24maze2] 24as 1
summon minecraft:marker 25037 11 24974 {Tags:["24maze2"]}
summon minecraft:marker 25039 11 24988 {Tags:["24maze2"]}
summon minecraft:marker 25025 11 24990 {Tags:["24maze2"]}
summon minecraft:marker 25023 11 24976 {Tags:["24maze2"]}
scoreboard players add @e[type=minecraft:marker,tag=24maze2] 24as 1

#RING 3
summon minecraft:marker 25025 11 24976 {Tags:["24maze2"]}
summon minecraft:marker 25037 11 24976 {Tags:["24maze2"]}
summon minecraft:marker 25037 11 24988 {Tags:["24maze2"]}
summon minecraft:marker 25025 11 24988 {Tags:["24maze2"]}
scoreboard players add @e[type=minecraft:marker,tag=24maze2] 24as 1
summon minecraft:marker 25025 11 24986 {Tags:["24maze2"]}
summon minecraft:marker 25027 11 24976 {Tags:["24maze2"]}
summon minecraft:marker 25037 11 24978 {Tags:["24maze2"]}
summon minecraft:marker 25035 11 24988 {Tags:["24maze2"]}
scoreboard players add @e[type=minecraft:marker,tag=24maze2] 24as 1
summon minecraft:marker 25033 11 24988 {Tags:["24maze2"]}
summon minecraft:marker 25025 11 24984 {Tags:["24maze2"]}
summon minecraft:marker 25029 11 24976 {Tags:["24maze2"]}
summon minecraft:marker 25037 11 24980 {Tags:["24maze2"]}
scoreboard players add @e[type=minecraft:marker,tag=24maze2] 24as 1
summon minecraft:marker 25037 11 24982 {Tags:["24maze2"]}
summon minecraft:marker 25031 11 24988 {Tags:["24maze2"]}
summon minecraft:marker 25025 11 24982 {Tags:["24maze2"]}
summon minecraft:marker 25031 11 24976 {Tags:["24maze2"]}
scoreboard players add @e[type=minecraft:marker,tag=24maze2] 24as 1
summon minecraft:marker 25033 11 24976 {Tags:["24maze2"]}
summon minecraft:marker 25037 11 24984 {Tags:["24maze2"]}
summon minecraft:marker 25029 11 24988 {Tags:["24maze2"]}
summon minecraft:marker 25025 11 24980 {Tags:["24maze2"]}
scoreboard players add @e[type=minecraft:marker,tag=24maze2] 24as 1
summon minecraft:marker 25025 11 24978 {Tags:["24maze2"]}
summon minecraft:marker 25035 11 24976 {Tags:["24maze2"]}
summon minecraft:marker 25037 11 24986 {Tags:["24maze2"]}
summon minecraft:marker 25027 11 24988 {Tags:["24maze2"]}
scoreboard players add @e[type=minecraft:marker,tag=24maze2] 24as 1

#RING 4
summon minecraft:marker 25027 11 24986 {Tags:["24maze2"]}
summon minecraft:marker 25027 11 24978 {Tags:["24maze2"]}
summon minecraft:marker 25035 11 24978 {Tags:["24maze2"]}
summon minecraft:marker 25035 11 24986 {Tags:["24maze2"]}
scoreboard players add @e[type=minecraft:marker,tag=24maze2] 24as 1
summon minecraft:marker 25033 11 24986 {Tags:["24maze2"]}
summon minecraft:marker 25027 11 24984 {Tags:["24maze2"]}
summon minecraft:marker 25029 11 24978 {Tags:["24maze2"]}
summon minecraft:marker 25035 11 24980 {Tags:["24maze2"]}
scoreboard players add @e[type=minecraft:marker,tag=24maze2] 24as 1
summon minecraft:marker 25035 11 24982 {Tags:["24maze2"]}
summon minecraft:marker 25031 11 24986 {Tags:["24maze2"]}
summon minecraft:marker 25027 11 24982 {Tags:["24maze2"]}
summon minecraft:marker 25031 11 24978 {Tags:["24maze2"]}
scoreboard players add @e[type=minecraft:marker,tag=24maze2] 24as 1
summon minecraft:marker 25033 11 24978 {Tags:["24maze2"]}
summon minecraft:marker 25035 11 24984 {Tags:["24maze2"]}
summon minecraft:marker 25029 11 24986 {Tags:["24maze2"]}
summon minecraft:marker 25027 11 24980 {Tags:["24maze2"]}
scoreboard players add @e[type=minecraft:marker,tag=24maze2] 24as 1

#Generate the maze
fill 25041 11 24992 25021 11 24972 minecraft:cyan_concrete
fill 25041 12 24992 25021 12 24972 minecraft:terracotta
fill 25021 9 24972 25041 9 24992 minecraft:cyan_concrete replace minecraft:red_wool
fill 25021 9 24972 25041 9 24992 minecraft:cyan_concrete replace minecraft:blue_wool
fill 25029 9 24984 25033 9 24980 minecraft:red_wool replace minecraft:cyan_concrete
setblock 25031 9 24980 minecraft:cyan_concrete
setblock 25029 9 24982 minecraft:cyan_concrete
setblock 25031 9 24984 minecraft:cyan_concrete
setblock 25033 9 24982 minecraft:cyan_concrete
execute positioned 25021 9 24972 run function games:24/maze/internal/carve
function games:24/maze/internal/finish
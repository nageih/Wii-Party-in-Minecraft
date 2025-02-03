#   Author        =   @ JevinLevin
#   Description   =   Spawns 4 boats in very specific positions that stop players from being able to jump ontop of the holes
#   Called By     =   games:26/hole_roof


# Summons 4 boats adjacent to the top of the hole
summon minecraft:boat ~.8125 ~ ~.8125 {Type:"acacia",Rotation:[90.0f,0.0f],Tags:["26boat"],NoGravity:1b,Invulnerable:1b,Passengers:[{id:"minecraft:area_effect_cloud",Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["26boat"]},{id:"minecraft:area_effect_cloud",Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["26boat"]}]}
summon minecraft:boat ~-.8125 ~ ~.8125 {Type:"acacia",Rotation:[180.0f,0.0f],Tags:["26boat"],NoGravity:1b,Invulnerable:1b,Passengers:[{id:"minecraft:area_effect_cloud",Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["26boat"]},{id:"minecraft:area_effect_cloud",Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["26boat"]}]}
summon minecraft:boat ~-.8125 ~ ~-.8125 {Type:"acacia",Rotation:[-90.0f,0.0f],Tags:["26boat"],NoGravity:1b,Invulnerable:1b,Passengers:[{id:"minecraft:area_effect_cloud",Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["26boat"]},{id:"minecraft:area_effect_cloud",Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["26boat"]}]}
summon minecraft:boat ~.8125 ~ ~-.8125 {Type:"acacia",Rotation:[0.0f,0.0f],Tags:["26boat"],NoGravity:1b,Invulnerable:1b,Passengers:[{id:"minecraft:area_effect_cloud",Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["26boat"]},{id:"minecraft:area_effect_cloud",Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["26boat"]}]}

# Gives them no collision so they dont push players away, only prevent them
team join noCollision @e[type=minecraft:boat,tag=26boat]
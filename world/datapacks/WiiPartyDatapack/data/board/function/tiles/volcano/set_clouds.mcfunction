# Blue boosters
summon minecraft:area_effect_cloud -299 12 114 {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["volcanoTile"]}
summon minecraft:area_effect_cloud -265 15 -22 {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["volcanoTile"]}
summon minecraft:area_effect_cloud -129 7 37 {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["volcanoTile"]}
summon minecraft:area_effect_cloud -167 14 104 {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["volcanoTile"]}
summon minecraft:area_effect_cloud -206 20 -51 {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["volcanoTile"]}
summon minecraft:area_effect_cloud -179 20 -17 {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["volcanoTile"]}
summon minecraft:area_effect_cloud -103 17 73 {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["volcanoTile"]}
summon minecraft:area_effect_cloud -194 31 85 {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["volcanoTile"]}

# Red boosters
summon minecraft:area_effect_cloud -287 19 22 {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["volcanoTile"]}
summon minecraft:area_effect_cloud -120 7 44 {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["volcanoTile"]}
summon minecraft:area_effect_cloud -248 28 72 {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["volcanoTile"]}
#summon minecraft:area_effect_cloud -205 29 29 {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: ["volcanoTile"]}
summon minecraft:area_effect_cloud -145 20 -1 {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["volcanoTile"]}
summon minecraft:area_effect_cloud -160 25 97 {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["volcanoTile"]}
summon minecraft:area_effect_cloud -231 44 74 {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["volcanoTile"]}
summon minecraft:area_effect_cloud -196 57 47 {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["volcanoTile"]}

# Tornado
#summon minecraft:area_effect_cloud -215 11 5 {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: ["volcanoTile"]}
summon minecraft:area_effect_cloud -200 25 -18 {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["volcanoTile"]}
summon minecraft:area_effect_cloud -136 17 97 {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["volcanoTile"]}
summon minecraft:area_effect_cloud -225 54 39 {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["volcanoTile"]}
# UFO
summon minecraft:area_effect_cloud -243 12 -34 {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["volcanoTile"]}
summon minecraft:area_effect_cloud -258 25 78 {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["volcanoTile"]}
summon minecraft:area_effect_cloud -195 27 12 {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["volcanoTile"]}
summon minecraft:area_effect_cloud -129 13 97 {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["volcanoTile"]}
summon minecraft:area_effect_cloud -198 57 41 {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["volcanoTile"]}

# 1v3
summon minecraft:area_effect_cloud -150 10 39 {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["volcanoTile"]}
#summon minecraft:area_effect_cloud -232 33 59 {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: ["volcanoTile"]}
summon minecraft:area_effect_cloud -183 27 91 {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["volcanoTile"]}
# 1v1
summon minecraft:area_effect_cloud -259 25 99 {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["volcanoTile"]}
summon minecraft:area_effect_cloud -190 20 -32 {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["volcanoTile"]}
summon minecraft:area_effect_cloud -113 13 92 {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["volcanoTile"]}

# Blue Yeeter
summon minecraft:area_effect_cloud -259 15 -11 {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["volcanoTile"]}
summon minecraft:area_effect_cloud -263 14 -33 {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["volcanoTile"]}

# Red Yeeter
summon minecraft:area_effect_cloud -263 25 87 {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["volcanoTile"]}

# Dinosaur
summon minecraft:area_effect_cloud -186 23 118 {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["volcanoTile"]}
summon minecraft:area_effect_cloud -108 20 26 {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["volcanoTile"]}

# Skull
summon minecraft:area_effect_cloud -199 26 112 {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["volcanoTile"]}
summon minecraft:area_effect_cloud -231 53 49 {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["volcanoTile"]}

# Volcano
summon minecraft:area_effect_cloud -244 25 106 {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["volcanoTile"]}

execute as @e[type=minecraft:area_effect_cloud,tag=volcanoTile] at @s run tp @s ~1 ~ ~1

scoreboard players set order= tiles 1
execute as @e[type=minecraft:area_effect_cloud,tag=volcanoTile,sort=random] run function board:tiles/volcano/random_order
#   Author        =   @ T4Bl3rUs
#   Description   =   Runs when the player right clicks
#   Called By     =   games:27/player



summon minecraft:area_effect_cloud ~ ~ ~ {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["raycast","game27"]}
tp @e[type=minecraft:area_effect_cloud,tag=game27] @s
tp @e[type=minecraft:area_effect_cloud,tag=game27] ~ ~1.5 ~
execute as @e[type=minecraft:area_effect_cloud,tag=game27] at @s run function games:27/raytracing/step
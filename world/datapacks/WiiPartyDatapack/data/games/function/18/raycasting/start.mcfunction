summon minecraft:area_effect_cloud ~ ~ ~ {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["raycast","game18"]}
tp @e[type=minecraft:area_effect_cloud,tag=game18] @s
execute at @s anchored eyes run tp @e[type=minecraft:area_effect_cloud,tag=game18] ^ ^ ^ ~ ~
execute as @e[type=minecraft:area_effect_cloud,tag=game18] at @s run function games:18/raycasting/step
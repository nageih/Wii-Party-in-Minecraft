data modify storage minecraft:game18 sums.temp2 set from entity @s ArmorItems[3].components."minecraft:custom_data".Data.Size[0]
data modify entity @s ArmorItems[3].components."minecraft:custom_data".Data.Size[0] set from entity @s ArmorItems[3].components."minecraft:custom_data".Data.Size[1]
data modify entity @s ArmorItems[3].components."minecraft:custom_data".Data.Size[1] set from storage minecraft:game18 sums.temp2

data modify storage minecraft:game18 sums.temp2 set from entity @s ArmorItems[3].components."minecraft:custom_data".Data.Offset[0]
data modify entity @s ArmorItems[3].components."minecraft:custom_data".Data.Offset[0] set from entity @s ArmorItems[3].components."minecraft:custom_data".Data.Offset[1]
data modify entity @s ArmorItems[3].components."minecraft:custom_data".Data.Offset[1] set from storage minecraft:game18 sums.temp2

execute at @s run tp @s ~ ~ ~ ~90 ~

execute if entity @s[y_rotation=0] run data modify entity @s ArmorItems[3].components."minecraft:custom_data".Data.Array set from entity @s ArmorItems[3].components."minecraft:custom_data".Data.Arrays[0]
execute if entity @s[y_rotation=90] run data modify entity @s ArmorItems[3].components."minecraft:custom_data".Data.Array set from entity @s ArmorItems[3].components."minecraft:custom_data".Data.Arrays[1]
execute if entity @s[y_rotation=180] run data modify entity @s ArmorItems[3].components."minecraft:custom_data".Data.Array set from entity @s ArmorItems[3].components."minecraft:custom_data".Data.Arrays[2]
execute if entity @s[y_rotation=270] run data modify entity @s ArmorItems[3].components."minecraft:custom_data".Data.Array set from entity @s ArmorItems[3].components."minecraft:custom_data".Data.Arrays[3]
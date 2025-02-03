function board:dice_roll/all_tile_clouds
execute at @e[type=minecraft:area_effect_cloud,tag=tileCloud] run fill ~23 ~5 ~23 ~-23 ~-9 ~-22 minecraft:barrier replace minecraft:void_air
kill @e[type=minecraft:area_effect_cloud,tag=tileCloud]
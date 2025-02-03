
# Fills the barriers back in
execute at @e[type=minecraft:area_effect_cloud,tag=volcanoTile] run fill ~-21 ~-8 ~-21 ~21 ~8 ~21 minecraft:barrier replace minecraft:structure_void
execute at @e[type=minecraft:area_effect_cloud,tag=volcanoBoostEnd] run fill ~-21 ~-8 ~-21 ~21 ~8 ~21 minecraft:barrier replace minecraft:structure_void

# Kills the entities used
kill @e[type=minecraft:area_effect_cloud,tag=volcanoTile]
kill @e[type=minecraft:area_effect_cloud,tag=volcanoBoostEnd]
kill @e[type=minecraft:area_effect_cloud,tag=volcanoFake]
tp @e[type=minecraft:turtle,tag=boostStand] ~ -70 ~
kill @e[type=minecraft:turtle,tag=boostStand]

# Resets scores
scoreboard players reset volcanoBoostTimer= tiles
scoreboard players reset volcanoTotal= tiles
scoreboard players reset yPos= tiles
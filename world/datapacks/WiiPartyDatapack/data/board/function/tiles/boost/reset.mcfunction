# Fills the barriers back in
execute at @e[type=area_effect_cloud,tag=boostStart] run fill ~-21 ~-8 ~-21 ~21 ~8 ~21 barrier replace structure_void
execute at @e[type=area_effect_cloud,tag=boostEnd] run fill ~-21 ~-8 ~-21 ~21 ~8 ~21 barrier replace structure_void

# Kills the entities used
kill @e[type=area_effect_cloud,tag=boostAEC]
tp @e[type=turtle,tag=boostStand] ~ -70 ~
kill @e[type=turtle,tag=boostStand]
tp @e[type=shulker,tag=boostSpring] ~ -70 ~
kill @e[type=shulker,tag=boostSpring]

# Resets scores
scoreboard players reset boostTimer= tiles
scoreboard players reset yeetTimer= tiles
scoreboard players reset boostType= tiles
scoreboard players reset boostYeet= tiles

schedule clear board:tiles/boost/end_context
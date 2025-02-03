

execute at @e[type=area_effect_cloud,tag=dinoEndPoint] run fill ~23 ~5 ~23 ~-23 ~-9 ~-22 barrier replace void_air
execute at @e[type=area_effect_cloud,tag=dinoOrigin] run fill ~23 ~5 ~23 ~-23 ~-9 ~-22 barrier replace void_air

# Resets scores
scoreboard players reset dino= tiles
scoreboard players reset roll= tiles
scoreboard players reset good= tiles
scoreboard players reset bad= tiles
scoreboard players reset dinoTimer= tiles
scoreboard players reset originalTile= tiles

# Kills all entities
kill @e[type=area_effect_cloud,tag=dinoOrigin]
kill @e[type=area_effect_cloud,tag=dinoEndPoint]
kill @e[tag=dino]
kill @e[tag=dinoposition]


schedule clear board:tiles/dino/start_roll
schedule clear board:tiles/dino/good/start
schedule clear board:tiles/dino/bad/start
schedule clear board:tiles/dino/intro
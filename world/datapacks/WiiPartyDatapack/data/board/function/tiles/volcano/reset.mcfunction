# Resets scores
scoreboard players reset volcano= tiles
scoreboard players reset volcanoTimer= tiles
scoreboard players reset errupt= tiles
scoreboard players reset order= tiles
scoreboard players reset yOffset= tiles
scoreboard players reset xOffset= tiles
scoreboard players reset volcanoOrder= tiles
scoreboard players reset volcanoTotal= tiles
scoreboard players reset volcanoBackup= tiles

# Kills all entities
kill @e[type=minecraft:area_effect_cloud,tag=volcanoTile]
kill @e[tag=meteor]

schedule clear board:tiles/volcano/set_normal 
schedule clear board:dice_roll/new_go 
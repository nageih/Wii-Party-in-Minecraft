# Removes tags
tag @a remove chosen 
tag @a remove tornado1
tag @a remove tornado2
tag @a remove tornado3
tag @a remove tornadoBoth

# Resets scores
scoreboard players reset tornado= tiles
scoreboard players reset roll= tiles
scoreboard players reset tornadoTotal= tiles
scoreboard players reset tornadoTimer= tiles
scoreboard players reset soundTimer= tiles
scoreboard players reset players= tiles
scoreboard players reset temp= boardPos
scoreboard players reset increase= tiles
scoreboard players reset originalTile= tiles
scoreboard players reset newTile= tiles
scoreboard players reset addResult= tiles
scoreboard players set eventRoll= tiles 0

# Puts the barriers back around the tile
execute at @e[type=area_effect_cloud,tag=newPoint] run fill ~23 ~5 ~23 ~-23 ~-9 ~-22 barrier replace void_air
execute at @e[type=area_effect_cloud,tag=tileCloud] run fill ~23 ~5 ~23 ~-23 ~-9 ~-22 barrier replace void_air

# Kills all entities
kill @e[type=area_effect_cloud,tag=newPoint]
kill @e[type=area_effect_cloud,tag=tornadoTp]

schedule clear board:tiles/tornado/start_roll
schedule clear board:tiles/tornado/end
schedule clear board:tiles/tornado/intro
schedule clear board:tiles/tornado/less_than_3
schedule clear board:tiles/tornado/no_players
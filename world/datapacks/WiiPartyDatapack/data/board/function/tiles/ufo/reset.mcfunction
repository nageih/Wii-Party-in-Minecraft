# Removes tags
tag @a remove chosen 
tag @a remove UFO1
tag @a remove UFO2
tag @a remove UFO3
tag @a remove onGround

# Resets scores
scoreboard players reset ufo= tiles
scoreboard players reset roll= tiles
scoreboard players reset ufotimer= tiles
scoreboard players reset players= tiles
scoreboard players reset temp= boardPos

# Gets rid of the barriers around the tile
execute at @e[type=area_effect_cloud,tag=ufoOrigin] run fill ~1 ~ ~1 ~-1 ~20 ~-1 air replace barrier
execute at @e[type=area_effect_cloud,tag=ufoEndPoint] run fill ~1 ~ ~1 ~-1 ~20 ~-1 air replace barrier
execute at @e[type=area_effect_cloud,tag=tileCloud] run fill ~23 ~5 ~23 ~-23 ~-9 ~-22 barrier replace void_air

# Kills all entities
kill @e[tag=ufoBoat]
kill @e[type=area_effect_cloud,tag=ufoOrigin]
kill @e[type=area_effect_cloud,tag=ufoEndPoint]
kill @e[type=item_display,tag=ufo]
kill @e[type=marker,tag=ufo]
kill @e[type=area_effect_cloud,tag=tileCloud]

schedule clear board:tiles/ufo/start_roll 
schedule clear board:tiles/ufo/end
schedule clear board:tiles/ufo/intro
schedule clear board:tiles/ufo/less_than_3
schedule clear board:tiles/ufo/no_players
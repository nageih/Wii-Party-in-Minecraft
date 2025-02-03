# Resets the two tile scores used for the segment
scoreboard players reset skull= tiles
scoreboard players reset skullTimer= tiles

# Removes the forceload that was added to the skull tile
execute at @e[type=area_effect_cloud,tag=skullStart] run forceload remove ~ ~ ~ ~

# Removes the onGround tags from the player
tag @a remove onGround 
tag @a remove onGround2

# Kills the entities that were used
    # AEC at the tile the player lands at
    kill @e[type=area_effect_cloud,tag=skullStart]
    # Boat that forces the player to crawl
    kill @e[tag=skullBoat]

# Gets rid of the players slowness
effect clear @a[tag=turn] slowness




forceload remove -198 113
forceload remove -230 50
forceload remove -220 51

# Resets the scores used for the segment
scoreboard players reset shout= tiles
scoreboard players reset shoutTimer= tiles

# Removes the forceload around the tile
execute at @e[type=area_effect_cloud,tag=skullStart] run forceload remove ~ ~ ~ ~

# Kills the AECs spawned at the start and end tile
kill @e[type=area_effect_cloud,tag=shoutStart]
kill @e[type=area_effect_cloud,tag=shoutEnd]
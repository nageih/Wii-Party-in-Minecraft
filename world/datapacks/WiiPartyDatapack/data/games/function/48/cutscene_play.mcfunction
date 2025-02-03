# TELEPORT DISPLAY
scoreboard players operation tpdistance= 48scores = distance= 48scores
# Scale distance
scoreboard players operation tpdistance= 48scores *= 100 Numbers
# Divide by time
# Time = 9 seconds 
# Ticks = 9x20 (180)
scoreboard players operation tpdistance= 48scores /= 180 Numbers


execute store result storage game48 distance double 0.01 run scoreboard players get tpdistance= 48scores

function games:48/tp_distance with storage game48
#
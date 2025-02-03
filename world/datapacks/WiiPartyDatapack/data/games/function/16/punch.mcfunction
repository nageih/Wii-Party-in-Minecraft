tag @s remove 16charged

clear @s

playsound minecraft:entity.wind_charge.wind_burst master @s ~ ~ ~ 1 1

# Check if hitting player from front
scoreboard players set maxDelta= 16scores 120
scoreboard players operation halfDelta= 16scores = maxDelta= 16scores
scoreboard players operation halfDelta= 16scores /= 2 Numbers


execute at @s anchored eyes positioned ^ ^ ^ anchored feet rotated ~ 0 if function games:16/check_hit anchored eyes run function games:16/spawn_arrow

tag @s remove 16charging
tag @s remove 16charged
scoreboard players reset @s 16charge

playsound minecraft:entity.wind_charge.wind_burst master @s ~ ~ ~ 1 1

# clear @s
# function games:16/punch_replace

# Check if hitting player from front
scoreboard players set maxDelta= 16scores 100
scoreboard players operation halfDelta= 16scores = maxDelta= 16scores
scoreboard players operation halfDelta= 16scores /= 2 Numbers


execute at @s anchored eyes positioned ^ ^ ^ anchored feet rotated ~ 0 if function games:16/check_hit anchored eyes run function games:16/spawn_arrow

scoreboard players set @s 16cooldown 5

attribute @s generic.attack_speed base set 0.125
scoreboard players set @s 16punchtimer 3
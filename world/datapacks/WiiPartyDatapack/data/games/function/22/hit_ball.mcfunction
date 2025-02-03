# Summons area effect cloud offset of 0.0 0.0 0.0 to be set as the new motion for the slime (shootfacing)
execute positioned 0.0 0 0.0 run summon minecraft:area_effect_cloud ^ ^ ^3.5 {Age:-2147483648,Duration:1,WaitTime:-2147483648,Tags:["temp"]}

# Runs the ball_hit function as the ball that has been punched
execute as @e[type=minecraft:slime,tag=ball,sort=nearest,limit=1,nbt={HurtTime:10s}] run function games:22/ball_hit

# Kills the offset area effect cloud as its no longer needed
kill @e[type=minecraft:area_effect_cloud,tag=temp,limit=1]

# Summons crit particles infront of the player to give the punch effect better
execute anchored eyes run particle minecraft:crit ^ ^ ^1 0.8 0.8 0.8 0.05 30 normal

effect give @s weakness infinite 255 true

# Calculate motion vector
execute positioned 0.0 0 0.0 rotated as @p[tag=16attacker] rotated ~ 0 run summon marker ^ ^ ^1 {Tags:["direction"]}
execute store result score $x player_motion.api.launch run data get entity @e[type=marker,tag=direction,limit=1] Pos[0] 50000
scoreboard players set $y player_motion.api.launch 12000
execute store result score $z player_motion.api.launch run data get entity @e[type=marker,tag=direction,limit=1] Pos[2] 50000
kill @e[tag=direction]

function player_motion:api/launch_xyz


playsound minecraft:item.shield.break master @a ~ ~ ~ 1 0.75
playsound minecraft:item.trident.hit_ground master @a ~ ~ ~ 3 0.75

title @s times 0 5 20
title @s title {"text":"c","font":"minecraft:fade"}
title @s subtitle {"text":"","type":"text"}
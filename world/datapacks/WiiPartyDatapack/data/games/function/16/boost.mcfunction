# Calculate motion vector
execute positioned 0.0 0 0.0 rotated ~ 0 run summon marker ^ ^ ^1 {Tags:["direction"]}
execute store result score $x player_motion.api.launch run data get entity @e[type=marker,tag=direction,limit=1] Pos[0] 10000
scoreboard players set $y player_motion.api.launch 3500
execute store result score $z player_motion.api.launch run data get entity @e[type=marker,tag=direction,limit=1] Pos[2] 10000
kill @e[tag=direction]

function player_motion:api/launch_xyz

scoreboard players set @s 16boost 20
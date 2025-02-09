tag @s add 35cur
scoreboard players operation cur= 35step = @s 35step
execute as @e[type=marker,tag=35step] if score @s 35step = cur= 35step run tag @s add 35cur
execute as @e[type=marker,tag=35cur] store result storage game35 step.x double 1 run data get entity @s Pos[0]
execute as @e[type=marker,tag=35cur] store result storage game35 step.y double 1 run data get entity @s Pos[1]
execute as @e[type=marker,tag=35cur] store result storage game35 step.z double 1 run random value -1..1
function games:35/step_tp_auto with storage game35 step

tag @s remove 35cur
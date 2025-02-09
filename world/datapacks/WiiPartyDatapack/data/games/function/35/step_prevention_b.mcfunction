scoreboard players operation cur= 35step = @s 35step
scoreboard players operation prev= 35step = cur= 35step
scoreboard players remove prev= 35step 1
execute store result storage game35 step.x double 1 as @e[type=marker,tag=35step] if score @s 35step = prev= 35step run tag @s add 35prev
execute store result storage game35 step.x double 1 as @e[type=marker,tag=35step] if score @s 35step = cur= 35step run data get entity @s Pos[0]
execute at @e[tag=35prev] positioned ~-1 ~-20 ~-20 as @a[tag=ingame,tag=!35move,dx=-50,dy=40,dz=40] if score @s 35step >= cur= 35step at @s run function games:35/step_tp with storage game35 step

tag @e remove 35prev
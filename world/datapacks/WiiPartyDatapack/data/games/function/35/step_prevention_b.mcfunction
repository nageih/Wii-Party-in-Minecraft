scoreboard players operation cur= 35step = @s 35step
execute store result storage game35 step.x double 1 run data get entity @s Pos[0]
execute positioned ~0.5 ~1 ~-20 as @a[tag=ingame,dz=40,dx=-50,dy=20] if score @s 35step > cur= 35step at @s run function games:35/step_tp with storage game35 step

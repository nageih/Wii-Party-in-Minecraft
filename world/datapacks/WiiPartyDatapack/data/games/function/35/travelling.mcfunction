scoreboard players operation cur= 35step = @s 35step

execute positioned ~-1 ~-3 ~-20 as @a[tag=ingame,tag=35move,dx=1,dy=10,dz=40] if score @s 35step = cur= 35step run function games:35/travel_reach
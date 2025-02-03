scoreboard players operation tempDir= 4scores = @s 4direction
tag @s add tempPlayer

execute positioned ~-0.5 ~ ~-0.5 as @a[tag=!tempPlayer,tag=!4hit,tag=!4dead,tag=ingame,dx=0,dy=0,dz=0] unless score @s 4direction = tempDir= 4scores run tag @s add 4collide
execute positioned ~-0.5 ~ ~-0.5 as @a[tag=!tempPlayer,tag=!4hit,tag=!4dead,tag=ingame,dx=0,dy=0,dz=0] if score @s 4direction = tempDir= 4scores run tag @s add 4collideBoth

tag @s remove tempPlayer
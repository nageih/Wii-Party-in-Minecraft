# Particles at the stormy clouds
execute at @e[type=minecraft:area_effect_cloud,tag=cloud,tag=1badCloud] run particle minecraft:large_smoke ~ ~ ~ 1.5 1 1 0.001 10 force

# Teleports the players towards the centre of the platform if there are in a position where they wouldnt falling
    # Its a bit of a fucking mess, im sure some of it could be shortened but basically it checks which side the player is on, and then if they arent in a position where they can fall.
    # If so, it runs as the closest area effect cloud with the sidecheck tag. It then checks if that area effect cloud is on the blue or red side.
    # If its closer to that area effect cloud than the other one, it executes as the player again and tps the player one block forward towards the centre of the platform (what a mess)
execute if score level= 1scores matches 1 if score falling= 1scores matches 1 as @a[x=1000,y=241,z=994,dx=8,dy=300,dz=5.5,tag=ingame,tag=!dead] at @s unless entity @s[x=1001.75,y=0,z=995.75,dx=4.5,dy=300,dz=2.5] as @e[type=minecraft:area_effect_cloud,tag=sidecheck,sort=nearest,limit=1] if entity @s[tag=redside] as @a[sort=nearest,limit=1] facing 1004 ~ 997 run tp @s ^ ^ ^1
execute if score level= 1scores matches 1 if score falling= 1scores matches 1 as @a[x=1000,y=241,z=1006,dx=8,dy=300,dz=-5.5,tag=ingame,tag=!dead] at @s unless entity @s[x=1001.75,y=0,z=1001.75,dx=4.5,dy=300,dz=2.5] as @e[type=minecraft:area_effect_cloud,tag=sidecheck,sort=nearest,limit=1] if entity @s[tag=blueside] as @a[sort=nearest,limit=1] facing 1004 ~ 1003 run tp @s ^ ^ ^1
execute if score level= 1scores matches 2 if score falling= 1scores matches 1 as @a[x=1000,y=192,z=994,dx=8,dy=300,dz=5.5,tag=ingame,tag=!dead] at @s unless entity @s[x=1001.75,y=0,z=995.75,dx=4.5,dy=300,dz=2.5] as @e[type=minecraft:area_effect_cloud,tag=sidecheck,sort=nearest,limit=1] if entity @s[tag=redside] as @a[sort=nearest,limit=1] facing 1004 ~ 997 run tp @s ^ ^ ^1
execute if score level= 1scores matches 2 if score falling= 1scores matches 1 as @a[x=1000,y=192,z=1006,dx=8,dy=300,dz=-5.5,tag=ingame,tag=!dead] at @s unless entity @s[x=1001.75,y=0,z=1001.75,dx=4.5,dy=300,dz=2.5] as @e[type=minecraft:area_effect_cloud,tag=sidecheck,sort=nearest,limit=1] if entity @s[tag=blueside] as @a[sort=nearest,limit=1] facing 1004 ~ 1003 run tp @s ^ ^ ^1
execute if score level= 1scores matches 3 if score falling= 1scores matches 1 as @a[x=1000,y=147,z=994,dx=8,dy=300,dz=5.5,tag=ingame,tag=!dead] at @s unless entity @s[x=1001.75,y=0,z=995.75,dx=4.5,dy=300,dz=2.5] as @e[type=minecraft:area_effect_cloud,tag=sidecheck,sort=nearest,limit=1] if entity @s[tag=redside] as @a[sort=nearest,limit=1] facing 1004 ~ 997 run tp @s ^ ^ ^1
execute if score level= 1scores matches 3 if score falling= 1scores matches 1 as @a[x=1000,y=147,z=1006,dx=8,dy=300,dz=-5.5,tag=ingame,tag=!dead] at @s unless entity @s[x=1001.75,y=0,z=1001.75,dx=4.5,dy=300,dz=2.5] as @e[type=minecraft:area_effect_cloud,tag=sidecheck,sort=nearest,limit=1] if entity @s[tag=blueside] as @a[sort=nearest,limit=1] facing 1004 ~ 1003 run tp @s ^ ^ ^1

# Runs during the countdown, uses the method similar to the chunk of code that makes sure the player falls and will display an actionbar title saying what side they are on
    # Red side
execute if score countdown= 1scores matches 1 as @a[x=1000,y=0,z=994,dx=8,dy=300,dz=5.5,tag=ingame,tag=!dead] at @s as @e[type=minecraft:area_effect_cloud,tag=sidecheck,sort=nearest,limit=1] if entity @s[tag=redside] as @a[sort=nearest,limit=1] run title @s actionbar {"nbt":"colors.base","storage":"minecraft:config","interpret":true,"extra":[{"translate":"game.DiceyDescent.OnSide","with":[{"nbt":"colors.red","storage":"minecraft:config","interpret":true,"extra":[{"translate":"generic.RedCap","bold":true}],"source":"storage","type":"nbt"}]}],"source":"storage","type":"nbt"}
    # Blue side
execute if score countdown= 1scores matches 1 as @a[x=1000,y=0,z=1006,dx=8,dy=300,dz=-5.5,tag=ingame,tag=!dead] at @s as @e[type=minecraft:area_effect_cloud,tag=sidecheck,sort=nearest,limit=1] if entity @s[tag=blueside] as @a[sort=nearest,limit=1] run title @s actionbar {"nbt":"colors.base","storage":"minecraft:config","interpret":true,"extra":[{"translate":"game.DiceyDescent.OnSide","with":[{"nbt":"colors.blue","storage":"minecraft:config","interpret":true,"extra":[{"translate":"generic.BlueCap","bold":true}],"source":"storage","type":"nbt"}]}],"source":"storage","type":"nbt"}

# Runs at the position of the bad clouds positioned in the corner, and checks if the player hits it. If so it gives them a tag
execute at @e[type=minecraft:area_effect_cloud,tag=cloud,tag=1badCloud] align xz positioned ~-3 ~ ~-2 as @a[dx=6,dy=2,dz=4,tag=ingame,tag=!1beenDamaged,tag=!dead] run tag @s add 1damaged

# It then runs a function as that player with the tag every tick for the animation of them getting shocked
execute as @a[tag=ingame,tag=1damaged,tag=!dead] at @s run function games:1/damage

function general:spectator/main
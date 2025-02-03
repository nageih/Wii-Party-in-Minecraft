fill -211 26 125 -211 26 120 air replace barrier

#ribcage event
execute if score ribcage= tiles matches 1 if score ribcageResult= tiles matches 1 as @a[x=-218,y=25,z=117,dx=2,dy=4,dz=4,tag=turn] at @s run function board:tiles/ribcage/fail
execute if score ribcage= tiles matches 1 if score ribcageResult= tiles matches 2 as @a[x=-218,y=25,z=123,dx=2,dy=4,dz=4,tag=turn] at @s run function board:tiles/ribcage/fail

execute if score ribcage= tiles matches 1 if score ribcageResult= tiles matches 1 as @a[x=-218,y=25,z=123,dx=2,dy=4,dz=4,tag=turn] at @s run function board:tiles/ribcage/success
execute if score ribcage= tiles matches 1 if score ribcageResult= tiles matches 2 as @a[x=-218,y=25,z=117,dx=2,dy=4,dz=4,tag=turn] at @s run function board:tiles/ribcage/success
#execute if score ribcage= tiles matches 1 as @a[x=-226,y=25,z=120,dx=1,dy=4,dz=4,tag=turn] at @s run function board:tiles/ribcage/success

execute if score ribcage= tiles matches 2 run function board:tiles/ribcage/clones
execute if score ribcage= tiles matches 2 run scoreboard players add 3stage tiles 1

execute if score ribcage= tiles matches 3 run function board:tiles/ribcage/clones2
execute if score ribcage= tiles matches 3 run scoreboard players add 3stage tiles 1
advancement revoke @s only lobby:graph_back_l
advancement revoke @s only lobby:graph_back_r

tp @s -568 11 557 90 0

playsound entity.enderman.teleport master @s -568 11 557

execute unless entity @a[x=-570,y=25,z=552,dx=5,dy=2,dz=10] run tp @e[type=text_display,tag=graphBack] -570 0 552
#1
execute if score 3stage tiles matches 16 run clone -1006 11 -1002 -979 24 -975 -233 24 108
execute if score 3stage tiles matches 16 run function board:tiles/ribcage/reset

#2
execute if score 3stage tiles matches 13 run clone -1006 11 -1031 -979 24 -1004 -233 24 108

#3
execute if score 3stage tiles matches 10 run clone -1006 11 -1060 -979 24 -1033 -233 24 108

#4
execute if score 3stage tiles matches 7 run clone -1006 11 -1089 -979 24 -1062 -233 24 108

#5
execute if score 3stage tiles matches 4 run gamemode spectator @a[tag=turn]
execute if score 3stage tiles matches 4 run clone -1006 11 -1118 -979 24 -1091 -233 24 108

#6
execute if score 3stage tiles matches 1 run clone -1006 11 -1147 -979 24 -1120 -233 24 108
execute if score 3stage tiles matches 1 run playsound minecraft:entity.skeleton.death master @a -216 28 122 100 0.7
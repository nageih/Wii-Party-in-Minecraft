#1
execute if score 3stage tiles matches 1 run clone -1006 11 -1002 -979 24 -975 -233 24 108
execute if score 3stage tiles matches 1 run particle poof -216 28 122 5 5 5 0.1 300 force
execute if score 3stage tiles matches 1 run playsound minecraft:entity.zombie.break_wooden_door master @a -216 28 122 100 0.7

#2
execute if score 3stage tiles matches 2 run clone -1006 11 -1031 -979 24 -1004 -233 24 108
execute if score 3stage tiles matches 2 run particle poof -216 28 122 5 5 5 0.1 300 force

#3
execute if score 3stage tiles matches 3 run clone -1006 11 -1060 -979 24 -1033 -233 24 108
execute if score 3stage tiles matches 3 run particle poof -216 28 122 5 5 5 0.1 300 force

#4
execute if score 3stage tiles matches 4 run clone -1006 11 -1089 -979 24 -1062 -233 24 108
execute if score 3stage tiles matches 4 run particle poof -216 28 122 5 5 5 0.1 300 force

#5
execute if score 3stage tiles matches 5 run gamemode spectator @a[tag=turn]
execute if score 3stage tiles matches 5 run clone -1006 11 -1118 -979 24 -1091 -233 24 108
execute if score 3stage tiles matches 5 run particle poof -216 28 122 5 5 5 0.1 300 force

#6
execute if score 3stage tiles matches 6 run clone -1006 11 -1147 -979 24 -1120 -233 24 108
execute if score 3stage tiles matches 6 run particle poof -216 28 122 5 5 5 0.1 300 force

execute if score 3stage tiles matches 26 run schedule function board:dice_roll/end_go 20t
execute if score 3stage tiles matches 26 run schedule function board:tiles/ribcage/reset 20t
execute if score 3stage tiles matches 26 run scoreboard players set ribcage= tiles 3
execute if score 3stage tiles matches 26 run scoreboard players set 3stage tiles 0
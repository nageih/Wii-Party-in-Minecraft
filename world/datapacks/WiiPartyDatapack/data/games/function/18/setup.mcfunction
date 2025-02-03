tag @e[type=minecraft:armor_stand,tag=game18,tag=piece_1] remove piece_1_1
tag @e[type=minecraft:armor_stand,tag=game18,tag=piece_2] remove piece_1_2
tag @e[type=minecraft:armor_stand,tag=game18,tag=piece_3] remove piece_1_3
tag @e[type=minecraft:armor_stand,tag=game18,tag=piece_4] remove piece_1_4
tag @e[type=minecraft:armor_stand,tag=game18,tag=piece_5] remove piece_1_5
tag @e[type=minecraft:armor_stand,tag=game18,tag=piece_6] remove piece_1_6

tag @e[type=minecraft:armor_stand,tag=game18,tag=piece_1] remove piece_2_1
tag @e[type=minecraft:armor_stand,tag=game18,tag=piece_2] remove piece_2_2
tag @e[type=minecraft:armor_stand,tag=game18,tag=piece_3] remove piece_2_3
tag @e[type=minecraft:armor_stand,tag=game18,tag=piece_4] remove piece_2_4
tag @e[type=minecraft:armor_stand,tag=game18,tag=piece_5] remove piece_2_5
tag @e[type=minecraft:armor_stand,tag=game18,tag=piece_6] remove piece_2_6

tag @e[type=minecraft:armor_stand,tag=game18,tag=piece_1] remove piece_3_1
tag @e[type=minecraft:armor_stand,tag=game18,tag=piece_2] remove piece_3_2
tag @e[type=minecraft:armor_stand,tag=game18,tag=piece_3] remove piece_3_3
tag @e[type=minecraft:armor_stand,tag=game18,tag=piece_4] remove piece_3_4
tag @e[type=minecraft:armor_stand,tag=game18,tag=piece_5] remove piece_3_5
tag @e[type=minecraft:armor_stand,tag=game18,tag=piece_6] remove piece_3_6

tag @e[type=minecraft:armor_stand,tag=game18,tag=piece_1] remove piece_4_1
tag @e[type=minecraft:armor_stand,tag=game18,tag=piece_2] remove piece_4_2
tag @e[type=minecraft:armor_stand,tag=game18,tag=piece_3] remove piece_4_3
tag @e[type=minecraft:armor_stand,tag=game18,tag=piece_4] remove piece_4_4
tag @e[type=minecraft:armor_stand,tag=game18,tag=piece_5] remove piece_4_5
tag @e[type=minecraft:armor_stand,tag=game18,tag=piece_6] remove piece_4_6

tag @e[type=minecraft:armor_stand,tag=game18,tag=piece_1] remove piece_5_1
tag @e[type=minecraft:armor_stand,tag=game18,tag=piece_2] remove piece_5_2
tag @e[type=minecraft:armor_stand,tag=game18,tag=piece_3] remove piece_5_3
tag @e[type=minecraft:armor_stand,tag=game18,tag=piece_4] remove piece_5_4
tag @e[type=minecraft:armor_stand,tag=game18,tag=piece_5] remove piece_5_5
tag @e[type=minecraft:armor_stand,tag=game18,tag=piece_6] remove piece_5_6

execute store result score random= 18scores run loot spawn ~ -70 ~ loot games:18puzzle

# execute if score random= 18scores matches 1 run say 1
# execute if score random= 18scores matches 2 run say 2
# execute if score random= 18scores matches 3 run say 3
# execute if score random= 18scores matches 4 run say 4
# execute if score random= 18scores matches 5 run say 5

execute if score random= 18scores matches 1 run tag @e[type=minecraft:armor_stand,tag=game18,tag=piece_1] add piece_1_1
execute if score random= 18scores matches 1 run tag @e[type=minecraft:armor_stand,tag=game18,tag=piece_2] add piece_1_2
execute if score random= 18scores matches 1 run tag @e[type=minecraft:armor_stand,tag=game18,tag=piece_3] add piece_1_3
execute if score random= 18scores matches 1 run tag @e[type=minecraft:armor_stand,tag=game18,tag=piece_4] add piece_1_4
execute if score random= 18scores matches 1 run tag @e[type=minecraft:armor_stand,tag=game18,tag=piece_5] add piece_1_5
execute if score random= 18scores matches 1 run tag @e[type=minecraft:armor_stand,tag=game18,tag=piece_6] add piece_1_6

execute if score random= 18scores matches 2 run tag @e[type=minecraft:armor_stand,tag=game18,tag=piece_1] add piece_2_1
execute if score random= 18scores matches 2 run tag @e[type=minecraft:armor_stand,tag=game18,tag=piece_2] add piece_2_2
execute if score random= 18scores matches 2 run tag @e[type=minecraft:armor_stand,tag=game18,tag=piece_3] add piece_2_3
execute if score random= 18scores matches 2 run tag @e[type=minecraft:armor_stand,tag=game18,tag=piece_4] add piece_2_4
execute if score random= 18scores matches 2 run tag @e[type=minecraft:armor_stand,tag=game18,tag=piece_5] add piece_2_5
execute if score random= 18scores matches 2 run tag @e[type=minecraft:armor_stand,tag=game18,tag=piece_6] add piece_2_6

execute if score random= 18scores matches 3 run tag @e[type=minecraft:armor_stand,tag=game18,tag=piece_1] add piece_3_1
execute if score random= 18scores matches 3 run tag @e[type=minecraft:armor_stand,tag=game18,tag=piece_2] add piece_3_2
execute if score random= 18scores matches 3 run tag @e[type=minecraft:armor_stand,tag=game18,tag=piece_3] add piece_3_3
execute if score random= 18scores matches 3 run tag @e[type=minecraft:armor_stand,tag=game18,tag=piece_4] add piece_3_4
execute if score random= 18scores matches 3 run tag @e[type=minecraft:armor_stand,tag=game18,tag=piece_5] add piece_3_5
execute if score random= 18scores matches 3 run tag @e[type=minecraft:armor_stand,tag=game18,tag=piece_6] add piece_3_6

execute if score random= 18scores matches 4 run tag @e[type=minecraft:armor_stand,tag=game18,tag=piece_1] add piece_4_1
execute if score random= 18scores matches 4 run tag @e[type=minecraft:armor_stand,tag=game18,tag=piece_2] add piece_4_2
execute if score random= 18scores matches 4 run tag @e[type=minecraft:armor_stand,tag=game18,tag=piece_3] add piece_4_3
execute if score random= 18scores matches 4 run tag @e[type=minecraft:armor_stand,tag=game18,tag=piece_4] add piece_4_4
execute if score random= 18scores matches 4 run tag @e[type=minecraft:armor_stand,tag=game18,tag=piece_5] add piece_4_5
execute if score random= 18scores matches 4 run tag @e[type=minecraft:armor_stand,tag=game18,tag=piece_6] add piece_4_6

execute if score random= 18scores matches 5 run tag @e[type=minecraft:armor_stand,tag=game18,tag=piece_1] add piece_5_1
execute if score random= 18scores matches 5 run tag @e[type=minecraft:armor_stand,tag=game18,tag=piece_2] add piece_5_2
execute if score random= 18scores matches 5 run tag @e[type=minecraft:armor_stand,tag=game18,tag=piece_3] add piece_5_3
execute if score random= 18scores matches 5 run tag @e[type=minecraft:armor_stand,tag=game18,tag=piece_4] add piece_5_4
execute if score random= 18scores matches 5 run tag @e[type=minecraft:armor_stand,tag=game18,tag=piece_5] add piece_5_5
execute if score random= 18scores matches 5 run tag @e[type=minecraft:armor_stand,tag=game18,tag=piece_6] add piece_5_6

execute as @e[type=minecraft:armor_stand,tag=piece_1_1] run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:magenta_dye",components:{"minecraft:custom_model_data":0,"minecraft:custom_data":{Data:{Size:[4,4],Offset:[0,0],Arrays:[[[2,2,0,0],[2,2,0,0],[2,2,1,0],[2,2,2,1]],[[2,2,2,2],[2,2,2,2],[2,1,0,0],[1,0,0,0]],[[1,2,2,2],[0,1,2,2],[0,0,2,2],[0,0,2,2]],[[0,0,0,1],[0,0,1,2],[2,2,2,2],[2,2,2,2]]]}}},count:1}]}
execute as @e[type=minecraft:armor_stand,tag=piece_1_2] run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:magenta_dye",components:{"minecraft:custom_model_data":0,"minecraft:custom_data":{Data:{Size:[4,4],Offset:[0,0],Arrays:[[[0,0,0,1],[0,0,1,2],[2,2,2,2],[2,2,2,2]],[[2,2,0,0],[2,2,0,0],[2,2,1,0],[2,2,2,1]],[[2,2,2,2],[2,2,2,2],[2,1,0,0],[1,0,0,0]],[[1,2,2,2],[0,1,2,2],[0,0,2,2],[0,0,2,2]]]}}},count:1}]}
execute as @e[type=minecraft:armor_stand,tag=piece_1_3] run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:magenta_dye",components:{"minecraft:custom_model_data":0,"minecraft:custom_data":{Data:{Size:[4,6],Offset:[0,1],Arrays:[[[1,0,0,0],[2,1,0,0],[2,2,2,2],[2,2,2,2],[2,2,0,0],[2,2,0,0]],[[2,2,2,2,2,1],[2,2,2,2,1,0],[0,0,2,2,0,0],[0,0,2,2,0,0]],[[0,0,2,2],[0,0,2,2],[2,2,2,2],[2,2,2,2],[0,0,1,2],[0,0,0,1]],[[0,0,2,2,0,0],[0,0,2,2,0,0],[0,1,2,2,2,2],[1,2,2,2,2,2]]]}}},count:1}]}
execute as @e[type=minecraft:armor_stand,tag=piece_1_4] run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:magenta_dye",components:{"minecraft:custom_model_data":0,"minecraft:custom_data":{Data:{Size:[6,2],Offset:[1,1],Arrays:[[[2,2,2,2,2,2],[2,2,2,2,2,2]],[[2,2],[2,2],[2,2],[2,2],[2,2],[2,2]],[[2,2,2,2,2,2],[2,2,2,2,2,2]],[[2,2],[2,2],[2,2],[2,2],[2,2],[2,2]]]}}},count:1}]}
execute as @e[type=minecraft:armor_stand,tag=piece_1_5] run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:magenta_dye",components:{"minecraft:custom_model_data":0,"minecraft:custom_data":{Data:{Size:[4,4],Offset:[0,0],Arrays:[[[2,2,2,2],[2,2,2,2],[1,2,2,1],[0,1,1,0]],[[0,1,2,2],[1,2,2,2],[1,2,2,2],[0,1,2,2]],[[0,1,1,0],[1,2,2,1],[2,2,2,2],[2,2,2,2]],[[2,2,1,0],[2,2,2,1],[2,2,2,1],[2,2,1,0]]]}}},count:1}]}
execute as @e[type=minecraft:armor_stand,tag=piece_1_6] run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:magenta_dye",components:{"minecraft:custom_model_data":0,"minecraft:custom_data":{Data:{Size:[2,4],Offset:[1,0],Arrays:[[[2,2],[2,2],[1,2],[0,1]],[[0,1,2,2],[1,2,2,2]],[[1,0],[2,1],[2,2],[2,2]],[[2,2,2,1],[2,2,1,0]]]}}},count:1}]}

execute as @e[type=minecraft:armor_stand,tag=piece_2_1] run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:magenta_dye",components:{"minecraft:custom_model_data":0,"minecraft:custom_data":{Data:{Size:[6,4],Offset:[1,0],Arrays:[[[2,2,2,2,1,0],[2,2,2,2,2,1],[2,2,0,0,0,0],[2,2,0,0,0,0]],[[2,2,2,2],[2,2,2,2],[0,0,2,2],[0,0,2,2],[0,0,2,1],[0,0,1,0]],[[0,0,0,0,2,2],[0,0,0,0,2,2],[1,2,2,2,2,2],[0,1,2,2,2,2]],[[0,1,0,0],[1,2,0,0],[2,2,0,0],[2,2,0,0],[2,2,2,2],[2,2,2,2]]]}}},count:1}]}
execute as @e[type=minecraft:armor_stand,tag=piece_2_2] run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:magenta_dye",components:{"minecraft:custom_model_data":0,"minecraft:custom_data":{Data:{Size:[4,4],Offset:[0,0],Arrays:[[[2,2,0,0],[2,2,0,0],[2,2,1,0],[2,2,2,1]],[[2,2,2,2],[2,2,2,2],[2,1,0,0],[1,0,0,0]],[[1,2,2,2],[0,1,2,2],[0,0,2,2],[0,0,2,2]],[[0,0,0,1],[0,0,1,2],[2,2,2,2],[2,2,2,2]]]}}},count:1}]}
execute as @e[type=minecraft:armor_stand,tag=piece_2_3] run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:magenta_dye",components:{"minecraft:custom_model_data":0,"minecraft:custom_data":{Data:{Size:[4,4],Offset:[0,0],Arrays:[[[2,2,2,1],[2,2,1,0],[2,1,0,0],[1,0,0,0]],[[1,2,2,2],[0,1,2,2],[0,0,1,2],[0,0,0,1]],[[0,0,0,1],[0,0,1,2],[0,1,2,2],[1,2,2,2]],[[1,0,0,0],[2,1,0,0],[2,2,1,0],[2,2,2,1]]]}}},count:1}]}
execute as @e[type=minecraft:armor_stand,tag=piece_2_4] run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:magenta_dye",components:{"minecraft:custom_model_data":0,"minecraft:custom_data":{Data:{Size:[4,4],Offset:[0,0],Arrays:[[[1,2,2,2],[0,1,2,2],[0,1,2,2],[1,2,2,2]],[[1,0,0,1],[2,1,1,2],[2,2,2,2],[2,2,2,2]],[[2,2,2,1],[2,2,1,0],[2,2,1,0],[2,2,2,1]],[[2,2,2,2],[2,2,2,2],[2,1,1,2],[1,0,0,1]]]}}},count:1}]}
execute as @e[type=minecraft:armor_stand,tag=piece_2_5] run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:magenta_dye",components:{"minecraft:custom_model_data":0,"minecraft:custom_data":{Data:{Size:[6,4],Offset:[1,0],Arrays:[[[0,1,2,2,2,2],[1,2,2,2,2,2],[0,0,0,0,2,2],[0,0,0,0,2,2]],[[0,0,1,0],[0,0,2,1],[0,0,2,2],[0,0,2,2],[2,2,2,2],[2,2,2,2]],[[2,2,0,0,0,0],[2,2,0,0,0,0],[2,2,2,2,2,1],[2,2,2,2,1,0]],[[2,2,2,2],[2,2,2,2],[2,2,0,0],[2,2,0,0],[1,2,0,0],[0,1,0,0]]]}}},count:1}]}
execute as @e[type=minecraft:armor_stand,tag=piece_2_6] run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:magenta_dye",components:{"minecraft:custom_model_data":0,"minecraft:custom_data":{Data:{Size:[4,2],Offset:[0,1],Arrays:[[[1,2,2,2],[0,1,2,2]],[[0,1],[1,2],[2,2],[2,2]],[[2,2,1,0],[2,2,2,1]],[[2,2],[2,2],[2,1],[1,0]]]}}},count:1}]}

execute as @e[type=minecraft:armor_stand,tag=piece_3_1] run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:magenta_dye",components:{"minecraft:custom_model_data":0,"minecraft:custom_data":{Data:{Size:[4,6],Offset:[0,1],Arrays:[[[2,2,2,2],[2,2,2,2],[2,2,0,0],[2,2,0,0],[1,2,0,0],[0,1,0,0]],[[0,1,2,2,2,2],[1,2,2,2,2,2],[0,0,0,0,2,2],[0,0,0,0,2,2]],[[0,0,1,0],[0,0,2,1],[0,0,2,2],[0,0,2,2],[2,2,2,2],[2,2,2,2]],[[2,2,0,0,0,0],[2,2,0,0,0,0],[2,2,2,2,2,1],[2,2,2,2,1,0]]]}}},count:1}]}
execute as @e[type=minecraft:armor_stand,tag=piece_3_2] run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:magenta_dye",components:{"minecraft:custom_model_data":0,"minecraft:custom_data":{Data:{Size:[4,6],Offset:[0,1],Arrays:[[[2,2,2,2],[2,2,2,2],[0,0,2,2],[0,0,2,2],[0,0,1,2],[0,0,0,1]],[[0,0,0,0,2,2],[0,0,0,0,2,2],[0,1,2,2,2,2],[1,2,2,2,2,2]],[[1,0,0,0],[2,1,0,0],[2,2,0,0],[2,2,0,0],[2,2,2,2],[2,2,2,2]],[[2,2,2,2,2,1],[2,2,2,2,1,0],[2,2,0,0,0,0],[2,2,0,0,0,0]]]}}},count:1}]}
execute as @e[type=minecraft:armor_stand,tag=piece_3_3] run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:magenta_dye",components:{"minecraft:custom_model_data":0,"minecraft:custom_data":{Data:{Size:[4,4],Offset:[0,0],Arrays:[[[2,2,2,1],[2,2,1,0],[2,1,0,0],[1,0,0,0]],[[1,2,2,2],[0,1,2,2],[0,0,1,2],[0,0,0,1]],[[0,0,0,1],[0,0,1,2],[0,1,2,2],[1,2,2,2]],[[1,0,0,0],[2,1,0,0],[2,2,1,0],[2,2,2,1]]]}}},count:1}]}
execute as @e[type=minecraft:armor_stand,tag=piece_3_4] run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:magenta_dye",components:{"minecraft:custom_model_data":0,"minecraft:custom_data":{Data:{Size:[4,4],Offset:[0,0],Arrays:[[[1,0,0,1],[2,1,1,2],[2,2,2,2],[2,2,2,2]],[[2,2,2,1],[2,2,1,0],[2,2,1,0],[2,2,2,1]],[[2,2,2,2],[2,2,2,2],[2,1,1,2],[1,0,0,1]],[[1,2,2,2],[0,1,2,2],[0,1,2,2],[1,2,2,2]]]}}},count:1}]}
execute as @e[type=minecraft:armor_stand,tag=piece_3_5] run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:magenta_dye",components:{"minecraft:custom_model_data":0,"minecraft:custom_data":{Data:{Size:[2,6],Offset:[1,1],Arrays:[[[0,1],[1,2],[2,2],[2,2],[2,2],[2,2]],[[2,2,2,2,1,0],[2,2,2,2,2,1]],[[2,2],[2,2],[2,2],[2,2],[2,1],[1,0]],[[1,2,2,2,2,2],[0,1,2,2,2,2]]]}}},count:1}]}
execute as @e[type=minecraft:armor_stand,tag=piece_3_6] run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:magenta_dye",components:{"minecraft:custom_model_data":0,"minecraft:custom_data":{Data:{Size:[2,4],Offset:[1,0],Arrays:[[[1,0],[2,1],[2,2],[2,2]],[[2,2,2,1],[2,2,1,0]],[[2,2],[2,2],[1,2],[0,1]],[[0,1,2,2],[1,2,2,2]]]}}},count:1}]}

execute as @e[type=minecraft:armor_stand,tag=piece_4_1] run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:magenta_dye",components:{"minecraft:custom_model_data":0,"minecraft:custom_data":{Data:{Size:[2,6],Offset:[1,1],Arrays:[[[1,0],[2,1],[2,2],[2,2],[2,1],[1,0]],[[1,2,2,2,2,1],[0,1,2,2,1,0]],[[0,1],[1,2],[2,2],[2,2],[1,2],[0,1]],[[0,1,2,2,1,0],[1,2,2,2,2,1]]]}}},count:1}]}
execute as @e[type=minecraft:armor_stand,tag=piece_4_2] run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:magenta_dye",components:{"minecraft:custom_model_data":0,"minecraft:custom_data":{Data:{Size:[4,6],Offset:[0,1],Arrays:[[[1,2,2,2],[0,1,2,2],[0,0,2,2],[0,0,2,2],[0,0,1,2],[0,0,0,1]],[[0,0,0,0,0,1],[0,0,0,0,1,2],[0,1,2,2,2,2],[1,2,2,2,2,2]],[[1,0,0,0],[2,1,0,0],[2,2,0,0],[2,2,0,0],[2,2,1,0],[2,2,2,1]],[[2,2,2,2,2,1],[2,2,2,2,1,0],[2,1,0,0,0,0],[1,0,0,0,0,0]]]}}},count:1}]}
execute as @e[type=minecraft:armor_stand,tag=piece_4_3] run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:magenta_dye",components:{"minecraft:custom_model_data":0,"minecraft:custom_data":{Data:{Size:[4,4],Offset:[0,0],Arrays:[[[0,1,1,0],[1,2,2,1],[2,2,2,2],[2,2,2,2]],[[2,2,1,0],[2,2,2,1],[2,2,2,1],[2,2,1,0]],[[2,2,2,2],[2,2,2,2],[1,2,2,1],[0,1,1,0]],[[0,1,2,2],[1,2,2,2],[1,2,2,2],[0,1,2,2]]]}}},count:1}]}
execute as @e[type=minecraft:armor_stand,tag=piece_4_4] run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:magenta_dye",components:{"minecraft:custom_model_data":0,"minecraft:custom_data":{Data:{Size:[2,6],Offset:[1,1],Arrays:[[[2,2],[2,2],[2,2],[2,2],[1,2],[0,1]],[[0,1,2,2,2,2],[1,2,2,2,2,2]],[[1,0],[2,1],[2,2],[2,2],[2,2],[2,2]],[[2,2,2,2,2,1],[2,2,2,2,1,0]]]}}},count:1}]}
execute as @e[type=minecraft:armor_stand,tag=piece_4_5] run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:magenta_dye",components:{"minecraft:custom_model_data":0,"minecraft:custom_data":{Data:{Size:[4,4],Offset:[0,0],Arrays:[[[1,0,0,0],[2,1,0,0],[2,2,2,2],[2,2,2,2]],[[2,2,2,1],[2,2,1,0],[2,2,0,0],[2,2,0,0]],[[2,2,2,2],[2,2,2,2],[0,0,1,2],[0,0,0,1]],[[0,0,2,2],[0,0,2,2],[0,1,2,2],[1,2,2,2]]]}}},count:1}]}
execute as @e[type=minecraft:armor_stand,tag=piece_4_6] run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:magenta_dye",components:{"minecraft:custom_model_data":0,"minecraft:custom_data":{Data:{Size:[2,6],Offset:[1,1],Arrays:[[[2,2],[2,2],[2,2],[2,2],[2,2],[2,2]],[[2,2,2,2,2,2],[2,2,2,2,2,2]],[[2,2],[2,2],[2,2],[2,2],[2,2],[2,2]],[[2,2,2,2,2,2],[2,2,2,2,2,2]]]}}},count:1}]}

execute as @e[type=minecraft:armor_stand,tag=piece_5_1] run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:magenta_dye",components:{"minecraft:custom_model_data":0,"minecraft:custom_data":{Data:{Size:[4,4],Offset:[0,0],Arrays:[[[2,2,0,0],[2,2,0,0],[2,2,1,0],[2,2,2,1]],[[2,2,2,2],[2,2,2,2],[2,1,0,0],[1,0,0,0]],[[1,2,2,2],[0,1,2,2],[0,0,2,2],[0,0,2,2]],[[0,0,0,1],[0,0,1,2],[2,2,2,2],[2,2,2,2]]]}}},count:1}]}
execute as @e[type=minecraft:armor_stand,tag=piece_5_2] run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:magenta_dye",components:{"minecraft:custom_model_data":0,"minecraft:custom_data":{Data:{Size:[4,4],Offset:[0,0],Arrays:[[[2,2,2,2],[2,2,2,2],[2,1,0,0],[1,0,0,0]],[[1,2,2,2],[0,1,2,2],[0,0,2,2],[0,0,2,2]],[[0,0,0,1],[0,0,1,2],[2,2,2,2],[2,2,2,2]],[[2,2,0,0],[2,2,0,0],[2,2,1,0],[2,2,2,1]]]}}},count:1}]}
execute as @e[type=minecraft:armor_stand,tag=piece_5_3] run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:magenta_dye",components:{"minecraft:custom_model_data":0,"minecraft:custom_data":{Data:{Size:[6,2],Offset:[1,1],Arrays:[[[2,2,2,2,2,1],[2,2,2,2,1,0]],[[2,2],[2,2],[2,2],[2,2],[1,2],[0,1]],[[0,1,2,2,2,2],[1,2,2,2,2,2]],[[1,0],[2,1],[2,2],[2,2],[2,2],[2,2]]]}}},count:1}]}
execute as @e[type=minecraft:armor_stand,tag=piece_5_4] run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:magenta_dye",components:{"minecraft:custom_model_data":0,"minecraft:custom_data":{Data:{Size:[8,2],Offset:[0,1],Arrays:[[[0,1,2,2,2,2,2,2],[1,2,2,2,2,2,2,2]],[[1,0],[2,1],[2,2],[2,2],[2,2],[2,2],[2,2],[2,2]],[[2,2,2,2,2,2,2,1],[2,2,2,2,2,2,1,0]],[[2,2],[2,2],[2,2],[2,2],[2,2],[2,2],[1,2],[0,1]]]}}},count:1}]}
execute as @e[type=minecraft:armor_stand,tag=piece_5_5] run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:magenta_dye",components:{"minecraft:custom_model_data":0,"minecraft:custom_data":{Data:{Size:[6,4],Offset:[1,0],Arrays:[[[1,2,2,2,0,0],[0,1,2,2,0,0],[0,0,2,2,2,2],[0,0,2,2,2,2]],[[0,0,0,1],[0,0,1,2],[2,2,2,2],[2,2,2,2],[2,2,0,0],[2,2,0,0]],[[2,2,2,2,0,0],[2,2,2,2,0,0],[0,0,2,2,1,0],[0,0,2,2,2,1]],[[0,0,2,2],[0,0,2,2],[2,2,2,2],[2,2,2,2],[2,1,0,0],[1,0,0,0]]]}}},count:1}]}
execute as @e[type=minecraft:armor_stand,tag=piece_5_6] run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:magenta_dye",components:{"minecraft:custom_model_data":0,"minecraft:custom_data":{Data:{Size:[2,4],Offset:[1,0],Arrays:[[[0,1],[1,2],[2,2],[2,2]],[[2,2,1,0],[2,2,2,1]],[[2,2],[2,2],[2,1],[1,0]],[[1,2,2,2],[0,1,2,2]]]}}},count:1}]}

tp @e[type=minecraft:armor_stand,tag=game18,tag=piece_1,tag=blue,limit=1] 19164.07 40.00 19157.12
tp @e[type=minecraft:armor_stand,tag=game18,tag=piece_2,tag=blue,limit=1] 19166.28 40.00 19158.46
tp @e[type=minecraft:armor_stand,tag=game18,tag=piece_3,tag=blue,limit=1] 19164.09 40.00 19159.37
tp @e[type=minecraft:armor_stand,tag=game18,tag=piece_4,tag=blue,limit=1] 19165.53 40.00 19161.19
tp @e[type=minecraft:armor_stand,tag=game18,tag=piece_5,tag=blue,limit=1] 19163.62 40.00 19162.75
tp @e[type=minecraft:armor_stand,tag=game18,tag=piece_6,tag=blue,limit=1] 19161.33 40.00 19161.73

tp @e[type=minecraft:armor_stand,tag=game18,tag=piece_1,tag=red,limit=1] 19160.32 40.00 19147.98
tp @e[type=minecraft:armor_stand,tag=game18,tag=piece_2,tag=red,limit=1] 19162.83 40.00 19147.51
tp @e[type=minecraft:armor_stand,tag=game18,tag=piece_3,tag=red,limit=1] 19165.01 40.00 19147.88
tp @e[type=minecraft:armor_stand,tag=game18,tag=piece_4,tag=red,limit=1] 19163.88 40.00 19149.33
tp @e[type=minecraft:armor_stand,tag=game18,tag=piece_5,tag=red,limit=1] 19165.59 40.00 19150.64
tp @e[type=minecraft:armor_stand,tag=game18,tag=piece_6,tag=red,limit=1] 19163.91 40.00 19152.67

tp @e[type=minecraft:armor_stand,tag=game18,tag=piece_1,tag=green,limit=1] 19155.07 40.00 19147.82
tp @e[type=minecraft:armor_stand,tag=game18,tag=piece_2,tag=green,limit=1] 19153.46 40.00 19148.63
tp @e[type=minecraft:armor_stand,tag=game18,tag=piece_3,tag=green,limit=1] 19151.55 40.00 19147.07
tp @e[type=minecraft:armor_stand,tag=game18,tag=piece_4,tag=green,limit=1] 19150.00 40.00 19149.20
tp @e[type=minecraft:armor_stand,tag=game18,tag=piece_5,tag=green,limit=1] 19151.93 40.00 19150.76
tp @e[type=minecraft:armor_stand,tag=game18,tag=piece_6,tag=green,limit=1] 19150.21 40.00 19152.14

tp @e[type=minecraft:armor_stand,tag=game18,tag=piece_1,tag=orange,limit=1] 19150.33 40.00 19157.72
tp @e[type=minecraft:armor_stand,tag=game18,tag=piece_2,tag=orange,limit=1] 19152.16 40.00 19159.01
tp @e[type=minecraft:armor_stand,tag=game18,tag=piece_3,tag=orange,limit=1] 19150.28 40.00 19160.60
tp @e[type=minecraft:armor_stand,tag=game18,tag=piece_4,tag=orange,limit=1] 19151.85 40.00 19162.77
tp @e[type=minecraft:armor_stand,tag=game18,tag=piece_5,tag=orange,limit=1] 19153.37 40.00 19161.48
tp @e[type=minecraft:armor_stand,tag=game18,tag=piece_6,tag=orange,limit=1] 19155.48 40.00 19162.59

execute as @e[type=minecraft:armor_stand,tag=game18] run function games:18/raycasting/removeshadow
execute as @e[type=minecraft:armor_stand,tag=game18] at @s run tp @s ~ 40 ~ 0 0
execute as @e[type=minecraft:armor_stand,tag=game18] run data modify entity @s ArmorItems[3].components."minecraft:custom_data".Data.Array set from entity @s ArmorItems[3].components."minecraft:custom_data".Data.Arrays[0]

execute as @e[type=minecraft:armor_stand,tag=game18,tag=!base] store result score @s 18rotations run loot spawn ~ -70 ~ loot games:18rotation
execute as @e[type=minecraft:armor_stand,tag=game18,tag=!base,scores={18rotations=1..}] at @s run function games:18/arrays/rotate
scoreboard players remove @e[type=minecraft:armor_stand,tag=game18,tag=!base,scores={18rotations=1..}] 18rotations 1
execute as @e[type=minecraft:armor_stand,tag=game18,tag=!base,scores={18rotations=1..}] at @s run function games:18/arrays/rotate
scoreboard players remove @e[type=minecraft:armor_stand,tag=game18,tag=!base,scores={18rotations=1..}] 18rotations 1
execute as @e[type=minecraft:armor_stand,tag=game18,tag=!base,scores={18rotations=1..}] at @s run function games:18/arrays/rotate
scoreboard players reset * 18rotations
tag @e[type=minecraft:armor_stand,tag=game18,tag=!base] remove placed

kill @e[type=minecraft:armor_stand,tag=game18,tag=base]
summon minecraft:armor_stand 19161.0 40 19158.0 {Rotation:[180.0f,0.0f],NoGravity:1b,Marker:1b,Invisible:1b,Tags:["blue","game18","base"],ArmorItems:[{},{},{},{id:"minecraft:magenta_dye",components:{"minecraft:custom_model_data":1001},count:1}]}
summon minecraft:armor_stand 19161.0 40 19152.0 {Rotation:[90.0f,0.0f],NoGravity:1b,Marker:1b,Invisible:1b,Tags:["red","game18","base"],ArmorItems:[{},{},{},{id:"minecraft:magenta_dye",components:{"minecraft:custom_model_data":1002},count:1}]}
summon minecraft:armor_stand 19155.0 40 19152.0 {Rotation:[0.0f,0.0f],NoGravity:1b,Marker:1b,Invisible:1b,Tags:["green","game18","base"],ArmorItems:[{},{},{},{id:"minecraft:magenta_dye",components:{"minecraft:custom_model_data":1003},count:1}]}
summon minecraft:armor_stand 19155.0 40 19158.0 {Rotation:[270.0f,0.0f],NoGravity:1b,Marker:1b,Invisible:1b,Tags:["orange","game18","base"],ArmorItems:[{},{},{},{id:"minecraft:magenta_dye",components:{"minecraft:custom_model_data":1004},count:1}]}

execute as @e[type=minecraft:magma_cube,x=19157,y=45,z=19154,distance=..100] at @s run tp @s ~ -10000 ~

execute as @a[tag=ingame] run function games:18/setup_magma

data modify storage minecraft:game18 blue set from storage minecraft:game18 zeros
data modify storage minecraft:game18 red set from storage minecraft:game18 zeros
data modify storage minecraft:game18 green set from storage minecraft:game18 zeros
data modify storage minecraft:game18 orange set from storage minecraft:game18 zeros

execute store result score total= 18scores if entity @a[tag=playing]
scoreboard players set endtime= 18scores -2
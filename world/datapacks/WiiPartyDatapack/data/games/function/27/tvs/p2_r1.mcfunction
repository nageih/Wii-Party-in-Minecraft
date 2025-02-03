#   Author        =   @ T4Bl3rUs
#   Description   =   Changes the channel of a tv
#   Called By     =   games:27/raytracing/step



tag @s add kill
execute as @a[tag=player2] at @s run playsound minecraft:block.amethyst_block.step voice @s ~ ~ ~ 1 2 1
execute as @a[tag=playing,tag=!ingame] at @s run playsound minecraft:block.amethyst_block.step voice @s ~ ~ ~ .25 2 .25
scoreboard players add p2_r1= 27scores 1
execute if score p2_r1= 27scores matches 5.. run scoreboard players set p2_r1= 27scores 1
# Score = 1
execute if score p2_r1= 27scores matches 1 run clone -957 13 -1198 -961 15 -1197 25985 34 26009
# Score = 2
execute if score p2_r1= 27scores matches 2 run clone -965 13 -1198 -969 15 -1197 25985 34 26009
# Score = 3
execute if score p2_r1= 27scores matches 3 run clone -973 13 -1198 -977 15 -1197 25985 34 26009
# Score = 4
execute if score p2_r1= 27scores matches 4 run clone -981 13 -1198 -985 15 -1197 25985 34 26009
function games:27/tvs/check_p2
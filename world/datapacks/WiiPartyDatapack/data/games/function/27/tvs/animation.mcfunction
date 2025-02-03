#   Author        =   @ T4Bl3rUs
#   Description   =   Cycles the channel of the main TV
#   Called By     =   games:27/start_play



scoreboard players add main= 27scores 1
execute if score main= 27scores matches 5.. run scoreboard players set main= 27scores 1
scoreboard players remove animation= 27scores 1
execute if score animation= 27scores matches 1.. run schedule function games:27/tvs/animation 6t
execute as @a[tag=playing] at @s run playsound minecraft:block.amethyst_block.step voice @s ~ ~ ~ 1 2 1

execute if score main= 27scores matches 1 run clone -957 13 -1198 -961 15 -1197 25998 41 26008
execute if score main= 27scores matches 2 run clone -965 13 -1198 -969 15 -1197 25998 41 26008
execute if score main= 27scores matches 3 run clone -973 13 -1198 -977 15 -1197 25998 41 26008
execute if score main= 27scores matches 4 run clone -981 13 -1198 -985 15 -1197 25998 41 26008

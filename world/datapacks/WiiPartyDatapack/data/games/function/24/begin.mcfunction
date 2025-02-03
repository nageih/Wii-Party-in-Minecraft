#   Author        =   @ T4Bl3rUs
#   Description   =   Ends the game
#   Called By     =   games:24/title2

title @a[tag=ingame] subtitle " "
title @a[team=blue] title {"nbt":"colors.blue","storage":"minecraft:config","interpret":true,"extra":[{"translate":"generic.Go","bold":true}],"source":"storage","type":"nbt"}
title @a[team=red] title {"nbt":"colors.red","storage":"minecraft:config","interpret":true,"extra":[{"translate":"generic.Go","bold":true}],"source":"storage","type":"nbt"}
title @a[team=green] title {"nbt":"colors.green","storage":"minecraft:config","interpret":true,"extra":[{"translate":"generic.Go","bold":true}],"source":"storage","type":"nbt"}
title @a[team=orange] title {"nbt":"colors.orange","storage":"minecraft:config","interpret":true,"extra":[{"translate":"generic.Go","bold":true}],"source":"storage","type":"nbt"}
execute as @a[tag=ingame] at @s run playsound minecraft:block.note_block.pling master @a ~ ~ ~ 1 2
execute as @a[tag=playing] at @s run playsound ouo:start master @s ~ ~ ~ 3 1

tag @e[type=armor_stand,tag=24player] add 24move

scoreboard players set ingame= 24scores 2

execute as @a[tag=playing] at @s run playsound music:maze_daze voice @s

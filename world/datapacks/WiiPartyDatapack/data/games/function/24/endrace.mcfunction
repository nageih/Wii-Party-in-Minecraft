#   Author        =   @ T4Bl3rUs
#   Description   =   Ends the game
#   Called By     =   games:24/repeating

#Title
title @a[tag=playing] subtitle " "
title @a[tag=ingame,team=blue] title {"nbt":"colors.blue","storage":"minecraft:config","interpret":true,"extra":[{"translate":"generic.Finish","bold":true}],"source":"storage","type":"nbt"}
title @a[tag=ingame,team=red] title {"nbt":"colors.red","storage":"minecraft:config","interpret":true,"extra":[{"translate":"generic.Finish","bold":true}],"source":"storage","type":"nbt"}
title @a[tag=ingame,team=green] title {"nbt":"colors.green","storage":"minecraft:config","interpret":true,"extra":[{"translate":"generic.Finish","bold":true}],"source":"storage","type":"nbt"}
title @a[tag=ingame,team=orange] title {"nbt":"colors.orange","storage":"minecraft:config","interpret":true,"extra":[{"translate":"generic.Finish","bold":true}],"source":"storage","type":"nbt"}
title @a[tag=playing] actionbar ""

#Schedule end of the game
execute as @a[tag=playing] at @s run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 1 0.5
execute as @a[tag=playing] at @s run playsound ouo:finish master @s ~ ~ ~ 1 1

schedule function games:24/end 5s
schedule function general:fade/main 88t

tag @e[type=armor_stand,tag=24player] remove 24move

# Last place
#execute store result score players= 24scores if entity @a[tag=ingame]
#execute if score players= 24scores matches 4 run tag @a[tag=ingame,tag=!finished] add 4th
#execute if score players= 24scores matches 3 run tag @a[tag=ingame,tag=!finished] add 3rd
#execute if score players= 24scores matches 2 run tag @a[tag=ingame,tag=!finished] add 2nd

##execute store result score unfinished= 24scores if entity @a[tag=ingame,tag=!finished]
##execute if score players= 24scores matches 4 run tag @a[tag=ingame,tag=!finished] add 4th
##execute if score players= 24scores matches 3 run tag @a[tag=ingame,tag=!finished] add 3rd
##execute if score players= 24scores matches 2 run tag @a[tag=ingame,tag=!finished] add 2nd


execute if entity @a[tag=ingame,tag=1st] if entity @a[tag=ingame,tag=2nd] if entity @a[tag=ingame,tag=3rd] run tag @a[tag=ingame,tag=!finished] add 4th
execute if entity @a[tag=ingame,tag=1st] if entity @a[tag=ingame,tag=2nd] unless entity @a[tag=ingame,tag=3rd] run tag @a[tag=ingame,tag=!finished] add 3rd
execute if entity @a[tag=ingame,tag=1st] unless entity @a[tag=ingame,tag=2nd] run tag @a[tag=ingame,tag=!finished] add 2nd
execute unless entity @a[tag=ingame,tag=1st] run tag @a[tag=ingame,tag=!finished] add 1st

# Runs the function that shows where the players placed
function general:placements

scoreboard players set ingame= 24scores 3

schedule clear games:24/play_song
stopsound @a[tag=playing] voice

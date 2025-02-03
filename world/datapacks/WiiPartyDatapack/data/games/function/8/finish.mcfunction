# Sets all players title time back to the default
title @a[tag=playing] times 20 60 20

title @a[tag=playing] subtitle " "
title @a[tag=ingame,team=blue] title {"nbt":"colors.blue","storage":"minecraft:config","interpret":true,"extra":[{"translate":"generic.Finish","bold":true,"type":"translatable"}],"source":"storage","type":"nbt"}
title @a[tag=ingame,team=red] title {"nbt":"colors.red","storage":"minecraft:config","interpret":true,"extra":[{"translate":"generic.Finish","bold":true,"type":"translatable"}],"source":"storage","type":"nbt"}
title @a[tag=ingame,team=green] title {"nbt":"colors.green","storage":"minecraft:config","interpret":true,"extra":[{"translate":"generic.Finish","bold":true,"type":"translatable"}],"source":"storage","type":"nbt"}
title @a[tag=ingame,team=orange] title {"nbt":"colors.orange","storage":"minecraft:config","interpret":true,"extra":[{"translate":"generic.Finish","bold":true,"type":"translatable"}],"source":"storage","type":"nbt"}
title @a[tag=playing,tag=!ingame] title {"nbt":"colors.spectator","storage":"minecraft:config","interpret":true,"extra":[{"translate":"generic.Finish","bold":true,"type":"translatable"}],"source":"storage","type":"nbt"}
execute store result score players 8scores if entity @a[tag=ingame]
execute if score players 8scores matches 4 run tag @a[tag=ingame,tag=!finished] add 4th
execute if score players 8scores matches 3 run tag @a[tag=ingame,tag=!finished] add 3rd
execute if score players 8scores matches 2 run tag @a[tag=ingame,tag=!finished] add 2nd
execute as @a[tag=playing] at @s run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 1 0.5
execute as @a[tag=playing] at @s run playsound ouo:finish master @s ~ ~ ~ 1 1

schedule function games:8/end 3s
scoreboard players set ingame 8scores 0

# Runs the function that shows where the players placed
function general:placements

stopsound @a[tag=playing] voice

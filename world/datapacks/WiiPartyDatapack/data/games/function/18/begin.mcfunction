#   Author        =   @ T4Bl3rUs
#   Description   =   Displays titles
#   Called By     =   games:18/title2

# Clears the subtitle incase one is already being displayed
title @a[tag=playing] subtitle " "

# Displays Start! for all players, the colour dependant on their team
title @a[team=blue] title {"nbt":"colors.blue","storage":"minecraft:config","interpret":true,"extra":[{"translate":"generic.Start","bold":true}],"source":"storage","type":"nbt"}
title @a[team=red] title {"nbt":"colors.red","storage":"minecraft:config","interpret":true,"extra":[{"translate":"generic.Start","bold":true}],"source":"storage","type":"nbt"}
title @a[team=green] title {"nbt":"colors.green","storage":"minecraft:config","interpret":true,"extra":[{"translate":"generic.Start","bold":true}],"source":"storage","type":"nbt"}
title @a[team=orange] title {"nbt":"colors.orange","storage":"minecraft:config","interpret":true,"extra":[{"translate":"generic.Start","bold":true}],"source":"storage","type":"nbt"}
title @a[tag=playing,tag=!ingame] title {"nbt":"colors.spectator","storage":"minecraft:config","interpret":true,"extra":[{"translate":"generic.Start","bold":true}],"source":"storage","type":"nbt"}

execute as @a[tag=playing] at @s run playsound ouo:start master @s ~ ~ ~ 3 1

scoreboard players set time= 18scores 0
scoreboard players set start= 18scores 1
scoreboard players set @a coas 0

effect clear @a[tag=ingame] minecraft:weakness
effect give @a[tag=playing] minecraft:strength infinite 1 true

execute as @a[tag=playing] at @s run playsound music:friendly_faceoff voice @s

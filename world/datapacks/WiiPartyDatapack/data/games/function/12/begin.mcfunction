#   Author        =   @ T4Bl3rUs
#   Description   =   Function that starts the timer and the game for the hiders. It also notifies the seeker
#   Called By     =   games:12/title2

#Set the start of the game
title @a[tag=ingame,tag=!solo] subtitle " "
title @a[tag=blue,tag=!solo] title {"nbt":"colors.blue","storage":"minecraft:config","interpret":true,"extra":[{"translate":"generic.Go","bold":true}],"source":"storage","type":"nbt"}
title @a[tag=red,tag=!solo] title {"nbt":"colors.red","storage":"minecraft:config","interpret":true,"extra":[{"translate":"generic.Go","bold":true}],"source":"storage","type":"nbt"}
title @a[tag=green,tag=!solo] title {"nbt":"colors.green","storage":"minecraft:config","interpret":true,"extra":[{"translate":"generic.Go","bold":true}],"source":"storage","type":"nbt"}
title @a[tag=orange,tag=!solo] title {"nbt":"colors.orange","storage":"minecraft:config","interpret":true,"extra":[{"translate":"generic.Go","bold":true}],"source":"storage","type":"nbt"}
execute as @a[tag=playing,tag=!solo] at @s run playsound minecraft:block.note_block.pling master @a ~ ~ ~ 1 2
execute as @a[tag=playing,tag=!solo] at @s run playsound ouo:start master @s ~ ~ ~ 3 1

#Start a 29 second countdown
scoreboard players set timer 12scores 29
scoreboard players reset @a 12scores
#Start countdown in 1 second (to make it 1 minute)
schedule function games:12/cd 1s

#Tell the seeker that the hiders have been released
title @a[tag=ingame,tag=solo] title " "
title @a[tag=blue,tag=solo] subtitle {"nbt":"colors.blue","storage":"minecraft:config","interpret":true,"extra":[{"translate":"game.HideNPeek.HidersReleased","bold":true}],"source":"storage","type":"nbt"}
title @a[tag=red,tag=solo] subtitle {"nbt":"colors.red","storage":"minecraft:config","interpret":true,"extra":[{"translate":"game.HideNPeek.HidersReleased","bold":true}],"source":"storage","type":"nbt"}
title @a[tag=green,tag=solo] subtitle {"nbt":"colors.green","storage":"minecraft:config","interpret":true,"extra":[{"translate":"game.HideNPeek.HidersReleased","bold":true}],"source":"storage","type":"nbt"}
title @a[tag=orange,tag=solo] subtitle {"nbt":"colors.orange","storage":"minecraft:config","interpret":true,"extra":[{"translate":"game.HideNPeek.HidersReleased","bold":true}],"source":"storage","type":"nbt"}
execute as @a[tag=ingame,tag=solo] at @s run playsound minecraft:block.note_block.guitar master @a ~ ~ ~ 1 1.5

function games:12/play_song

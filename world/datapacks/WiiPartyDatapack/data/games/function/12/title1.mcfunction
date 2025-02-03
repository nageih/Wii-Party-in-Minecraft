#   Author        =   @ T4Bl3rUs
#   Description   =   Displays titles for the hiders.
#   Called By     =   games:12/start

#Display titles
title @a[tag=ingame] title " "
title @a[tag=blue,tag=!solo] subtitle {"nbt":"colors.blue","storage":"minecraft:config","interpret":true,"extra":[{"translate":"generic.OnYourMarks","bold":true}],"source":"storage","type":"nbt"}
title @a[tag=red,tag=!solo] subtitle {"nbt":"colors.red","storage":"minecraft:config","interpret":true,"extra":[{"translate":"generic.OnYourMarks","bold":true}],"source":"storage","type":"nbt"}
title @a[tag=green,tag=!solo] subtitle {"nbt":"colors.green","storage":"minecraft:config","interpret":true,"extra":[{"translate":"generic.OnYourMarks","bold":true}],"source":"storage","type":"nbt"}
title @a[tag=orange,tag=!solo] subtitle {"nbt":"colors.orange","storage":"minecraft:config","interpret":true,"extra":[{"translate":"generic.OnYourMarks","bold":true}],"source":"storage","type":"nbt"}
execute as @a[tag=ingame,tag=!solo] at @s run playsound minecraft:block.note_block.banjo master @a ~ ~ ~ 1 0.5

#Prepare the next title
schedule function games:12/title2 2s
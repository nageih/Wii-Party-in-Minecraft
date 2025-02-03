#   Author        =   @ T4Bl3rUs
#   Description   =   Displays titles for the seeker. 
#   Called By     =   games:12/title1_2

#Display title
title @a[tag=ingame] title " "
title @a[tag=blue,tag=solo] subtitle {"nbt":"colors.blue","storage":"minecraft:config","interpret":true,"extra":[{"text":"generic.GetSet","bold":true,"type":"text"}],"source":"storage","type":"nbt"}
title @a[tag=red,tag=solo] subtitle {"nbt":"colors.red","storage":"minecraft:config","interpret":true,"extra":[{"translate":"generic.GetSet","bold":true}],"source":"storage","type":"nbt"}
title @a[tag=green,tag=solo] subtitle {"nbt":"colors.green","storage":"minecraft:config","interpret":true,"extra":[{"translate":"generic.GetSet","bold":true}],"source":"storage","type":"nbt"}
title @a[tag=orange,tag=solo] subtitle {"nbt":"colors.orange","storage":"minecraft:config","interpret":true,"extra":[{"translate":"generic.GetSet","bold":true}],"source":"storage","type":"nbt"}
execute as @a[tag=ingame,tag=solo] at @s run playsound minecraft:block.note_block.banjo master @a ~ ~ ~ 1 0.7

#Prepare the start of the game for the seeker
schedule function games:12/begin_2 2s
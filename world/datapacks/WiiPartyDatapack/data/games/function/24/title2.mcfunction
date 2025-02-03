#   Author        =   @ T4Bl3rUs
#   Description   =   Displays titles
#   Called By     =   games:24/title1

#Display titles
title @a[tag=ingame] title " "
title @a[team=blue] subtitle {"nbt":"colors.blue","storage":"minecraft:config","interpret":true,"extra":[{"translate":"generic.GetSet","bold":true}],"source":"storage","type":"nbt"}
title @a[team=red] subtitle {"nbt":"colors.red","storage":"minecraft:config","interpret":true,"extra":[{"translate":"generic.GetSet","bold":true}],"source":"storage","type":"nbt"}
title @a[team=green] subtitle {"nbt":"colors.green","storage":"minecraft:config","interpret":true,"extra":[{"translate":"generic.GetSet","bold":true}],"source":"storage","type":"nbt"}
title @a[team=orange] subtitle {"nbt":"colors.orange","storage":"minecraft:config","interpret":true,"extra":[{"translate":"generic.GetSet","bold":true}],"source":"storage","type":"nbt"}
execute as @a[tag=ingame] at @s run playsound minecraft:block.note_block.banjo master @a ~ ~ ~ 1 0.7
schedule function games:24/begin 2s
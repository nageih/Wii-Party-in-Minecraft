title @a[tag=playing] title " "
title @a[tag=ingame,team=blue] subtitle {"nbt":"colors.blue","storage":"minecraft:config","interpret":true,"extra":[{"translate":"generic.GetSet","bold":true,"type":"translatable"}],"source":"storage","type":"nbt"}
title @a[tag=ingame,team=red] subtitle {"nbt":"colors.red","storage":"minecraft:config","interpret":true,"extra":[{"translate":"generic.GetSet","bold":true,"type":"translatable"}],"source":"storage","type":"nbt"}
title @a[tag=ingame,team=green] subtitle {"nbt":"colors.green","storage":"minecraft:config","interpret":true,"extra":[{"translate":"generic.GetSet","bold":true,"type":"translatable"}],"source":"storage","type":"nbt"}
title @a[tag=ingame,team=orange] subtitle {"nbt":"colors.orange","storage":"minecraft:config","interpret":true,"extra":[{"translate":"generic.GetSet","bold":true,"type":"translatable"}],"source":"storage","type":"nbt"}
title @a[tag=playing,tag=!ingame] subtitle {"nbt":"colors.spectator","storage":"minecraft:config","interpret":true,"extra":[{"translate":"generic.GetSet","bold":true,"type":"translatable"}],"source":"storage","type":"nbt"}
execute as @a[tag=playing] at @s run playsound minecraft:block.note_block.banjo master @s ~ ~ ~ 1 0.7
schedule function games:8/startchopping 1.5s
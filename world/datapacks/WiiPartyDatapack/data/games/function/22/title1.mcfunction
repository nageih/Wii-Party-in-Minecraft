title @a[tag=playing] title " "
title @a[team=blue] subtitle {"nbt":"colors.blue","storage":"minecraft:config","interpret":true,"extra":[{"translate":"generic.OnYourMarks","bold":true,"type":"translatable"}],"source":"storage","type":"nbt"}
title @a[team=red] subtitle {"nbt":"colors.red","storage":"minecraft:config","interpret":true,"extra":[{"translate":"generic.OnYourMarks","bold":true,"type":"translatable"}],"source":"storage","type":"nbt"}
title @a[team=green] subtitle {"nbt":"colors.green","storage":"minecraft:config","interpret":true,"extra":[{"translate":"generic.OnYourMarks","bold":true,"type":"translatable"}],"source":"storage","type":"nbt"}
title @a[team=orange] subtitle {"nbt":"colors.orange","storage":"minecraft:config","interpret":true,"extra":[{"translate":"generic.OnYourMarks","bold":true,"type":"translatable"}],"source":"storage","type":"nbt"}
title @a[tag=playing,tag=!ingame] subtitle {"nbt":"colors.spectator","storage":"minecraft:config","interpret":true,"extra":[{"translate":"On Your Marks...","bold":true}],"source":"storage","type":"nbt"}
execute as @a[tag=ingame] at @s run playsound minecraft:block.note_block.banjo master @a ~ ~ ~ 1 0.5
schedule function games:22/title2 2s
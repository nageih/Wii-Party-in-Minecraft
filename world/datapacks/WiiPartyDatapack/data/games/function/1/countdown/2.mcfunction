title @a[tag=playing] title " "
title @a[team=blue] subtitle {"nbt":"colors.blue","storage":"minecraft:config","interpret":true,"extra":[{"text":"2","bold":true,"type":"text"}],"source":"storage","type":"nbt"}
title @a[team=red] subtitle {"nbt":"colors.red","storage":"minecraft:config","interpret":true,"extra":[{"text":"2","bold":true,"type":"text"}],"source":"storage","type":"nbt"}
title @a[team=green] subtitle {"nbt":"colors.green","storage":"minecraft:config","interpret":true,"extra":[{"text":"2","bold":true,"type":"text"}],"source":"storage","type":"nbt"}
title @a[team=orange] subtitle {"nbt":"colors.orange","storage":"minecraft:config","interpret":true,"extra":[{"text":"2","bold":true,"type":"text"}],"source":"storage","type":"nbt"}
title @a[tag=playing,tag=!ingame] subtitle {"nbt":"colors.spectator","storage":"minecraft:config","interpret":true,"extra":[{"text":"2","bold":true,"type":"text"}],"source":"storage","type":"nbt"}
execute as @a[tag=playing] at @s run playsound minecraft:block.note_block.bit master @s ~ ~ ~ 1 0.9
schedule function games:1/countdown/1 1s
scoreboard players set ingame 8scores 2

title @a[tag=playing] subtitle " "
title @a[tag=ingame,team=blue] title {"nbt":"colors.blue","storage":"minecraft:config","interpret":true,"extra":[{"translate":"game.ChopChops.Start","bold":true,"type":"translatable"}],"source":"storage","type":"nbt"}
title @a[tag=ingame,team=red] title {"nbt":"colors.red","storage":"minecraft:config","interpret":true,"extra":[{"translate":"game.ChopChops.Start","bold":true,"type":"translatable"}],"source":"storage","type":"nbt"}
title @a[tag=ingame,team=green] title {"nbt":"colors.green","storage":"minecraft:config","interpret":true,"extra":[{"translate":"game.ChopChops.Start","bold":true,"type":"translatable"}],"source":"storage","type":"nbt"}
title @a[tag=ingame,team=orange] title {"nbt":"colors.orange","storage":"minecraft:config","interpret":true,"extra":[{"translate":"game.ChopChops.Start","bold":true,"type":"translatable"}],"source":"storage","type":"nbt"}
title @a[tag=playing,tag=!ingame] subtitle {"nbt":"colors.spectator","storage":"minecraft:config","interpret":true,"extra":[{"translate":"game.ChopChops.Start","bold":true,"type":"translatable"}],"source":"storage","type":"nbt"}
execute as @a[tag=playing] at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1 2
execute as @a[tag=playing] at @s run playsound ouo:start master @s ~ ~ ~ 3 1

### bossbar set minecraft:8bluechop players @a[team=blue]
### bossbar set minecraft:8redchop players @a[team=red]
### bossbar set minecraft:8greenchop players @a[team=green]
### bossbar set minecraft:8orangechop players @a[team=orange]

function games:8/play_song
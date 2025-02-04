title @a[tag=playing,tag=!ingame] title [{"translate":"board.Tiles.Final.Start","bold":true,"color":"light_purple"}]
title @a[tag=ingame,team=blue] title [{"translate":"board.Tiles.Final.Start","bold":true,"color":"#0088FF"}]
title @a[tag=ingame,team=red] title [{"translate":"board.Tiles.Final.Start","bold":true,"color":"red"}]
title @a[tag=ingame,team=green] title [{"translate":"board.Tiles.Final.Start","bold":true,"color":"green"}]
title @a[tag=ingame,team=orange] title [{"translate":"board.Tiles.Final.Start","bold":true,"color":"gold"}]
title @a[tag=playing] subtitle ""
execute at @a[tag=turn] run playsound minecraft:block.note_block.chime master @a ~ ~ ~ 20 0.25 1

schedule function board:tiles/final/explain 3s

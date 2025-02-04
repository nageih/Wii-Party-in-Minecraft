title @a[tag=playing,tag=!ingame] title [{"translate":"board.Tiles.Dragon.Start.Header","bold":true,"color":"light_purple"}]
title @a[tag=ingame,team=blue] title [{"translate":"board.Tiles.Dragon.Start.Header","bold":true,"color":"#0088FF"}]
title @a[tag=ingame,team=red] title [{"translate":"board.Tiles.Dragon.Start.Header","bold":true,"color":"red"}]
title @a[tag=ingame,team=green] title [{"translate":"board.Tiles.Dragon.Start.Header","bold":true,"color":"green"}]
title @a[tag=ingame,team=orange] title [{"translate":"board.Tiles.Dragon.Start.Header","bold":true,"color":"gold"}]
title @a[tag=playing,tag=!ingame] subtitle {"translate":"board.Tiles.Dragon.Start.Sub","color":"light_purple"}
title @a[tag=ingame,team=blue] subtitle {"translate":"board.Tiles.Dragon.Start.Sub","color":"#0088FF"}
title @a[tag=ingame,team=red] subtitle {"translate":"board.Tiles.Dragon.Start.Sub","color":"red"}
title @a[tag=ingame,team=green] subtitle {"translate":"board.Tiles.Dragon.Start.Sub","color":"green"}
title @a[tag=ingame,team=orange] subtitle {"translate":"board.Tiles.Dragon.Start.Sub","color":"gold"}
execute at @a[tag=turn] run playsound minecraft:block.note_block.iron_xylophone master @a ~ ~ ~ 20 0.5 1

scoreboard players set global tiles 2
clear @a[tag=turn] minecraft:carrot_on_a_stick[minecraft:custom_data={skip:1b}]
function board:dice_roll/give/normal

scoreboard players set dragonwall= tiles 1
scoreboard players set eventRoll= tiles 1
scoreboard players reset eventRoll diceRoll
scoreboard players reset addResult= tiles
scoreboard players set double= dice 0

scoreboard players set @a[tag=turn] boardPos 15


# I DOINT KNOW WHY BUT THIS NEEDS TO BE HERE AHHHHHHHH
fill -231 13 -15 -231 15 -15 barrier

function board:dice_roll/board_display

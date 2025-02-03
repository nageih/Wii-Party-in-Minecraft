scoreboard players set ribcage= tiles 1
scoreboard players set eventRoll= tiles 1
clear @a[tag=turn] minecraft:carrot_on_a_stick[minecraft:custom_data={skip:1b}]

scoreboard players set @a[tag=turn] boardPos 34

#titles
title @a[tag=playing,tag=!ingame] title {"translate":"tiles.Ribcage.StartHead","color":"light_purple","bold":true}
title @a[team=blue] title {"translate":"tiles.Ribcage.StartHead","color":"#0088FF","bold":true}
title @a[team=red] title {"translate":"tiles.Ribcage.StartHead","color":"red","bold":true}
title @a[team=green] title {"translate":"tiles.Ribcage.StartHead","color":"green","bold":true}
title @a[team=orange] title {"translate":"tiles.Ribcage.StartHead","color":"gold","bold":true}
title @a[tag=playing,tag=!ingame] subtitle {"translate":"tiles.Ribcage.StartSub","color":"light_purple","bold":true}
title @a[team=blue] subtitle {"translate":"tiles.Ribcage.StartSub","color":"#0088FF","bold":true}
title @a[team=red] subtitle {"translate":"tiles.Ribcage.StartSub","color":"red","bold":true}
title @a[team=green] subtitle {"translate":"tiles.Ribcage.StartSub","color":"green","bold":true}
title @a[team=orange] subtitle {"translate":"tiles.Ribcage.StartSub","color":"gold","bold":true}

execute at @a[tag=turn] run playsound minecraft:block.note_block.iron_xylophone master @a ~ ~ ~ 20 0.5 1

execute store result score ribcageResult= tiles run loot spawn 0 -70 0 loot board:event3
forceload add -1005 -967 -983 -1145

fill -225 27 122 -211 27 122 barrier replace minecraft:structure_void

function board:dice_roll/board_display
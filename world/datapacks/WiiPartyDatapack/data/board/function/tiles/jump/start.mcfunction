scoreboard players set jump= tiles 1
scoreboard players set eventRoll= tiles 1
clear @a[tag=turn] minecraft:carrot_on_a_stick[minecraft:custom_data={skip:1b}]


#titles
title @a[tag=playing,tag=!ingame] title {"translate":"tiles.Jump.StartHead","color":"light_purple","bold":true}
title @a[team=blue] title {"translate":"tiles.Jump.StartHead","color":"#0088FF","bold":true}
title @a[team=red] title {"translate":"tiles.Jump.StartHead","color":"red","bold":true}
title @a[team=green] title {"translate":"tiles.Jump.StartHead","color":"green","bold":true}
title @a[team=orange] title {"translate":"tiles.Jump.StartHead","color":"gold","bold":true}
title @a[tag=playing,tag=!ingame] subtitle {"translate":"tiles.Jump.StartSub","color":"light_purple","bold":false}
title @a[team=blue] subtitle {"translate":"tiles.Jump.StartSub","color":"#0088FF","bold":false}
title @a[team=red] subtitle {"translate":"tiles.Jump.StartSub","color":"red","bold":false}
title @a[team=green] subtitle {"translate":"tiles.Jump.StartSub","color":"green","bold":false}
title @a[team=orange] subtitle {"translate":"tiles.Jump.StartSub","color":"gold","bold":false}

execute at @a[tag=turn] run playsound minecraft:block.note_block.iron_xylophone master @a ~ ~ ~ 20 0.5 1

fill -218 43 52 -221 35 49 minecraft:structure_void replace minecraft:barrier
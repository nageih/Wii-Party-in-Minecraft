title @a[tag=playing,tag=!ingame] title [{"translate":"board.Tiles.RopeSwing.Start","bold":true,"color":"light_purple"}]
title @a[tag=ingame,team=blue] title [{"translate":"board.Tiles.RopeSwing.Start","bold":true,"color":"#0088FF"}]
title @a[tag=ingame,team=red] title [{"translate":"board.Tiles.RopeSwing.Start","bold":true,"color":"red"}]
title @a[tag=ingame,team=green] title [{"translate":"board.Tiles.RopeSwing.Start","bold":true,"color":"green"}]
title @a[tag=ingame,team=orange] title [{"translate":"board.Tiles.RopeSwing.Start","bold":true,"color":"gold"}]
title @a subtitle " "
execute at @a[tag=turn] run playsound minecraft:block.note_block.iron_xylophone master @a ~ ~ ~ 20 0.5 1
tp @a[tag=turn] -286 21 31
scoreboard players set global tiles 1
clear @a[tag=turn] minecraft:carrot_on_a_stick[minecraft:custom_data={skip:1b}]
function board:dice_roll/give/normal
execute if score @a[tag=turn,limit=1] newBoardPos matches 6 run scoreboard players set if6 tiles 1

scoreboard players set ropeswing= tiles 1
scoreboard players set eventRoll= tiles 1
scoreboard players reset addResult= tiles
scoreboard players set double= dice 0

scoreboard players set @a[tag=turn] boardPos 6

summon armor_stand -286 21 31 {Invulnerable:1b,Invisible:1b,Tags:["ropeposition"],NoGravity:1b,attributes:[{id:"minecraft:generic.scale",base:0.1}]}

function general:island/barrierstostruct

function board:dice_roll/board_display

execute if score global tiles matches 2 run scoreboard players set global2 tiles 2
scoreboard players set global tiles 0
schedule function board:tiles/spikeball/reset 3s
function board:tiles/spikeball/failanim
schedule function board:dice_roll/end_go 3s
scoreboard players set @a[tag=turn] boardBos 15
title @a[tag=playing,tag=!ingame] title [{"translate":"board.DiceRoll.RollResult4th","color":"light_purple","with":[{"selector":"@a[tag=turn]","color":"light_purple"},{"score":{"name":"eventRoll=","objective":"diceRoll"}}]}]
title @a[tag=ingame,team=blue] title [{"translate":"board.DiceRoll.RollResult4th","color":"#0088FF","with":[{"selector":"@a[tag=turn]","color":"#0088FF"},{"score":{"name":"eventRoll=","objective":"diceRoll"}}]}]
title @a[tag=ingame,team=red] title [{"translate":"board.DiceRoll.RollResult4th","color":"red","with":[{"selector":"@a[tag=turn]","color":"red"},{"score":{"name":"eventRoll=","objective":"diceRoll"}}]}]
title @a[tag=ingame,team=green] title [{"translate":"board.DiceRoll.RollResult4th","color":"green","with":[{"selector":"@a[tag=turn]","color":"green"},{"score":{"name":"eventRoll=","objective":"diceRoll"}}]}]
title @a[tag=ingame,team=orange] title [{"translate":"board.DiceRoll.RollResult4th","color":"gold","with":[{"selector":"@a[tag=turn]","color":"gold"},{"score":{"name":"eventRoll=","objective":"diceRoll"}}]}]
title @a[tag=playing,tag=!ingame] subtitle {"translate":"board.Tiles.SpikeBall.Fail","color":"light_purple","bold":true}
title @a[tag=ingame,team=blue] subtitle {"translate":"board.Tiles.SpikeBall.Fail","color":"#0088FF","bold":true}
title @a[tag=ingame,team=red] subtitle {"translate":"board.Tiles.SpikeBall.Fail","color":"red","bold":true}
title @a[tag=ingame,team=green] subtitle {"translate":"board.Tiles.SpikeBall.Fail","color":"green","bold":true}
title @a[tag=ingame,team=orange] subtitle {"translate":"board.Tiles.SpikeBall.Fail","color":"gold","bold":true}
execute at @a[tag=turn] run playsound minecraft:block.note_block.iron_xylophone master @a ~ ~ ~ 20 0.5 1

function general:island/barrierstostruct
function board:dice_roll/prevent/clear_back
function board:dice_roll/prevent/clear_too_far
execute as @a[tag=turn] at @s run function board:tiles/spikeball/knockback

execute if score spikeRoll= tiles matches 3.. run scoreboard players remove spikeRoll= tiles 1
function board:tiles/spikeball/setdisplay

# Sets all the diceDespawn timers to the duration= score so that they both explode at the same time
scoreboard players operation @e[type=minecraft:chicken,tag=diceroll] diceDespawn = duration= diceDespawn

scoreboard players set @a[tag=turn] boardPos 66
scoreboard players set @a[tag=turn] newBoardPos 66
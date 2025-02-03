execute if score global tiles matches 2 run scoreboard players set global2 tiles 2
scoreboard players set global tiles 0
schedule function board:tiles/final/reset 4s
schedule function board:tiles/final/failanim 2s
schedule function board:dice_roll/end_go 4s
scoreboard players set @a[tag=turn] boardBos 15
title @a[tag=playing,tag=!ingame] title [{"translate":"board.DiceRoll.RollResult4th","color":"light_purple","with":[{"selector":"@a[tag=turn]","color":"light_purple"},{"score":{"name":"eventRoll=","objective":"diceRoll"}}]}]
title @a[tag=ingame,team=blue] title [{"translate":"board.DiceRoll.RollResult4th","color":"#0088FF","with":[{"selector":"@a[tag=turn]","color":"#0088FF"},{"score":{"name":"eventRoll=","objective":"diceRoll"}}]}]
title @a[tag=ingame,team=red] title [{"translate":"board.DiceRoll.RollResult4th","color":"red","with":[{"selector":"@a[tag=turn]","color":"red"},{"score":{"name":"eventRoll=","objective":"diceRoll"}}]}]
title @a[tag=ingame,team=green] title [{"translate":"board.DiceRoll.RollResult4th","color":"green","with":[{"selector":"@a[tag=turn]","color":"green"},{"score":{"name":"eventRoll=","objective":"diceRoll"}}]}]
title @a[tag=ingame,team=orange] title [{"translate":"board.DiceRoll.RollResult4th","color":"gold","with":[{"selector":"@a[tag=turn]","color":"gold"},{"score":{"name":"eventRoll=","objective":"diceRoll"}}]}]
title @a[tag=playing,tag=!ingame] subtitle {"translate":"tiles.Final.Fail","color":"light_purple","bold":true}
title @a[tag=ingame,team=blue] subtitle {"translate":"tiles.Final.Fail","color":"#0088FF","bold":true}
title @a[tag=ingame,team=red] subtitle {"translate":"tiles.Final.Fail","color":"red","bold":true}
title @a[tag=ingame,team=green] subtitle {"translate":"tiles.Final.Fail","color":"green","bold":true}
title @a[tag=ingame,team=orange] subtitle {"translate":"tiles.Final.Fail","color":"gold","bold":true}
execute at @a[tag=turn] run playsound block.note_block.imitate.ender_dragon master @a ~ ~ ~ 20 1 1

# Sets all the diceDespawn timers to the duration= score so that they both explode at the same time
scoreboard players operation @e[type=minecraft:chicken,tag=diceroll] diceDespawn = duration= diceDespawn

tellraw @a[tag=playing] [{"translate":"tiles.Final.NextRound","color":"gray"}]

scoreboard players set rolling= dice 0
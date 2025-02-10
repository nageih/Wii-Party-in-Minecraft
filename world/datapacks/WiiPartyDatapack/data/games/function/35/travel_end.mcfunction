tag @a remove 35move
scoreboard players set travel= 35scores 0
schedule clear games:35/travel_end

execute as @a[tag=35move] at @s run function games:35/step_auto
execute as @a[tag=35move] at @s run function games:35/travel_reach

execute if entity @a[tag=ingame,tag=35finished] run return fail

title @a[tag=ingame,team=blue] title {"translate":"game.StrategySteps.RoundOver","color":"#0088ff"}
title @a[tag=ingame,team=red] title {"translate":"game.StrategySteps.RoundOver","color":"red"}
title @a[tag=ingame,team=green] title {"translate":"game.StrategySteps.RoundOver","color":"green"}
title @a[tag=ingame,team=orange] title {"translate":"game.StrategySteps.RoundOver","color":"gold"}

execute as @a[tag=playing] at @s run playsound block.note_block.bell master @s

execute unless entity @a[tag=ingame,scores={35step=12..}] run schedule function games:35/start_countdown 1s
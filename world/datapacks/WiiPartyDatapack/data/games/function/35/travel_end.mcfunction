tag @a remove 35move
scoreboard players set travel= 35scores 0
schedule clear games:35/travel_end

execute as @a[tag=35move] at @s run function games:35/step_auto
execute as @a[tag=35move] at @s run function games:35/travel_end

execute unless entity @a[tag=ingame,scores={35step=12..}] run schedule function games:35/start_countdown 1s
execute if entity @a[tag=ingame,scores={35step=12..}] run schedule function games:35/finish 1s
advancement revoke @s only games:3/left_click
advancement revoke @s only games:3/right_click

execute unless score ingame 3scores matches 3 run return fail

execute if entity @s[team=blue] as @e[type=minecraft:falling_block,tag=barrel,tag=!stopped,tag=blue] at @s run function games:3/stop_barrel
execute if entity @s[team=red] as @e[type=minecraft:falling_block,tag=barrel,tag=!stopped,tag=red] at @s run function games:3/stop_barrel
execute if entity @s[team=green] as @e[type=minecraft:falling_block,tag=barrel,tag=!stopped,tag=green] at @s run function games:3/stop_barrel
execute if entity @s[team=orange] as @e[type=minecraft:falling_block,tag=barrel,tag=!stopped,tag=orange] at @s run function games:3/stop_barrel

execute if entity @s[team=blue] as @a[tag=ingame,tag=!stopped,team=blue] at @s run tag @s add stopped
execute if entity @s[team=red] as @a[tag=ingame,tag=!stopped,team=red] at @s run tag @s add stopped
execute if entity @s[team=green] as @a[tag=ingame,tag=!stopped,team=green] at @s run tag @s add stopped
execute if entity @s[team=orange] as @a[tag=ingame,tag=!stopped,team=orange] at @s run tag @s add stopped

execute if entity @s[team=blue] as @e[type=item_display,tag=3button,tag=blue] run data modify entity @s item.components.minecraft:custom_model_data set value 3002
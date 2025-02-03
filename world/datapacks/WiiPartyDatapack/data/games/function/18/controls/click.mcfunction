scoreboard players set success= 18scores 0
execute if score success= 18scores matches 0 if entity @s[team=blue] as @e[type=minecraft:armor_stand,tag=blue,tag=selected] run function games:18/controls/place
execute store success score success= 18scores if entity @s[team=blue] unless entity @e[type=minecraft:armor_stand,tag=blue,tag=selected] run function games:18/controls/lift

execute if score success= 18scores matches 0 if entity @s[team=red] as @e[type=minecraft:armor_stand,tag=red,tag=selected] run function games:18/controls/place
execute store success score success= 18scores if entity @s[team=red] unless entity @e[type=minecraft:armor_stand,tag=red,tag=selected] run function games:18/controls/lift

execute if score success= 18scores matches 0 if entity @s[team=green] as @e[type=minecraft:armor_stand,tag=green,tag=selected] run function games:18/controls/place
execute store success score success= 18scores if entity @s[team=green] unless entity @e[type=minecraft:armor_stand,tag=green,tag=selected] run function games:18/controls/lift

execute if score success= 18scores matches 0 if entity @s[team=orange] as @e[type=minecraft:armor_stand,tag=orange,tag=selected] run function games:18/controls/place
execute store success score success= 18scores if entity @s[team=orange] unless entity @e[type=minecraft:armor_stand,tag=orange,tag=selected] run function games:18/controls/lift
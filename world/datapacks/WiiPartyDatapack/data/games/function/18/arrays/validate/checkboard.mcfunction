scoreboard players set check= 18scores 0

execute if entity @s[tag=blue] as @e[type=minecraft:armor_stand,tag=game18,tag=placed,tag=blue] run scoreboard players add check= 18scores 1
execute if entity @s[tag=red] as @e[type=minecraft:armor_stand,tag=game18,tag=placed,tag=red] run scoreboard players add check= 18scores 1
execute if entity @s[tag=green] as @e[type=minecraft:armor_stand,tag=game18,tag=placed,tag=green] run scoreboard players add check= 18scores 1
execute if entity @s[tag=orange] as @e[type=minecraft:armor_stand,tag=game18,tag=placed,tag=orange] run scoreboard players add check= 18scores 1

execute if score check= 18scores matches 6 run function games:18/arrays/validate/checkpos
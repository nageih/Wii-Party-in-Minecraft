tag @s add currentP

execute if block ~ ~-12 ~ minecraft:magenta_concrete as @e[type=minecraft:armor_stand,tag=firework,tag=!double,sort=nearest,limit=1] if entity @s[tag=!chosen] run tag @a[tag=currentP] add lookedAt

execute if entity @s[scores={rightClick=1..}] if block ~ ~-12 ~ minecraft:magenta_concrete as @e[type=minecraft:armor_stand,tag=firework,tag=!double,sort=nearest,limit=1] at @s if entity @s[tag=!selected] run function games:5/select_firework
execute if entity @s[scores={rightClick=1..},team=blue] if block ~ ~-12 ~ minecraft:magenta_concrete as @e[type=minecraft:armor_stand,tag=firework,tag=!double,sort=nearest,limit=1] at @s if entity @s[tag=selected,team=blue] run function games:5/deselect_firework
execute if entity @s[scores={rightClick=1..},team=red] if block ~ ~-12 ~ minecraft:magenta_concrete as @e[type=minecraft:armor_stand,tag=firework,tag=!double,sort=nearest,limit=1] at @s if entity @s[tag=selected,team=red] run function games:5/deselect_firework
execute if entity @s[scores={rightClick=1..},team=green] if block ~ ~-12 ~ minecraft:magenta_concrete as @e[type=minecraft:armor_stand,tag=firework,tag=!double,sort=nearest,limit=1] at @s if entity @s[tag=selected,team=green] run function games:5/deselect_firework
execute if entity @s[scores={rightClick=1..},team=orange] if block ~ ~-12 ~ minecraft:magenta_concrete as @e[type=minecraft:armor_stand,tag=firework,tag=!double,sort=nearest,limit=1] at @s if entity @s[tag=selected,team=orange] run function games:5/deselect_firework

scoreboard players add currentRay= 5scores 1

execute unless score currentRay= 5scores matches 50.. positioned ^ ^ ^.5 run function games:5/raycast

scoreboard players reset currentRay= 5scores

tag @s remove currentP
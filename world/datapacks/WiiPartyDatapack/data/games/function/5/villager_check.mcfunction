execute if score @s 5detonate matches 1.. as @e[type=minecraft:villager,tag=detonator] positioned ~-0.3 ~-0.3 ~-0.3 if entity @s[dx=0] at @s run function games:5/activate

scoreboard players add currentRay= 5scores 1

execute unless score currentRay= 5scores matches 30.. positioned ^ ^ ^.5 run function games:5/villager_check

scoreboard players reset currentRay= 5scores
#Check if an entity was detected.

execute if score hit= 36scores matches 0 positioned ~-0.05 ~-0.05 ~-0.05 as @e[type=item_display,tag=36card,tag=36active,tag=!36selected,tag=!36finish,distance=..2,sort=nearest] run function games:36/raycast_check

#Run a function if a block was successfully detected.

execute unless block ~ ~ ~ air unless block ~ ~ ~ barrier run scoreboard players set hit= 36scores 1
scoreboard players add distance= 36scores 1

#particle flame ~ ~ ~ 0 0 0 0 1

execute if score hit= 36scores matches 0 if score distance= 36scores matches ..100 positioned ^ ^ ^0.25 run function games:36/raycast
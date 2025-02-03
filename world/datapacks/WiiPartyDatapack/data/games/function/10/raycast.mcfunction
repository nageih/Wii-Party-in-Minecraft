#Check if an entity was detected.

execute if score hit= 10scores matches 0 positioned ~-0.05 ~-0.05 ~-0.05 as @e[type=magma_cube,tag=10tempcan,tag=!10ray,dx=0,sort=nearest] run function games:10/check_hit

#Run a function if a block was successfully detected.

execute unless block ~ ~ ~ air run scoreboard players set hit= 10scores 1
scoreboard players add distance= 10scores 1

#Advance forward and run the ray again if no entity and/or block was found.

#particle flame ~ ~ ~ 0 0 0 0 1

execute if score hit= 10scores matches 0 if score distance= 10scores matches ..1000 positioned ^ ^ ^0.05 run function games:10/raycast
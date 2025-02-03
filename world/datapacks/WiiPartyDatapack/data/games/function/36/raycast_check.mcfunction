#Checks if an entity is found, and if so, runs the corresponding function.

execute if score hit= 36scores matches 0 positioned ~.5 ~.5 ~.5 as @s[distance=..2] run function games:36/raycast_hit

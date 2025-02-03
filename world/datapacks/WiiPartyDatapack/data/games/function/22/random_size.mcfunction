# Stores the value of a 1-4 loot table in the 22size score of the ball running the command
execute store result score @s 22size run loot spawn 0 -70 0 loot games:22size

function games:22/scale_ball

# Removes the balls temp tag to show that its been given a random size
tag @s remove temp
tag @s remove 23left
tag @s remove 23forward
tag @s remove 23right

execute store result score random= 23scores run loot spawn ~ -70 ~ loot games:23direction

execute if score random= 23scores matches 1 run tag @s add 23left
execute if score random= 23scores matches 2 run tag @s add 23forward
execute if score random= 23scores matches 3 run tag @s add 23right

function games:23/tilt_cart
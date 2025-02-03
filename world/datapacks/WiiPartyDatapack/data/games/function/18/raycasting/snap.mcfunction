execute store result score xoffset= 18scores run data get entity @s ArmorItems[3].components."minecraft:custom_data".Data.Offset[0]
execute store result score yoffset= 18scores run data get entity @s ArmorItems[3].components."minecraft:custom_data".Data.Offset[1]

execute if score xoffset= 18scores matches 1 if score yoffset= 18scores matches 1 at @s align xz run tp ~.5 40.1 ~.5
execute if score xoffset= 18scores matches 1 if score yoffset= 18scores matches 0 at @s positioned ~ ~ ~.5 align xz run tp ~.5 40.1 ~
execute if score xoffset= 18scores matches 0 if score yoffset= 18scores matches 1 at @s positioned ~.5 ~ ~ align xz run tp ~ 40.1 ~.5
execute if score xoffset= 18scores matches 0 if score yoffset= 18scores matches 0 at @s positioned ~.5 ~ ~.5 align xz run tp ~ 40.1 ~

function games:18/raycasting/getrelcoords
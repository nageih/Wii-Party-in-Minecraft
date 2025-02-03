scoreboard players add @s 23moveside 1

$execute if score @s 23moveside matches ..16 run tp @s ~ ~ ~$(x)125

execute if score @s 23moveside matches 17 run tag @s remove 23moveleft
execute if score @s 23moveside matches 17 run tag @s remove 23moveright
execute if score @s 23moveside matches 17 run scoreboard players reset @s 23moveside
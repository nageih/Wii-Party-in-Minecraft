#execute store result score @s 13finalpos run data get entity @s Pos[2]
#execute store result score players 13scores if entity @a[tag=ingame]
#
##for 2+ players
#scoreboard players set max 13scores -2147483648
#scoreboard players operation max 13scores > @a[tag=ingame,tag=!1st] 13finalpos
#execute as @a if score @s 13finalpos = max 13scores run tag @s add 2nd
#
##for 3+ players
#execute if score players 13scores matches 3..4 run scoreboard players set max 13scores -2147483648
#execute if score players 13scores matches 3..4 run scoreboard players operation max 13scores > @a[tag=ingame,tag=!1st] 13finalpos
#execute if score players 13scores matches 3..4 as @a if score @s 13finalpos = max 13scores run tag @s add 3rd
#
##for 4 players
#execute if score players 13scores matches 4 run scoreboard players set max 13scores -2147483648
#execute if score players 13scores matches 4 run scoreboard players operation max 13scores > @a[tag=ingame,tag=!1st] 13finalpos
#execute if score players 13scores matches 4 as @a if score @s 13finalpos = max 13scores run tag @s add 4th

execute if entity @a[tag=3rd,tag=!dead] run tag @s add 4th
execute unless entity @a[tag=3rd] if entity @a[tag=2nd] run tag @s add 3rd
execute unless entity @a[tag=2nd] run tag @s add 2nd

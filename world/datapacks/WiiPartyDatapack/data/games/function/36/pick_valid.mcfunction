scoreboard players add phase= 36scores 1


execute as @a[tag=ingame,tag=36turn] if score phase= 36scores matches 2 if score @s 36furthest matches 0 run scoreboard players set @s 36furthest 1
execute as @a[tag=ingame,tag=36turn] if score phase= 36scores matches 3 if score @s 36furthest matches ..1 run scoreboard players set @s 36furthest 2
execute as @a[tag=ingame,tag=36turn] if score phase= 36scores matches 4 if score @s 36furthest matches ..2 run scoreboard players set @s 36furthest 3
function games:36/display

execute as @e[type=item_display,tag=36card] run data merge entity @s {Glowing:0b}

execute if score phase= 36scores matches 2 run tag @e[type=item_display,tag=36card,tag=phase2] add 36active 
execute if score phase= 36scores matches 3 run tag @e[type=item_display,tag=36card,tag=phase3] add 36active 
execute if score phase= 36scores matches 4 as @a[tag=ingame,tag=36turn] at @s run function games:36/win

execute as @e[type=item_display,tag=36card,tag=36active,tag=!36finish] run data merge entity @s {Glowing:1b}

execute as @a[tag=playing] at @s run playsound block.note_block.chime master @s

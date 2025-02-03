#   Author        =   @ JevinLevin
#   Description   =   Gives the players their placement tags (1st, 2nd, 3rd, 4th)
#   Called By     =   games:26/end_game


scoreboard players set max= 5scores 0
scoreboard players operation max= 5scores > @a[tag=ingame] 5scores
execute as @a[tag=ingame] if score @s 5scores = max= 5scores run tag @s add 1st
execute as @a[tag=ingame] if score @s 5scores = max= 5scores run tag @s add scored
scoreboard players set max= 5scores 0
scoreboard players operation max= 5scores > @a[tag=ingame,tag=!scored] 5scores
execute as @a[tag=ingame,tag=!scored] if score @s 5scores = max= 5scores run tag @s add 2nd
execute as @a[tag=ingame,tag=!scored] if score @s 5scores = max= 5scores run tag @s add scored
scoreboard players set max= 5scores 0
scoreboard players operation max= 5scores > @a[tag=ingame,tag=!scored] 5scores
execute as @a[tag=ingame,tag=!scored] if score @s 5scores = max= 5scores run tag @s add 3rd
execute as @a[tag=ingame,tag=!scored] if score @s 5scores = max= 5scores run tag @s add scored
scoreboard players set max= 5scores 0
scoreboard players operation max= 5scores > @a[tag=ingame,tag=!scored] 5scores
execute as @a[tag=ingame,tag=!scored] if score @s 5scores = max= 5scores run tag @s add 4th
execute as @a[tag=ingame,tag=!scored] if score @s 5scores = max= 5scores run tag @s add scored
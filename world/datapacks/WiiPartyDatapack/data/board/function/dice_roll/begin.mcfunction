
scoreboard players add round= game 1

execute if score round= game matches 3 run data merge entity @n[type=text_display,tag=graphKey,tag=blue] {text:'{"bold":true,"color":"#0088FF","selector":"@r[tag=ingame,team=blue]"}'}
execute if score round= game matches 3 run data merge entity @n[type=text_display,tag=graphKey,tag=red] {text:'{"bold":true,"color":"red","selector":"@r[tag=ingame,team=red]"}'}
execute if score round= game matches 3 run data merge entity @n[type=text_display,tag=graphKey,tag=green] {text:'{"bold":true,"color":"green","selector":"@r[tag=ingame,team=green]"}'}
execute if score round= game matches 3 run data merge entity @n[type=text_display,tag=graphKey,tag=orange] {text:'{"bold":true,"color":"gold","selector":"@r[tag=ingame,team=orange]"}'}


scoreboard objectives add boardDisplay dummy {"translate":"board.Scoreboard","color":"light_purple","bold":true,"underlined": true}
scoreboard objectives setdisplay sidebar boardDisplay

clear @a[tag=ingame] carrot_on_a_stick

execute as @a[tag=1st,limit=1,sort=random] at @s run function board:dice_roll/start

execute unless score errupted= tiles matches 1 run function board:dice_roll/tile_names

execute if score errupted= tiles matches 1 run function board:tiles/volcano/tile_names
execute if score errupted= tiles matches 1 run time set 23300t

scoreboard players reset @a diceRoll

tag @a[scores={newBoardPos=100..}] add volcano


function board:dice_roll/play_song


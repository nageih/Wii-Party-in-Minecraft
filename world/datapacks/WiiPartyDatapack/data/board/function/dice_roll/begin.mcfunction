
scoreboard players add round= game 1

scoreboard objectives add boardDisplay dummy {"translate":"board.Scoreboard","color":"light_purple","bold":true,"underlined": true}
scoreboard objectives setdisplay sidebar boardDisplay

clear @a[tag=ingame] carrot_on_a_stick

execute as @a[tag=1st,limit=1,sort=random] at @s run function board:dice_roll/start

execute unless score errupted= tiles matches 1 run function board:dice_roll/tile_names

execute if score errupted= tiles matches 1 run function board:tiles/volcano/tile_names
execute if score errupted= tiles matches 1 run time set 23300t

scoreboard players reset @a diceRoll

tag @a[scores={newBoardPos=100..}] add volcano

execute as @a[tag=playing] at @s run playsound music:board_game_island voice @s


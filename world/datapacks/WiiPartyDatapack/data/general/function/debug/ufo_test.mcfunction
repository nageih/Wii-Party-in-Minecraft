team leave @a

scoreboard players add ufotest test 1

tag @a add ingame
tag @a add playing
# tag @s add turn
tag @s add 3rd

function general:debug/random_teams
scoreboard players set @a boardPos 0

function board:dice_roll/start

#function board:tiles/ufo/start

scoreboard objectives setdisplay sidebar test
team leave @a

scoreboard players add ufotest test 1

tag @a add ingame
tag @a add playing
# tag @s add turn
tag @s add 1st
tag @s add volcano

function general:debug/random_teams
scoreboard players set @a boardPos 0
scoreboard players set @s boardPos 100

scoreboard players set @s skullReturnTile 33 

function board:dice_roll/start

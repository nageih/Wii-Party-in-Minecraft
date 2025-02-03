execute if score wasFinal= lobby matches 1 run function lobby:play_victory
execute unless score wasFinal= lobby matches 1 as @a at @s run playsound music:main_menu voice @s
scoreboard players reset wasFinal= lobby

scoreboard players set playing= lobby 0
scoreboard players reset global minigame

tag @a remove ingame
tag @a remove playing
tag @a remove 1st
tag @a remove 2nd
tag @a remove 3rd
tag @a remove 4th
tag @a remove solo
tag @a remove player1
tag @a remove player2

schedule clear board:draw/startstart
schedule clear lobby:return_to_lobby
schedule clear general:fade/main

gamemode adventure @a

effect clear @a night_vision

execute as @a run trigger endGame set 0

clear @a

execute as @a run function lobby:teleport

function lobby:display
scoreboard objectives setdisplay sidebar lobbyDisplay

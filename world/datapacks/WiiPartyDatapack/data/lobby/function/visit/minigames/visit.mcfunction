tag @s add islandVisit

execute at @s run playsound block.note_block.pling master @s ~ ~ ~ 10

tellraw @s ""
tellraw @s[tag=!lobbyParkour] {"translate":"lobby.Visit.Guide","color":"gray"}
tellraw @s[tag=lobbyParkour] {"translate":"lobby.Parkour.Guide","color":"gray"}
tellraw @s ""
tellraw @s {"translate":"lobby.Island.Guide2","color":"gray","with":[{"text":"/trigger islandReturn","color":"light_purple","bold":true}]}
tellraw @s[tag=!lobbyParkour] ""
tellraw @s[tag=!lobbyParkour] {"translate":"lobby.Island.Guide3","color":"gray","with":[{"text":"/trigger islandSpectate","color":"light_purple","bold":true}]}
tellraw @s[tag=!lobbyParkour] ""
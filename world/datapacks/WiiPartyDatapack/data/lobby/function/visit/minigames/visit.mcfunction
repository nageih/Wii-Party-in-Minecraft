tag @s add islandVisit

execute at @s run playsound block.note_block.pling master @s ~ ~ ~ 10

tellraw @s ""
tellraw @s[tag=!lobbyParkour] {"translate":"lobby.Minigames.Guide","color":"gray"}
tellraw @s[tag=lobbyParkour] {"translate":"lobby.Parkour.Guide","color":"gray"}
tellraw @s ""
tellraw @s {"translate":"lobby.Island.Guide2","color":"gray","with":[{"translate":"command.islandReturn","color":"light_purple","bold":true}]}
tellraw @s[tag=!lobbyParkour] ""
tellraw @s[tag=!lobbyParkour] {"translate":"lobby.Island.Guide3","color":"gray","with":[{"translate":"command.islandSpectate","color":"light_purple","bold":true}]}
tellraw @s[tag=!lobbyParkour] ""
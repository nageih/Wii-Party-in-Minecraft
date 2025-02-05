scoreboard objectives add lobbyDisplay dummy ""

# Resets the scoreboard and all the scores
scoreboard players reset * lobbyDisplay

team add t.Pink
team modify t.Pink color light_purple

team join displayline10 §l
team join displayline9 §l§l
team join displayline8 §l§l§l
team join displayline7 §l§l§l§l
team join displayline6 §l§l§l§l§l
team join displayline5 §l§l§l§l§l§l
team join displayline4 §l§l§l§l§l§l§l
team join displayline3 §l§l§l§l§l§l§l§l
team join displayline2 §l§l§l§l§l§l§l§l§l
team join displayline1 §l§l§l§l§l§l§l§l§l§l

#scoreboard players set §r lobbyDisplay 99
scoreboard players set §l§r lobbyDisplay 98
scoreboard players set §l lobbyDisplay 97
scoreboard players set §l§l lobbyDisplay 96
scoreboard players set §l§r§r lobbyDisplay 95
scoreboard players set §l§r§r§r lobbyDisplay 95

scoreboard players set §l§l§l lobbyDisplay 94
scoreboard players set §l§l§l§l lobbyDisplay 92
scoreboard players set §l§r§r§r§r lobbyDisplay 92



team modify displayline10 prefix [{"translate":"lobby.Display.Welcome.1","color":"light_purple"}]
team modify displayline9 prefix [{"translate":"lobby.Display.Welcome.2","color":"light_purple","with":[{"translate":"generic.Name","bold":false}]}]

team modify displayline8 prefix [{"translate":"lobby.Display.Join1","color":"gray"}]
team modify displayline7 prefix [{"translate":"lobby.Display.Join2","color":"gray"}]






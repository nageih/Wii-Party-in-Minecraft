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



team modify displayline10 prefix [{"text":"      ","color":"light_purple"},{"translate":"lobby.Display.Welcome","bold":true,"underlined":false}]
team modify displayline9 prefix [{"text":"","color":"light_purple"},{"translate":"lobby.Name","bold":false}]

team modify displayline8 prefix [{"text":"      ","color":"gray"},{"translate":"lobby.Display.Join1"}]
team modify displayline7 prefix [{"text":"      ","color":"gray"},{"text":"\uF838\uF833","font":"minecraft:space"},{"translate":"lobby.Display.Join2"}]




# team modify t.Blue suffix [{"text":""},{"text":"\uF839","font":"minecraft:space"},{"text":"    "},{"translate":"generic.BlueTeam","color":"#0088ff","bold":true}]
# team modify t.Red suffix [{"text":""},{"text":"\uF839\uF831","font":"minecraft:space"},{"text":"    "},{"translate":"generic.RedTeam","color":"red","bold":true}]
# team modify t.Green suffix [{"text":""},{"text":"\uF838\uF832","font":"minecraft:space"},{"text":"    "},{"translate":"generic.GreenTeam","color":"green","bold":true}]
# team modify t.Orange suffix [{"text":""},{"text":"\uF836\uF831","font":"minecraft:space"},{"text":"    "},{"translate":"generic.OrangeTeam","color":"gold","bold":true}]


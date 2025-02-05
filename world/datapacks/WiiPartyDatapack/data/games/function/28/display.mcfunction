#   Author        =   @ JevinLevin
#   Description   =   Handles the sidebar scoreboard. Is run at the start and whenever a player dies
#   Called By     =   games:2/start + games:2/ifhit

# Resets the scoreboard and all the scores
scoreboard players reset * 28display

# If there is an entity on the team, it will add the teams name to the scoreboard
team join t.Blue §l
execute as @a[tag=ingame,team=blue] run scoreboard players set §l 28display 12
team join t.Red §l§l
execute as @a[tag=ingame,team=red] run scoreboard players set §l§l 28display 9
team join t.Green §l§l§l
execute as @a[tag=ingame,team=green] run scoreboard players set §l§l§l 28display 6
team join t.Orange §l§l§l§l
execute as @a[tag=ingame,team=orange] run scoreboard players set §l§l§l§l 28display 3

# Adds the blank lines in the scoreboard depending on if teams are present
scoreboard players set §r 28display 13
execute as @a[tag=ingame,team=blue] run scoreboard players set §r§r 28display 10
execute as @a[tag=ingame,team=red] run scoreboard players set §r§r§r 28display 7
execute as @a[tag=ingame,team=green] run scoreboard players set §r§r§r§r 28display 4
execute as @a[tag=ingame,team=orange] run scoreboard players set §r§r§r§r§r 28display 1

execute as @a[tag=ingame,team=blue] run scoreboard players set §0§0§0§0§0§0§0§0§0§0§0 28display 11
execute as @a[tag=ingame,team=red] run scoreboard players set §0§0§0§0§0§0§0§0 28display 8
execute as @a[tag=ingame,team=green] run scoreboard players set §0§0§0§0§0 28display 5
execute as @a[tag=ingame,team=orange] run scoreboard players set §0§0 28display 2

# Displays specific symbols that represent the number of times the player has taken damage by checking their 1damage score
    # Blue team
execute as @a[tag=ingame,team=blue,tag=!28stopped] run team modify displayline11 prefix {"translate":"scoreboard.StopWatchers","with":[{"text":"scoreboard.StopWatchers.Symbol","color":"gray"}]}
execute as @a[tag=ingame,team=blue,tag=28stopped] run team modify displayline11 prefix {"translate":"scoreboard.StopWatchers","with":[{"text":"scoreboard.StopWatchers.Symbol","color":"#0088ff"}]}
    # Red team
execute as @a[tag=ingame,team=red,tag=!28stopped] run team modify displayline8 prefix {"translate":"scoreboard.StopWatchers","with":[{"text":"scoreboard.StopWatchers.Symbol","color":"gray"}]}
execute as @a[tag=ingame,team=red,tag=28stopped] run team modify displayline8 prefix {"translate":"scoreboard.StopWatchers","with":[{"text":"scoreboard.StopWatchers.Symbol","color":"red"}]}
    # Green team
execute as @a[tag=ingame,team=green,tag=!28stopped] run team modify displayline5 prefix {"translate":"scoreboard.StopWatchers","with":[{"text":"scoreboard.StopWatchers.Symbol","color":"gray"}]}
execute as @a[tag=ingame,team=green,tag=28stopped] run team modify displayline5 prefix {"translate":"scoreboard.StopWatchers","with":[{"text":"scoreboard.StopWatchers.Symbol","color":"green"}]}
    # Orange team
execute as @a[tag=ingame,team=orange,tag=!28stopped] run team modify displayline2 prefix {"translate":"scoreboard.StopWatchers","with":[{"text":"scoreboard.StopWatchers.Symbol","color":"gray"}]}
execute as @a[tag=ingame,team=orange,tag=28stopped] run team modify displayline2 prefix {"translate":"scoreboard.StopWatchers","with":[{"text":"scoreboard.StopWatchers.Symbol","color":"gold"}]}
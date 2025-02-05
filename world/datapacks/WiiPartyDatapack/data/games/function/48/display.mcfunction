#   Author        =   @ JevinLevin
#   Description   =   Handles the sidebar scoreboard. Is run at the start and whenever a player dies
#   Called By     =   games:48/start + games:4/die

scoreboard objectives add 48display dummy {"translate":"game.MazeDazeName","bold":true}

# Resets the scoreboard and all the scores
scoreboard players reset * 48display

# If there is an entity on the team, it will add the teams name to the scoreboard
team join t.Blue §l
execute as @a[tag=ingame,team=blue] run scoreboard players set §l 48display 12
team join t.Red §l§l
execute as @a[tag=ingame,team=red] run scoreboard players set §l§l 48display 9
team join t.Green §l§l§l
execute as @a[tag=ingame,team=green] run scoreboard players set §l§l§l 48display 6
team join t.Orange §l§l§l§l
execute as @a[tag=ingame,team=orange] run scoreboard players set §l§l§l§l 48display 3

# Adds the blank lines in the scoreboard depending on if teams are present
scoreboard players set §r 48display 13
execute as @a[tag=ingame,team=blue] run scoreboard players set §r§r 48display 10
execute as @a[tag=ingame,team=red] run scoreboard players set §r§r§r 48display 7
execute as @a[tag=ingame,team=green] run scoreboard players set §r§r§r§r 48display 4
execute as @a[tag=ingame,team=orange] run scoreboard players set §r§r§r§r§r 48display 1

execute as @a[tag=ingame,team=blue] run scoreboard players set §0§0§0§0§0§0§0§0§0§0§0 48display 11
execute as @a[tag=ingame,team=red] run scoreboard players set §0§0§0§0§0§0§0§0 48display 8
execute as @a[tag=ingame,team=green] run scoreboard players set §0§0§0§0§0 48display 5
execute as @a[tag=ingame,team=orange] run scoreboard players set §0§0 48display 2

# Displays specific symbols that represent if the player has 48locked depending on if they have the 48locked tag
    # Blue team
execute as @a[tag=ingame,tag=!48locked,team=blue] run team modify displayline11 prefix {"translate":"scoreboard.WalkOff","with":[{"text":"scoreboard.WalkOff","color":"gray"}]}
execute as @a[tag=ingame,tag=48locked,team=blue] run team modify displayline11 prefix {"translate":"scoreboard.WalkOff","with":[{"text":"scoreboard.WalkOff","color":"#0088ff"}]}
    # Red team
execute as @a[tag=ingame,tag=!48locked,team=red] run team modify displayline8 prefix {"translate":"scoreboard.WalkOff","with":[{"text":"scoreboard.WalkOff","color":"gray"}]}
execute as @a[tag=ingame,tag=48locked,team=red] run team modify displayline8 prefix {"translate":"scoreboard.WalkOff","with":[{"text":"scoreboard.WalkOff","color":"red"}]}
    # Green team
execute as @a[tag=ingame,tag=!48locked,team=green] run team modify displayline5 prefix {"translate":"scoreboard.WalkOff","with":[{"text":"scoreboard.WalkOff","color":"gray"}]}
execute as @a[tag=ingame,tag=48locked,team=green] run team modify displayline5 prefix {"translate":"scoreboard.WalkOff","with":[{"text":"scoreboard.WalkOff","color":"green"}]}
    # Orange team
execute as @a[tag=ingame,tag=!48locked,team=orange] run team modify displayline2 prefix {"translate":"scoreboard.WalkOff","with":[{"text":"scoreboard.WalkOff","color":"gray"}]}
execute as @a[tag=ingame,tag=48locked,team=orange] run team modify displayline2 prefix {"translate":"scoreboard.WalkOff","with":[{"text":"scoreboard.WalkOff","color":"gold"}]}
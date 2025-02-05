#   Author        =   @ JevinLevin
#   Description   =   Handles the sidebar scoreboard. Is run at the start and whenever a player dies
#   Called By     =   games:4/start + games:4/die

scoreboard objectives add 13display dummy {"translate":"game.FlagFracasName","bold":true}

# Resets the scoreboard and all the scores
scoreboard players reset * 13display

# If there is an entity on the team, it will add the teams name to the scoreboard
team join t.Blue §l
execute as @a[tag=ingame,team=blue] run scoreboard players set §l 13display 12
team join t.Red §l§l
execute as @a[tag=ingame,team=red] run scoreboard players set §l§l 13display 9
team join t.Green §l§l§l
execute as @a[tag=ingame,team=green] run scoreboard players set §l§l§l 13display 6
team join t.Orange §l§l§l§l
execute as @a[tag=ingame,team=orange] run scoreboard players set §l§l§l§l 13display 3

# Adds the blank lines in the scoreboard depending on if teams are present
scoreboard players set §r 13display 13
execute as @a[tag=ingame,team=blue] run scoreboard players set §r§r 13display 10
execute as @a[tag=ingame,team=red] run scoreboard players set §r§r§r 13display 7
execute as @a[tag=ingame,team=green] run scoreboard players set §r§r§r§r 13display 4
execute as @a[tag=ingame,team=orange] run scoreboard players set §r§r§r§r§r 13display 1

execute as @a[tag=ingame,team=blue] run scoreboard players set §0§0§0§0§0§0§0§0§0§0§0 13display 11
execute as @a[tag=ingame,team=red] run scoreboard players set §0§0§0§0§0§0§0§0 13display 8
execute as @a[tag=ingame,team=green] run scoreboard players set §0§0§0§0§0 13display 5
execute as @a[tag=ingame,team=orange] run scoreboard players set §0§0 13display 2

# Displays specific symbols that represent if the player has finished depending on if they have the finished tag
    # Blue team
execute as @a[tag=ingame,tag=!finished,team=blue] run team modify displayline11 prefix {"translate":"scoreboard.FlagFracas","with":[{"translate":"scoreboard.FlagFracas.Symbol","color":"gray"}]}
execute as @a[tag=ingame,tag=finished,team=blue] run team modify displayline11 prefix {"translate":"scoreboard.FlagFracas","with":[{"translate":"scoreboard.FlagFracas.Symbol","color":"#0088ff"}]}
    # Red team
execute as @a[tag=ingame,tag=!finished,team=red] run team modify displayline8 prefix {"translate":"scoreboard.FlagFracas","with":[{"translate":"scoreboard.FlagFracas.Symbol","color":"gray"}]}
execute as @a[tag=ingame,tag=finished,team=red] run team modify displayline8 prefix {"translate":"scoreboard.FlagFracas","with":[{"translate":"scoreboard.FlagFracas.Symbol","color":"red"}]}
    # Green team
execute as @a[tag=ingame,tag=!finished,team=green] run team modify displayline5 prefix {"translate":"scoreboard.FlagFracas","with":[{"translate":"scoreboard.FlagFracas.Symbol","color":"gray"}]}
execute as @a[tag=ingame,tag=finished,team=green] run team modify displayline5 prefix {"translate":"scoreboard.FlagFracas","with":[{"translate":"scoreboard.FlagFracas.Symbol","color":"green"}]}
    # Orange team
execute as @a[tag=ingame,tag=!finished,team=orange] run team modify displayline2 prefix {"translate":"scoreboard.FlagFracas","with":[{"translate":"scoreboard.FlagFracas.Symbol","color":"gray"}]}
execute as @a[tag=ingame,tag=finished,team=orange] run team modify displayline2 prefix {"translate":"scoreboard.FlagFracas","with":[{"translate":"scoreboard.FlagFracas.Symbol","color":"gold"}]}
#   Author        =   @ JevinLevin
#   Description   =   Handles the sidebar scoreboard. Is run at the start and whenever a player dies
#   Called By     =   games:4/start + games:4/die

scoreboard objectives add 6display dummy {"translate":"game.DerbyDashName","bold":true}

# Resets the scoreboard and all the scores
scoreboard players reset * 6display

function general:scoreboard_init

# Displays specific symbols that represent if the player has finished depending on if they have the finished tag
    # Blue team
execute as @a[tag=ingame,tag=!finished,team=blue] run team modify displayline11 prefix {"translate":"scoreboard.DerbyDash","with":[{"translate":"scoreboard.DerbyDash.Symbol","color":"gray"}]}
execute as @a[tag=ingame,tag=finished,team=blue] run team modify displayline11 prefix {"translate":"scoreboard.DerbyDash","with":[{"translate":"scoreboard.DerbyDash.Symbol","color":"#0088ff"}]}
    # Red team
execute as @a[tag=ingame,tag=!finished,team=red] run team modify displayline8 prefix {"translate":"scoreboard.DerbyDash","with":[{"translate":"scoreboard.DerbyDash.Symbol","color":"gray"}]}
execute as @a[tag=ingame,tag=finished,team=red] run team modify displayline8 prefix {"translate":"scoreboard.DerbyDash","with":[{"translate":"scoreboard.DerbyDash.Symbol","color":"red"}]}
    # Green team
execute as @a[tag=ingame,tag=!finished,team=green] run team modify displayline5 prefix {"translate":"scoreboard.DerbyDash","with":[{"translate":"scoreboard.DerbyDash.Symbol","color":"gray"}]}
execute as @a[tag=ingame,tag=finished,team=green] run team modify displayline5 prefix {"translate":"scoreboard.DerbyDash","with":[{"translate":"scoreboard.DerbyDash.Symbol","color":"green"}]}
    # Orange team
execute as @a[tag=ingame,tag=!finished,team=orange] run team modify displayline2 prefix {"translate":"scoreboard.DerbyDash","with":[{"translate":"scoreboard.DerbyDash.Symbol","color":"gray"}]}
execute as @a[tag=ingame,tag=finished,team=orange] run team modify displayline2 prefix {"translate":"scoreboard.DerbyDash","with":[{"translate":"scoreboard.DerbyDash.Symbol","color":"gold"}]}
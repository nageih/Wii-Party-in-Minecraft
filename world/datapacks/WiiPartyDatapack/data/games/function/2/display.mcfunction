#   Author        =   @ JevinLevin
#   Description   =   Handles the sidebar scoreboard. Is run at the start and whenever a player dies
#   Called By     =   games:2/start + games:2/ifhit

# Resets the scoreboard and all the scores
scoreboard players reset * 2display

function general:scoreboard_init


# Displays specific symbols that represent the number of times the player has taken damage by checking their 1damage score
    # Blue team
execute as @a[tag=ingame,tag=blue,tag=!dead] run team modify displayline11 prefix {"translate":"scoreboard.ZombieTag","with":[{"translate":"scoreboard.ZombieTag.Symbol","color":"dark_gray"}]}
execute as @a[tag=ingame,tag=blue,tag=dead] run team modify displayline11 prefix {"translate":"scoreboard.ZombieTag","with":[{"translate":"scoreboard.ZombieTag.Symbol","color":"#0088ff"}]}
    # Red team
execute as @a[tag=ingame,tag=red,tag=!dead] run team modify displayline8 prefix {"translate":"scoreboard.ZombieTag","with":[{"translate":"scoreboard.ZombieTag.Symbol","color":"dark_gray"}]}
execute as @a[tag=ingame,tag=red,tag=dead] run team modify displayline8 prefix {"translate":"scoreboard.ZombieTag","with":[{"translate":"scoreboard.ZombieTag.Symbol","color":"red"}]}
    # Green team
execute as @a[tag=ingame,tag=green,tag=!dead] run team modify displayline5 prefix {"translate":"scoreboard.ZombieTag","with":[{"translate":"scoreboard.ZombieTag.Symbol","color":"dark_gray"}]}
execute as @a[tag=ingame,tag=green,tag=dead] run team modify displayline5 prefix {"translate":"scoreboard.ZombieTag","with":[{"translate":"scoreboard.ZombieTag.Symbol","color":"green"}]}
    # Orange team
execute as @a[tag=ingame,tag=orange,tag=!dead] run team modify displayline2 prefix {"translate":"scoreboard.ZombieTag","with":[{"translate":"scoreboard.ZombieTag.Symbol","color":"dark_gray"}]}
execute as @a[tag=ingame,tag=orange,tag=dead] run team modify displayline2 prefix {"translate":"scoreboard.ZombieTag","with":[{"translate":"scoreboard.ZombieTag.Symbol","color":"gold"}]}
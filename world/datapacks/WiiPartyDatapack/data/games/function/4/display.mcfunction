#   Author        =   @ JevinLevin
#   Description   =   Handles the sidebar scoreboard. Is run at the start and whenever a player dies
#   Called By     =   games:4/start + games:4/die


# Resets the scoreboard and all the scores
scoreboard players reset * 4display

function general:scoreboard_init


# Displays specific symbols that represent if the player is dead or alive depending on if they have the 4dead tag
    # Blue team
execute as @a[tag=ingame,tag=!4dead,team=blue] run team modify displayline11 prefix {"translate":"scoreboard.BackAttack","with":[{"translate":"scoreboard.BackAttack.Symbol","color":"gray"}]}
execute as @a[tag=ingame,tag=4dead,team=blue] run team modify displayline11 prefix {"translate":"scoreboard.BackAttack","with":[{"translate":"scoreboard.BackAttack.Symbol","color":"#0088ff"}]}
    # Red team
execute as @a[tag=ingame,tag=!4dead,team=red] run team modify displayline8 prefix {"translate":"scoreboard.BackAttack","with":[{"translate":"scoreboard.BackAttack.Symbol","color":"gray"}]}
execute as @a[tag=ingame,tag=4dead,team=red] run team modify displayline8 prefix {"translate":"scoreboard.BackAttack","with":[{"translate":"scoreboard.BackAttack.Symbol","color":"red"}]}
    # Green team
execute as @a[tag=ingame,tag=!4dead,team=green] run team modify displayline5 prefix {"translate":"scoreboard.BackAttack","with":[{"translate":"scoreboard.BackAttack.Symbol","color":"gray"}]}
execute as @a[tag=ingame,tag=4dead,team=green] run team modify displayline5 prefix {"translate":"scoreboard.BackAttack","with":[{"translate":"scoreboard.BackAttack.Symbol","color":"green"}]}
    # Orange team
execute as @a[tag=ingame,tag=!4dead,team=orange] run team modify displayline2 prefix {"translate":"scoreboard.BackAttack","with":[{"translate":"scoreboard.BackAttack.Symbol","color":"gray"}]}
execute as @a[tag=ingame,tag=4dead,team=orange] run team modify displayline2 prefix {"translate":"scoreboard.BackAttack","with":[{"translate":"scoreboard.BackAttack.Symbol","color":"gold"}]}
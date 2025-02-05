# Resets the scoreboard and all the scores
scoreboard players reset * 1display

function general:scoreboard_init


# Displays specific symbols that represent the number of times the player has taken damage by checking their 1damage score
    # Blue team
execute as @a[tag=ingame,team=blue] if score @s 1damage matches 0 run team modify displayline11 prefix {"translate":"scoreboard.DiceyDescent","with":[{"translate":"scoreboard.DiceyDescent.Symbol","color":"dark_gray"},{"translate":"scoreboard.DiceyDescent.Symbol","color":"dark_gray"}]}
execute as @a[tag=ingame,team=blue] if score @s 1damage matches 1 run team modify displayline11 prefix {"translate":"scoreboard.DiceyDescent","with":[{"translate":"scoreboard.DiceyDescent.Symbol","color":"#0088ff"},{"translate":"scoreboard.DiceyDescent.Symbol","color":"dark_gray"}]}
execute as @a[tag=ingame,team=blue] if score @s 1damage matches 2 run team modify displayline11 prefix {"translate":"scoreboard.DiceyDescent","with":[{"translate":"scoreboard.DiceyDescent.Symbol","color":"#0088ff"},{"translate":"scoreboard.DiceyDescent.Symbol","color":"#0088ff"}]}
    # Red team
execute as @a[tag=ingame,team=red] if score @s 1damage matches 0 run team modify displayline8 prefix {"translate":"scoreboard.DiceyDescent","with":[{"translate":"scoreboard.DiceyDescent.Symbol","color":"dark_gray"},{"translate":"scoreboard.DiceyDescent.Symbol","color":"dark_gray"}]}
execute as @a[tag=ingame,team=red] if score @s 1damage matches 1 run team modify displayline8 prefix {"translate":"scoreboard.DiceyDescent","with":[{"translate":"scoreboard.DiceyDescent.Symbol","color":"red"},{"translate":"scoreboard.DiceyDescent.Symbol","color":"dark_gray"}]}
execute as @a[tag=ingame,team=red] if score @s 1damage matches 2 run team modify displayline8 prefix {"translate":"scoreboard.DiceyDescent","with":[{"translate":"scoreboard.DiceyDescent.Symbol","color":"red"},{"translate":"scoreboard.DiceyDescent.Symbol","color":"red"}]}
    # Green team
execute as @a[tag=ingame,team=green] if score @s 1damage matches 0 run team modify displayline5 prefix {"translate":"scoreboard.DiceyDescent","with":[{"translate":"scoreboard.DiceyDescent.Symbol","color":"dark_gray"},{"translate":"scoreboard.DiceyDescent.Symbol","color":"dark_gray"}]}
execute as @a[tag=ingame,team=green] if score @s 1damage matches 1 run team modify displayline5 prefix {"translate":"scoreboard.DiceyDescent","with":[{"translate":"scoreboard.DiceyDescent.Symbol","color":"green"},{"translate":"scoreboard.DiceyDescent.Symbol","color":"dark_gray"}]}
execute as @a[tag=ingame,team=green] if score @s 1damage matches 2 run team modify displayline5 prefix {"translate":"scoreboard.DiceyDescent","with":[{"translate":"scoreboard.DiceyDescent.Symbol","color":"green"},{"translate":"scoreboard.DiceyDescent.Symbol","color":"green"}]}
    # Orange team
execute as @a[tag=ingame,team=orange] if score @s 1damage matches 0 run team modify displayline2 prefix {"translate":"scoreboard.DiceyDescent","with":[{"translate":"scoreboard.DiceyDescent.Symbol","color":"dark_gray"},{"translate":"scoreboard.DiceyDescent.Symbol","color":"dark_gray"}]}
execute as @a[tag=ingame,team=orange] if score @s 1damage matches 1 run team modify displayline2 prefix {"translate":"scoreboard.DiceyDescent","with":[{"translate":"scoreboard.DiceyDescent.Symbol","color":"gold"},{"translate":"scoreboard.DiceyDescent.Symbol","color":"dark_gray"}]}
execute as @a[tag=ingame,team=orange] if score @s 1damage matches 2 run team modify displayline2 prefix {"translate":"scoreboard.DiceyDescent","with":[{"translate":"scoreboard.DiceyDescent.Symbol","color":"gold"},{"translate":"scoreboard.DiceyDescent.Symbol","color":"gold"}]}

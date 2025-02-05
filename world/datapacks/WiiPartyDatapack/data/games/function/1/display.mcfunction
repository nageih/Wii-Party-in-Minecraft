# Resets the scoreboard and all the scores
scoreboard players reset * 1display

# If there is an entity on the team, it will add the teams name to the scoreboard
team join t.Blue §l
execute as @a[tag=ingame,team=blue] run scoreboard players set §l 1display 12
team join t.Red §l§l
execute as @a[tag=ingame,team=red] run scoreboard players set §l§l 1display 9
team join t.Green §l§l§l
execute as @a[tag=ingame,team=green] run scoreboard players set §l§l§l 1display 6
team join t.Orange §l§l§l§l
execute as @a[tag=ingame,team=orange] run scoreboard players set §l§l§l§l 1display 3

# Adds the blank lines in the scoreboard depending on if teams are present
scoreboard players set §r 1display 13
execute as @a[tag=ingame,team=blue] run scoreboard players set §r§r 1display 10
execute as @a[tag=ingame,team=red] run scoreboard players set §r§r§r 1display 7
execute as @a[tag=ingame,team=green] run scoreboard players set §r§r§r§r 1display 4
execute as @a[tag=ingame,team=orange] run scoreboard players set §r§r§r§r§r 1display 1

execute as @a[tag=ingame,team=blue] run scoreboard players set §0§0§0§0§0§0§0§0§0§0§0 1display 11
execute as @a[tag=ingame,team=red] run scoreboard players set §0§0§0§0§0§0§0§0 1display 8
execute as @a[tag=ingame,team=green] run scoreboard players set §0§0§0§0§0 1display 5
execute as @a[tag=ingame,team=orange] run scoreboard players set §0§0 1display 2

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

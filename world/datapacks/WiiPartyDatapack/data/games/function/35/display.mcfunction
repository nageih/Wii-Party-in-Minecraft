#   Author        =   @ JevinLevin
#   Description   =   Handles the sidebar scoreboard. Is run at the start and whenever a player dies
#   Called By     =   games:4/start + games:4/die

scoreboard objectives add 35display dummy
scoreboard objectives modify 35display numberformat blank

# Resets the scoreboard and all the scores
scoreboard players reset * 35display

# If there is an entity on the team, it will add the teams name to the scoreboard
team join t.Blue §l
execute as @a[tag=ingame,team=blue] run scoreboard players set §l 35display 12
team join t.Red §l§l
execute as @a[tag=ingame,team=red] run scoreboard players set §l§l 35display 9
team join t.Green §l§l§l
execute as @a[tag=ingame,team=green] run scoreboard players set §l§l§l 35display 6
team join t.Orange §l§l§l§l
execute as @a[tag=ingame,team=orange] run scoreboard players set §l§l§l§l 35display 3

# Adds the blank lines in the scoreboard depending on if teams are present
scoreboard players set §r 35display 13
execute as @a[tag=ingame,team=blue] run scoreboard players set §r§r 35display 10
execute as @a[tag=ingame,team=red] run scoreboard players set §r§r§r 35display 7
execute as @a[tag=ingame,team=green] run scoreboard players set §r§r§r§r 35display 4
execute as @a[tag=ingame,team=orange] run scoreboard players set §r§r§r§r§r 35display 1

execute as @a[tag=ingame,team=blue] run scoreboard players set §0§0§0§0§0§0§0§0§0§0§0 35display 11
execute as @a[tag=ingame,team=red] run scoreboard players set §0§0§0§0§0§0§0§0 35display 8
execute as @a[tag=ingame,team=green] run scoreboard players set §0§0§0§0§0 35display 5
execute as @a[tag=ingame,team=orange] run scoreboard players set §0§0 35display 2

# Displays specific symbols that represent if the player is dead or alive depending on if they have the 35finished tag
    # Blue team
execute as @a[tag=ingame,team=blue] if score @s 35step matches 0 run team modify displayline11 prefix {"translate":"scoreboard.StrategySteps","bold":true,"with":[{"translate":"scoreboard.StrategySteps.Symbols.0","color":"gray"},{"translate":"scoreboard.StrategySteps.Symbols.12","color":"gray"}]}
execute as @a[tag=ingame,team=blue] if score @s 35step matches 1 run team modify displayline11 prefix {"translate":"scoreboard.StrategySteps","bold":true,"with":[{"translate":"scoreboard.StrategySteps.Symbols.1","color":"#0088ff"},{"translate":"scoreboard.StrategySteps.Symbols.11","color":"gray"}]}
execute as @a[tag=ingame,team=blue] if score @s 35step matches 2 run team modify displayline11 prefix {"translate":"scoreboard.StrategySteps","bold":true,"with":[{"translate":"scoreboard.StrategySteps.Symbols.2","color":"#0088ff"},{"translate":"scoreboard.StrategySteps.Symbols.10","color":"gray"}]}
execute as @a[tag=ingame,team=blue] if score @s 35step matches 3 run team modify displayline11 prefix {"translate":"scoreboard.StrategySteps","bold":true,"with":[{"translate":"scoreboard.StrategySteps.Symbols.3","color":"#0088ff"},{"translate":"scoreboard.StrategySteps.Symbols.9","color":"gray"}]}
execute as @a[tag=ingame,team=blue] if score @s 35step matches 4 run team modify displayline11 prefix {"translate":"scoreboard.StrategySteps","bold":true,"with":[{"translate":"scoreboard.StrategySteps.Symbols.4","color":"#0088ff"},{"translate":"scoreboard.StrategySteps.Symbols.8","color":"gray"}]}
execute as @a[tag=ingame,team=blue] if score @s 35step matches 5 run team modify displayline11 prefix {"translate":"scoreboard.StrategySteps","bold":true,"with":[{"translate":"scoreboard.StrategySteps.Symbols.5","color":"#0088ff"},{"translate":"scoreboard.StrategySteps.Symbols.7","color":"gray"}]}
execute as @a[tag=ingame,team=blue] if score @s 35step matches 6 run team modify displayline11 prefix {"translate":"scoreboard.StrategySteps","bold":true,"with":[{"translate":"scoreboard.StrategySteps.Symbols.6","color":"#0088ff"},{"translate":"scoreboard.StrategySteps.Symbols.6","color":"gray"}]}
execute as @a[tag=ingame,team=blue] if score @s 35step matches 7 run team modify displayline11 prefix {"translate":"scoreboard.StrategySteps","bold":true,"with":[{"translate":"scoreboard.StrategySteps.Symbols.7","color":"#0088ff"},{"translate":"scoreboard.StrategySteps.Symbols.5","color":"gray"}]}
execute as @a[tag=ingame,team=blue] if score @s 35step matches 8 run team modify displayline11 prefix {"translate":"scoreboard.StrategySteps","bold":true,"with":[{"translate":"scoreboard.StrategySteps.Symbols.8","color":"#0088ff"},{"translate":"scoreboard.StrategySteps.Symbols.4","color":"gray"}]}
execute as @a[tag=ingame,team=blue] if score @s 35step matches 9 run team modify displayline11 prefix {"translate":"scoreboard.StrategySteps","bold":true,"with":[{"translate":"scoreboard.StrategySteps.Symbols.9","color":"#0088ff"},{"translate":"scoreboard.StrategySteps.Symbols.3","color":"gray"}]}
execute as @a[tag=ingame,team=blue] if score @s 35step matches 10 run team modify displayline11 prefix {"translate":"scoreboard.StrategySteps","bold":true,"with":[{"translate":"scoreboard.StrategySteps.Symbols.10","color":"#0088ff"},{"translate":"scoreboard.StrategySteps.Symbols.2","color":"gray"}]}
execute as @a[tag=ingame,team=blue] if score @s 35step matches 11 run team modify displayline11 prefix {"translate":"scoreboard.StrategySteps","bold":true,"with":[{"translate":"scoreboard.StrategySteps.Symbols.11","color":"#0088ff"},{"translate":"scoreboard.StrategySteps.Symbols.1","color":"gray"}]}
execute as @a[tag=ingame,tag=failed,team=blue] if score @s 35step matches 12 run team modify displayline11 prefix {"translate":"scoreboard.StrategySteps","bold":true,"with":[{"translate":"scoreboard.StrategySteps.Symbols.12","color":"dark_gray"},{"translate":"scoreboard.StrategySteps.Symbols.0","color":"gray"}]}
    # Red team
execute as @a[tag=ingame,team=red] if score @s 35step matches 0 run team modify displayline8 prefix {"translate":"scoreboard.StrategySteps","bold":true,"with":[{"translate":"scoreboard.StrategySteps.Symbols.0","color":"gray"},{"translate":"scoreboard.StrategySteps.Symbols.12","color":"gray"}]}
execute as @a[tag=ingame,team=red] if score @s 35step matches 1 run team modify displayline8 prefix {"translate":"scoreboard.StrategySteps","bold":true,"with":[{"translate":"scoreboard.StrategySteps.Symbols.1","color":"red"},{"translate":"scoreboard.StrategySteps.Symbols.11","color":"gray"}]}
execute as @a[tag=ingame,team=red] if score @s 35step matches 2 run team modify displayline8 prefix {"translate":"scoreboard.StrategySteps","bold":true,"with":[{"translate":"scoreboard.StrategySteps.Symbols.2","color":"red"},{"translate":"scoreboard.StrategySteps.Symbols.10","color":"gray"}]}
execute as @a[tag=ingame,team=red] if score @s 35step matches 3 run team modify displayline8 prefix {"translate":"scoreboard.StrategySteps","bold":true,"with":[{"translate":"scoreboard.StrategySteps.Symbols.3","color":"red"},{"translate":"scoreboard.StrategySteps.Symbols.9","color":"gray"}]}
execute as @a[tag=ingame,team=red] if score @s 35step matches 4 run team modify displayline8 prefix {"translate":"scoreboard.StrategySteps","bold":true,"with":[{"translate":"scoreboard.StrategySteps.Symbols.4","color":"red"},{"translate":"scoreboard.StrategySteps.Symbols.8","color":"gray"}]}
execute as @a[tag=ingame,team=red] if score @s 35step matches 5 run team modify displayline8 prefix {"translate":"scoreboard.StrategySteps","bold":true,"with":[{"translate":"scoreboard.StrategySteps.Symbols.5","color":"red"},{"translate":"scoreboard.StrategySteps.Symbols.7","color":"gray"}]}
execute as @a[tag=ingame,team=red] if score @s 35step matches 6 run team modify displayline8 prefix {"translate":"scoreboard.StrategySteps","bold":true,"with":[{"translate":"scoreboard.StrategySteps.Symbols.6","color":"red"},{"translate":"scoreboard.StrategySteps.Symbols.6","color":"gray"}]}
execute as @a[tag=ingame,team=red] if score @s 35step matches 7 run team modify displayline8 prefix {"translate":"scoreboard.StrategySteps","bold":true,"with":[{"translate":"scoreboard.StrategySteps.Symbols.7","color":"red"},{"translate":"scoreboard.StrategySteps.Symbols.5","color":"gray"}]}
execute as @a[tag=ingame,team=red] if score @s 35step matches 8 run team modify displayline8 prefix {"translate":"scoreboard.StrategySteps","bold":true,"with":[{"translate":"scoreboard.StrategySteps.Symbols.8","color":"red"},{"translate":"scoreboard.StrategySteps.Symbols.4","color":"gray"}]}
execute as @a[tag=ingame,team=red] if score @s 35step matches 9 run team modify displayline8 prefix {"translate":"scoreboard.StrategySteps","bold":true,"with":[{"translate":"scoreboard.StrategySteps.Symbols.9","color":"red"},{"translate":"scoreboard.StrategySteps.Symbols.3","color":"gray"}]}
execute as @a[tag=ingame,team=red] if score @s 35step matches 10 run team modify displayline8 prefix {"translate":"scoreboard.StrategySteps","bold":true,"with":[{"translate":"scoreboard.StrategySteps.Symbols.10","color":"red"},{"translate":"scoreboard.StrategySteps.Symbols.2","color":"gray"}]}
execute as @a[tag=ingame,team=red] if score @s 35step matches 11 run team modify displayline8 prefix {"translate":"scoreboard.StrategySteps","bold":true,"with":[{"translate":"scoreboard.StrategySteps.Symbols.11","color":"red"},{"translate":"scoreboard.StrategySteps.Symbols.1","color":"gray"}]}
execute as @a[tag=ingame,tag=failed,team=red] if score @s 35step matches 12 run team modify displayline8 prefix {"translate":"scoreboard.StrategySteps","bold":true,"with":[{"translate":"scoreboard.StrategySteps.Symbols.12","color":"dark_gray"},{"translate":"scoreboard.StrategySteps.Symbols.0","color":"gray"}]}
    # Green team
execute as @a[tag=ingame,team=green] if score @s 35step matches 0 run team modify displayline5 prefix {"translate":"scoreboard.StrategySteps","bold":true,"with":[{"translate":"scoreboard.StrategySteps.Symbols.0","color":"gray"},{"translate":"scoreboard.StrategySteps.Symbols.12","color":"gray"}]}
execute as @a[tag=ingame,team=green] if score @s 35step matches 1 run team modify displayline5 prefix {"translate":"scoreboard.StrategySteps","bold":true,"with":[{"translate":"scoreboard.StrategySteps.Symbols.1","color":"green"},{"translate":"scoreboard.StrategySteps.Symbols.11","color":"gray"}]}
execute as @a[tag=ingame,team=green] if score @s 35step matches 2 run team modify displayline5 prefix {"translate":"scoreboard.StrategySteps","bold":true,"with":[{"translate":"scoreboard.StrategySteps.Symbols.2","color":"green"},{"translate":"scoreboard.StrategySteps.Symbols.10","color":"gray"}]}
execute as @a[tag=ingame,team=green] if score @s 35step matches 3 run team modify displayline5 prefix {"translate":"scoreboard.StrategySteps","bold":true,"with":[{"translate":"scoreboard.StrategySteps.Symbols.3","color":"green"},{"translate":"scoreboard.StrategySteps.Symbols.9","color":"gray"}]}
execute as @a[tag=ingame,team=green] if score @s 35step matches 4 run team modify displayline5 prefix {"translate":"scoreboard.StrategySteps","bold":true,"with":[{"translate":"scoreboard.StrategySteps.Symbols.4","color":"green"},{"translate":"scoreboard.StrategySteps.Symbols.8","color":"gray"}]}
execute as @a[tag=ingame,team=green] if score @s 35step matches 5 run team modify displayline5 prefix {"translate":"scoreboard.StrategySteps","bold":true,"with":[{"translate":"scoreboard.StrategySteps.Symbols.5","color":"green"},{"translate":"scoreboard.StrategySteps.Symbols.7","color":"gray"}]}
execute as @a[tag=ingame,team=green] if score @s 35step matches 6 run team modify displayline5 prefix {"translate":"scoreboard.StrategySteps","bold":true,"with":[{"translate":"scoreboard.StrategySteps.Symbols.6","color":"green"},{"translate":"scoreboard.StrategySteps.Symbols.6","color":"gray"}]}
execute as @a[tag=ingame,team=green] if score @s 35step matches 7 run team modify displayline5 prefix {"translate":"scoreboard.StrategySteps","bold":true,"with":[{"translate":"scoreboard.StrategySteps.Symbols.7","color":"green"},{"translate":"scoreboard.StrategySteps.Symbols.5","color":"gray"}]}
execute as @a[tag=ingame,team=green] if score @s 35step matches 8 run team modify displayline5 prefix {"translate":"scoreboard.StrategySteps","bold":true,"with":[{"translate":"scoreboard.StrategySteps.Symbols.8","color":"green"},{"translate":"scoreboard.StrategySteps.Symbols.4","color":"gray"}]}
execute as @a[tag=ingame,team=green] if score @s 35step matches 9 run team modify displayline5 prefix {"translate":"scoreboard.StrategySteps","bold":true,"with":[{"translate":"scoreboard.StrategySteps.Symbols.9","color":"green"},{"translate":"scoreboard.StrategySteps.Symbols.3","color":"gray"}]}
execute as @a[tag=ingame,team=green] if score @s 35step matches 10 run team modify displayline5 prefix {"translate":"scoreboard.StrategySteps","bold":true,"with":[{"translate":"scoreboard.StrategySteps.Symbols.10","color":"green"},{"translate":"scoreboard.StrategySteps.Symbols.2","color":"gray"}]}
execute as @a[tag=ingame,team=green] if score @s 35step matches 11 run team modify displayline5 prefix {"translate":"scoreboard.StrategySteps","bold":true,"with":[{"translate":"scoreboard.StrategySteps.Symbols.11","color":"green"},{"translate":"scoreboard.StrategySteps.Symbols.1","color":"gray"}]}
execute as @a[tag=ingame,tag=failed,team=green] if score @s 35step matches 12 run team modify displayline5 prefix {"translate":"scoreboard.StrategySteps","bold":true,"with":[{"translate":"scoreboard.StrategySteps.Symbols.12","color":"dark_gray"},{"translate":"scoreboard.StrategySteps.Symbols.0","color":"gray"}]}
    # Orange team
execute as @a[tag=ingame,team=orange] if score @s 35step matches 0 run team modify displayline2 prefix {"translate":"scoreboard.StrategySteps","bold":true,"with":[{"translate":"scoreboard.StrategySteps.Symbols.0","color":"gray"},{"translate":"scoreboard.StrategySteps.Symbols.12","color":"gray"}]}
execute as @a[tag=ingame,team=orange] if score @s 35step matches 1 run team modify displayline2 prefix {"translate":"scoreboard.StrategySteps","bold":true,"with":[{"translate":"scoreboard.StrategySteps.Symbols.1","color":"gold"},{"translate":"scoreboard.StrategySteps.Symbols.11","color":"gray"}]}
execute as @a[tag=ingame,team=orange] if score @s 35step matches 2 run team modify displayline2 prefix {"translate":"scoreboard.StrategySteps","bold":true,"with":[{"translate":"scoreboard.StrategySteps.Symbols.2","color":"gold"},{"translate":"scoreboard.StrategySteps.Symbols.10","color":"gray"}]}
execute as @a[tag=ingame,team=orange] if score @s 35step matches 3 run team modify displayline2 prefix {"translate":"scoreboard.StrategySteps","bold":true,"with":[{"translate":"scoreboard.StrategySteps.Symbols.3","color":"gold"},{"translate":"scoreboard.StrategySteps.Symbols.9","color":"gray"}]}
execute as @a[tag=ingame,team=orange] if score @s 35step matches 4 run team modify displayline2 prefix {"translate":"scoreboard.StrategySteps","bold":true,"with":[{"translate":"scoreboard.StrategySteps.Symbols.4","color":"gold"},{"translate":"scoreboard.StrategySteps.Symbols.8","color":"gray"}]}
execute as @a[tag=ingame,team=orange] if score @s 35step matches 5 run team modify displayline2 prefix {"translate":"scoreboard.StrategySteps","bold":true,"with":[{"translate":"scoreboard.StrategySteps.Symbols.5","color":"gold"},{"translate":"scoreboard.StrategySteps.Symbols.7","color":"gray"}]}
execute as @a[tag=ingame,team=orange] if score @s 35step matches 6 run team modify displayline2 prefix {"translate":"scoreboard.StrategySteps","bold":true,"with":[{"translate":"scoreboard.StrategySteps.Symbols.6","color":"gold"},{"translate":"scoreboard.StrategySteps.Symbols.6","color":"gray"}]}
execute as @a[tag=ingame,team=orange] if score @s 35step matches 7 run team modify displayline2 prefix {"translate":"scoreboard.StrategySteps","bold":true,"with":[{"translate":"scoreboard.StrategySteps.Symbols.7","color":"gold"},{"translate":"scoreboard.StrategySteps.Symbols.5","color":"gray"}]}
execute as @a[tag=ingame,team=orange] if score @s 35step matches 8 run team modify displayline2 prefix {"translate":"scoreboard.StrategySteps","bold":true,"with":[{"translate":"scoreboard.StrategySteps.Symbols.8","color":"gold"},{"translate":"scoreboard.StrategySteps.Symbols.4","color":"gray"}]}
execute as @a[tag=ingame,team=orange] if score @s 35step matches 9 run team modify displayline2 prefix {"translate":"scoreboard.StrategySteps","bold":true,"with":[{"translate":"scoreboard.StrategySteps.Symbols.9","color":"gold"},{"translate":"scoreboard.StrategySteps.Symbols.3","color":"gray"}]}
execute as @a[tag=ingame,team=orange] if score @s 35step matches 10 run team modify displayline2 prefix {"translate":"scoreboard.StrategySteps","bold":true,"with":[{"translate":"scoreboard.StrategySteps.Symbols.10","color":"gold"},{"translate":"scoreboard.StrategySteps.Symbols.2","color":"gray"}]}
execute as @a[tag=ingame,team=orange] if score @s 35step matches 11 run team modify displayline2 prefix {"translate":"scoreboard.StrategySteps","bold":true,"with":[{"translate":"scoreboard.StrategySteps.Symbols.11","color":"gold"},{"translate":"scoreboard.StrategySteps.Symbols.1","color":"gray"}]}
execute as @a[tag=ingame,tag=failed,team=orange] if score @s 35step matches 12 run team modify displayline2 prefix {"translate":"scoreboard.StrategySteps","bold":true,"with":[{"translate":"scoreboard.StrategySteps.Symbols.12","color":"dark_gray"},{"translate":"scoreboard.StrategySteps.Symbols.0","color":"gray"}]}
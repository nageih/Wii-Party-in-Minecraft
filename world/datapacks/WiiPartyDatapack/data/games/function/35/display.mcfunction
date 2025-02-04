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
execute as @a[tag=ingame,tag=!35finished,team=blue] run team modify displayline11 prefix {"text":"      ✓","color":"dark_gray"}
execute as @a[tag=ingame,tag=35finished,team=blue] run team modify displayline11 prefix {"text":"      ✓","color":"#0088ff"}
    # Red team
execute as @a[tag=ingame,tag=!35finished,team=red] run team modify displayline8 prefix {"text":"      ✓","color":"dark_gray"}
execute as @a[tag=ingame,tag=35finished,team=red] run team modify displayline8 prefix {"text":"      ✓","color":"red"}
    # Green team
execute as @a[tag=ingame,tag=!35finished,team=green] run team modify displayline5 prefix {"text":"      ✓","color":"dark_gray"}
execute as @a[tag=ingame,tag=35finished,team=green] run team modify displayline5 prefix {"text":"      ✓","color":"green"}
    # Orange team
execute as @a[tag=ingame,tag=!35finished,team=orange] run team modify displayline2 prefix {"text":"      ✓","color":"dark_gray"}
execute as @a[tag=ingame,tag=35finished,team=orange] run team modify displayline2 prefix {"text":"      ✓","color":"gold"}
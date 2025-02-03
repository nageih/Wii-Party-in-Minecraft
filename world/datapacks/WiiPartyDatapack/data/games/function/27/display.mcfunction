#   Author        =   @ T4Bl3rUs
#   Description   =   Handles the sidebar scoreboard.
#   Called By     =  

# Resets the scoreboard and all the scores
scoreboard players reset * 27display

# If there is an entity on the team, it will add the teams name to the scoreboard
team join t.Blue §l
execute as @a[tag=ingame,tag=player1,team=blue] run scoreboard players set §l 27display 6
execute as @a[tag=ingame,tag=player2,team=blue] run scoreboard players set §l 27display 3
team join t.Red §l§l
execute as @a[tag=ingame,tag=player1,team=red] run scoreboard players set §l§l 27display 6
execute as @a[tag=ingame,tag=player2,team=red] run scoreboard players set §l§l 27display 3
team join t.Green §l§l§l
execute as @a[tag=ingame,tag=player1,team=green] run scoreboard players set §l§l§l 27display 6
execute as @a[tag=ingame,tag=player2,team=green] run scoreboard players set §l§l§l 27display 3
team join t.Orange §l§l§l§l
execute as @a[tag=ingame,tag=player1,team=orange] run scoreboard players set §l§l§l§l 27display 6
execute as @a[tag=ingame,tag=player2,team=orange] run scoreboard players set §l§l§l§l 27display 3

# Adds the blank lines in the scoreboard depending on if teams are present
scoreboard players set §r 27display 7
execute as @a[tag=ingame,tag=player1] run scoreboard players set §r§r 27display 4
execute as @a[tag=ingame,tag=player2] run scoreboard players set §r§r§r 27display 1
execute as @a[tag=ingame,tag=player1] run scoreboard players set §0§0§0§0§0 27display 5
execute as @a[tag=ingame,tag=player2] run scoreboard players set §0§0 27display 2

# Player 1
execute if score p1= 27scores matches 0 if entity @a[tag=player1,team=blue] run team modify displayline5 prefix {"text":"   ⚪⚪⚪⚪⚪⚪⚪⚪","color":"#0088ff"}
execute if score p1= 27scores matches 0 if entity @a[tag=player1,team=red] run team modify displayline5 prefix {"text":"   ⚪⚪⚪⚪⚪⚪⚪⚪","color":"red"}
execute if score p1= 27scores matches 0 if entity @a[tag=player1,team=green] run team modify displayline5 prefix {"text":"   ⚪⚪⚪⚪⚪⚪⚪⚪","color":"green"}
execute if score p1= 27scores matches 0 if entity @a[tag=player1,team=orange] run team modify displayline5 prefix {"text":"   ⚪⚪⚪⚪⚪⚪⚪⚪","color":"gold"}
execute if score p1= 27scores matches 1 if entity @a[tag=player1,team=blue] run team modify displayline5 prefix {"text":"   ⚫⚪⚪⚪⚪⚪⚪⚪","color":"#0088ff"}
execute if score p1= 27scores matches 1 if entity @a[tag=player1,team=red] run team modify displayline5 prefix {"text":"   ⚫⚪⚪⚪⚪⚪⚪⚪","color":"red"}
execute if score p1= 27scores matches 1 if entity @a[tag=player1,team=green] run team modify displayline5 prefix {"text":"   ⚫⚪⚪⚪⚪⚪⚪⚪","color":"green"}
execute if score p1= 27scores matches 1 if entity @a[tag=player1,team=orange] run team modify displayline5 prefix {"text":"   ⚫⚪⚪⚪⚪⚪⚪⚪","color":"gold"}
execute if score p1= 27scores matches 2 if entity @a[tag=player1,team=blue] run team modify displayline5 prefix {"text":"   ⚫⚫⚪⚪⚪⚪⚪⚪","color":"#0088ff"}
execute if score p1= 27scores matches 2 if entity @a[tag=player1,team=red] run team modify displayline5 prefix {"text":"   ⚫⚫⚪⚪⚪⚪⚪⚪","color":"red"}
execute if score p1= 27scores matches 2 if entity @a[tag=player1,team=green] run team modify displayline5 prefix {"text":"   ⚫⚫⚪⚪⚪⚪⚪⚪","color":"green"}
execute if score p1= 27scores matches 2 if entity @a[tag=player1,team=orange] run team modify displayline5 prefix {"text":"   ⚫⚫⚪⚪⚪⚪⚪⚪","color":"gold"}
execute if score p1= 27scores matches 3 if entity @a[tag=player1,team=blue] run team modify displayline5 prefix {"text":"   ⚫⚫⚫⚪⚪⚪⚪⚪","color":"#0088ff"}
execute if score p1= 27scores matches 3 if entity @a[tag=player1,team=red] run team modify displayline5 prefix {"text":"   ⚫⚫⚫⚪⚪⚪⚪⚪","color":"red"}
execute if score p1= 27scores matches 3 if entity @a[tag=player1,team=green] run team modify displayline5 prefix {"text":"   ⚫⚫⚫⚪⚪⚪⚪⚪","color":"green"}
execute if score p1= 27scores matches 3 if entity @a[tag=player1,team=orange] run team modify displayline5 prefix {"text":"   ⚫⚫⚫⚪⚪⚪⚪⚪","color":"gold"}
execute if score p1= 27scores matches 4 if entity @a[tag=player1,team=blue] run team modify displayline5 prefix {"text":"   ⚫⚫⚫⚫⚪⚪⚪⚪","color":"#0088ff"}
execute if score p1= 27scores matches 4 if entity @a[tag=player1,team=red] run team modify displayline5 prefix {"text":"   ⚫⚫⚫⚫⚪⚪⚪⚪","color":"red"}
execute if score p1= 27scores matches 4 if entity @a[tag=player1,team=green] run team modify displayline5 prefix {"text":"   ⚫⚫⚫⚫⚪⚪⚪⚪","color":"green"}
execute if score p1= 27scores matches 4 if entity @a[tag=player1,team=orange] run team modify displayline5 prefix {"text":"   ⚫⚫⚫⚫⚪⚪⚪⚪","color":"gold"}
execute if score p1= 27scores matches 5 if entity @a[tag=player1,team=blue] run team modify displayline5 prefix {"text":"   ⚫⚫⚫⚫⚫⚪⚪⚪","color":"#0088ff"}
execute if score p1= 27scores matches 5 if entity @a[tag=player1,team=red] run team modify displayline5 prefix {"text":"   ⚫⚫⚫⚫⚫⚪⚪⚪","color":"red"}
execute if score p1= 27scores matches 5 if entity @a[tag=player1,team=green] run team modify displayline5 prefix {"text":"   ⚫⚫⚫⚫⚫⚪⚪⚪","color":"green"}
execute if score p1= 27scores matches 5 if entity @a[tag=player1,team=orange] run team modify displayline5 prefix {"text":"   ⚫⚫⚫⚫⚫⚪⚪⚪","color":"gold"}
execute if score p1= 27scores matches 6 if entity @a[tag=player1,team=blue] run team modify displayline5 prefix {"text":"   ⚫⚫⚫⚫⚫⚫⚪⚪","color":"#0088ff"}
execute if score p1= 27scores matches 6 if entity @a[tag=player1,team=red] run team modify displayline5 prefix {"text":"   ⚫⚫⚫⚫⚫⚫⚪⚪","color":"red"}
execute if score p1= 27scores matches 6 if entity @a[tag=player1,team=green] run team modify displayline5 prefix {"text":"   ⚫⚫⚫⚫⚫⚫⚪⚪","color":"green"}
execute if score p1= 27scores matches 6 if entity @a[tag=player1,team=orange] run team modify displayline5 prefix {"text":"   ⚫⚫⚫⚫⚫⚫⚪⚪","color":"gold"}
execute if score p1= 27scores matches 7 if entity @a[tag=player1,team=blue] run team modify displayline5 prefix {"text":"   ⚫⚫⚫⚫⚫⚫⚫⚪","color":"#0088ff"}
execute if score p1= 27scores matches 7 if entity @a[tag=player1,team=red] run team modify displayline5 prefix {"text":"   ⚫⚫⚫⚫⚫⚫⚫⚪","color":"red"}
execute if score p1= 27scores matches 7 if entity @a[tag=player1,team=green] run team modify displayline5 prefix {"text":"   ⚫⚫⚫⚫⚫⚫⚫⚪","color":"green"}
execute if score p1= 27scores matches 7 if entity @a[tag=player1,team=orange] run team modify displayline5 prefix {"text":"   ⚫⚫⚫⚫⚫⚫⚫⚪","color":"gold"}
execute if score p1= 27scores matches 8 if entity @a[tag=player1,team=blue] run team modify displayline5 prefix {"text":"   ⚫⚫⚫⚫⚫⚫⚫⚫","color":"#0088ff"}
execute if score p1= 27scores matches 8 if entity @a[tag=player1,team=red] run team modify displayline5 prefix {"text":"   ⚫⚫⚫⚫⚫⚫⚫⚫","color":"red"}
execute if score p1= 27scores matches 8 if entity @a[tag=player1,team=green] run team modify displayline5 prefix {"text":"   ⚫⚫⚫⚫⚫⚫⚫⚫","color":"green"}
execute if score p1= 27scores matches 8 if entity @a[tag=player1,team=orange] run team modify displayline5 prefix {"text":"   ⚫⚫⚫⚫⚫⚫⚫⚫","color":"gold"}

# Player 2
execute if score p1= 27scores matches 0 if entity @a[tag=player2,team=blue] run team modify displayline2 prefix {"text":"   ⚪⚪⚪⚪⚪⚪⚪⚪","color":"#0088ff"}
execute if score p1= 27scores matches 0 if entity @a[tag=player2,team=red] run team modify displayline2 prefix {"text":"   ⚪⚪⚪⚪⚪⚪⚪⚪","color":"red"}
execute if score p1= 27scores matches 0 if entity @a[tag=player2,team=green] run team modify displayline2 prefix {"text":"   ⚪⚪⚪⚪⚪⚪⚪⚪","color":"green"}
execute if score p1= 27scores matches 0 if entity @a[tag=player2,team=orange] run team modify displayline2 prefix {"text":"   ⚪⚪⚪⚪⚪⚪⚪⚪","color":"gold"}
execute if score p1= 27scores matches 1 if entity @a[tag=player2,team=blue] run team modify displayline2 prefix {"text":"   ⚫⚪⚪⚪⚪⚪⚪⚪","color":"#0088ff"}
execute if score p1= 27scores matches 1 if entity @a[tag=player2,team=red] run team modify displayline2 prefix {"text":"   ⚫⚪⚪⚪⚪⚪⚪⚪","color":"red"}
execute if score p1= 27scores matches 1 if entity @a[tag=player2,team=green] run team modify displayline2 prefix {"text":"   ⚫⚪⚪⚪⚪⚪⚪⚪","color":"green"}
execute if score p1= 27scores matches 1 if entity @a[tag=player2,team=orange] run team modify displayline2 prefix {"text":"   ⚫⚪⚪⚪⚪⚪⚪⚪","color":"gold"}
execute if score p1= 27scores matches 2 if entity @a[tag=player2,team=blue] run team modify displayline2 prefix {"text":"   ⚫⚫⚪⚪⚪⚪⚪⚪","color":"#0088ff"}
execute if score p1= 27scores matches 2 if entity @a[tag=player2,team=red] run team modify displayline2 prefix {"text":"   ⚫⚫⚪⚪⚪⚪⚪⚪","color":"red"}
execute if score p1= 27scores matches 2 if entity @a[tag=player2,team=green] run team modify displayline2 prefix {"text":"   ⚫⚫⚪⚪⚪⚪⚪⚪","color":"green"}
execute if score p1= 27scores matches 2 if entity @a[tag=player2,team=orange] run team modify displayline2 prefix {"text":"   ⚫⚫⚪⚪⚪⚪⚪⚪","color":"gold"}
execute if score p1= 27scores matches 3 if entity @a[tag=player2,team=blue] run team modify displayline2 prefix {"text":"   ⚫⚫⚫⚪⚪⚪⚪⚪","color":"#0088ff"}
execute if score p1= 27scores matches 3 if entity @a[tag=player2,team=red] run team modify displayline2 prefix {"text":"   ⚫⚫⚫⚪⚪⚪⚪⚪","color":"red"}
execute if score p1= 27scores matches 3 if entity @a[tag=player2,team=green] run team modify displayline2 prefix {"text":"   ⚫⚫⚫⚪⚪⚪⚪⚪","color":"green"}
execute if score p1= 27scores matches 3 if entity @a[tag=player2,team=orange] run team modify displayline2 prefix {"text":"   ⚫⚫⚫⚪⚪⚪⚪⚪","color":"gold"}
execute if score p1= 27scores matches 4 if entity @a[tag=player2,team=blue] run team modify displayline2 prefix {"text":"   ⚫⚫⚫⚫⚪⚪⚪⚪","color":"#0088ff"}
execute if score p1= 27scores matches 4 if entity @a[tag=player2,team=red] run team modify displayline2 prefix {"text":"   ⚫⚫⚫⚫⚪⚪⚪⚪","color":"red"}
execute if score p1= 27scores matches 4 if entity @a[tag=player2,team=green] run team modify displayline2 prefix {"text":"   ⚫⚫⚫⚫⚪⚪⚪⚪","color":"green"}
execute if score p1= 27scores matches 4 if entity @a[tag=player2,team=orange] run team modify displayline2 prefix {"text":"   ⚫⚫⚫⚫⚪⚪⚪⚪","color":"gold"}
execute if score p1= 27scores matches 5 if entity @a[tag=player2,team=blue] run team modify displayline2 prefix {"text":"   ⚫⚫⚫⚫⚫⚪⚪⚪","color":"#0088ff"}
execute if score p1= 27scores matches 5 if entity @a[tag=player2,team=red] run team modify displayline2 prefix {"text":"   ⚫⚫⚫⚫⚫⚪⚪⚪","color":"red"}
execute if score p1= 27scores matches 5 if entity @a[tag=player2,team=green] run team modify displayline2 prefix {"text":"   ⚫⚫⚫⚫⚫⚪⚪⚪","color":"green"}
execute if score p1= 27scores matches 5 if entity @a[tag=player2,team=orange] run team modify displayline2 prefix {"text":"   ⚫⚫⚫⚫⚫⚪⚪⚪","color":"gold"}
execute if score p1= 27scores matches 6 if entity @a[tag=player2,team=blue] run team modify displayline2 prefix {"text":"   ⚫⚫⚫⚫⚫⚫⚪⚪","color":"#0088ff"}
execute if score p1= 27scores matches 6 if entity @a[tag=player2,team=red] run team modify displayline2 prefix {"text":"   ⚫⚫⚫⚫⚫⚫⚪⚪","color":"red"}
execute if score p1= 27scores matches 6 if entity @a[tag=player2,team=green] run team modify displayline2 prefix {"text":"   ⚫⚫⚫⚫⚫⚫⚪⚪","color":"green"}
execute if score p1= 27scores matches 6 if entity @a[tag=player2,team=orange] run team modify displayline2 prefix {"text":"   ⚫⚫⚫⚫⚫⚫⚪⚪","color":"gold"}
execute if score p1= 27scores matches 7 if entity @a[tag=player2,team=blue] run team modify displayline2 prefix {"text":"   ⚫⚫⚫⚫⚫⚫⚫⚪","color":"#0088ff"}
execute if score p1= 27scores matches 7 if entity @a[tag=player2,team=red] run team modify displayline2 prefix {"text":"   ⚫⚫⚫⚫⚫⚫⚫⚪","color":"red"}
execute if score p1= 27scores matches 7 if entity @a[tag=player2,team=green] run team modify displayline2 prefix {"text":"   ⚫⚫⚫⚫⚫⚫⚫⚪","color":"green"}
execute if score p1= 27scores matches 7 if entity @a[tag=player2,team=orange] run team modify displayline2 prefix {"text":"   ⚫⚫⚫⚫⚫⚫⚫⚪","color":"gold"}
execute if score p1= 27scores matches 8 if entity @a[tag=player2,team=blue] run team modify displayline2 prefix {"text":"   ⚫⚫⚫⚫⚫⚫⚫⚫","color":"#0088ff"}
execute if score p1= 27scores matches 8 if entity @a[tag=player2,team=red] run team modify displayline2 prefix {"text":"   ⚫⚫⚫⚫⚫⚫⚫⚫","color":"red"}
execute if score p1= 27scores matches 8 if entity @a[tag=player2,team=green] run team modify displayline2 prefix {"text":"   ⚫⚫⚫⚫⚫⚫⚫⚫","color":"green"}
execute if score p1= 27scores matches 8 if entity @a[tag=player2,team=orange] run team modify displayline2 prefix {"text":"   ⚫⚫⚫⚫⚫⚫⚫⚫","color":"gold"}

#   Author        =   @ T4Bl3rUs
#   Description   =   Handles the sidebar scoreboard. Is run at the start and whenever a player finishes
#   Called By     =   games:12/start2 + games:12/uncover

# Resets the scoreboard and all the scores
scoreboard objectives setdisplay sidebar 12display
scoreboard players reset * 12display

scoreboard players set §0§0§0§0§0§0§0§0 12display 8
scoreboard players set §0§0§0§0§0§0§0 12display 7
scoreboard players set §0§0§0§0§0 12display 5

execute as @a[tag=ingame,tag=solo,team=blue] run team modify displayline8 prefix {"translate":"game.HideNPeek.Seekers","bold":true,"color":"#0088ff"}
execute as @a[tag=ingame,tag=solo,team=red] run team modify displayline8 prefix {"translate":"game.HideNPeek.Seekers","bold":true,"color":"red"}
execute as @a[tag=ingame,tag=solo,team=green] run team modify displayline8 prefix {"translate":"game.HideNPeek.Seekers","bold":true,"color":"green"}
execute as @a[tag=ingame,tag=solo,team=orange] run team modify displayline8 prefix {"translate":"game.HideNPeek.Seekers","bold":true,"color":"gold"}

team modify displayline5 prefix {"translate":"game.HideNPeek.Hiders","bold":true}

#Display the lives
execute if score lives 12scores matches 5 run team modify displayline7 prefix {"text":"     ❤❤❤❤❤","color":"red"}
execute if score lives 12scores matches 4 run team modify displayline7 prefix {"text":"      ❤❤❤❤","color":"red"}
execute if score lives 12scores matches 3 run team modify displayline7 prefix {"text":"       ❤❤❤","color":"red"}
execute if score lives 12scores matches 2 run team modify displayline7 prefix {"text":"         ❤❤","color":"red"}
execute if score lives 12scores matches 1 run team modify displayline7 prefix {"text":"          ❤","color":"red"}

team modify t.12b suffix ["    ",{"translate":"generic.BlueTeam","bold":true,"color":"#0088ff"}]
team modify t.12r suffix ["    ",{"translate":"generic.RedTeam","bold":true,"color":"red"}]
team modify t.12g suffix ["    ",{"translate":"generic.GreenTeam","bold":true,"color":"green"}]
team modify t.12o suffix ["    ",{"translate":"generic.OrangeTeam","bold":true,"color":"gold"}]
execute as @a[tag=caught,team=blue] run team modify t.12b suffix ["    ",{"translate":"generic.BlueTeam","bold":true,"color":"dark_gray"}]
execute as @a[tag=caught,team=red] run team modify t.12r suffix ["    ",{"translate":"generic.RedTeam","bold":true,"color":"dark_gray"}]
execute as @a[tag=caught,team=green] run team modify t.12g suffix ["    ",{"translate":"generic.GreenTeam","bold":true,"color":"dark_gray"}]
execute as @a[tag=caught,team=orange] run team modify t.12o suffix ["    ",{"translate":"generic.OrangeTeam","bold":true,"color":"dark_gray"}]


#If there is an entity on the team, it will add the teams name to the scoreboard
team join t.12b §l
team join t.12r §l§l
team join t.12g §l§l§l
team join t.12o §l§l§l§l
execute as @a[tag=ingame,tag=!solo,team=blue] run scoreboard players set §l 12display 4
execute as @a[tag=ingame,tag=!solo,team=red] run scoreboard players set §l§l 12display 3
execute as @a[tag=ingame,tag=!solo,team=green] run scoreboard players set §l§l§l 12display 2
execute as @a[tag=ingame,tag=!solo,team=orange] run scoreboard players set §l§l§l§l 12display 1

#Adds the blank lines
scoreboard players set §r 12display 9
scoreboard players set §r§r 12display 6
scoreboard players set §r§r§r 12display 0
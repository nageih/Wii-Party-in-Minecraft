#   Author        =   @ T4Bl3rUs
#   Description   =   Handles the sidebar scoreboard. Is run at the start and whenever a player finishes
#   Called By     =   games:18/start + games:18/finish

# Resets the scoreboard and all the scores
scoreboard objectives setdisplay sidebar 18display
scoreboard players reset * 18display
#scoreboard players set 18display 13

# If there is an entity on the team, it will add the teams name to the scoreboard
team join t.Blue §l
execute as @a[tag=ingame,team=blue] run scoreboard players set §l 18display 12
team join t.Red §l§l
execute as @a[tag=ingame,team=red] run scoreboard players set §l§l 18display 9
team join t.Green §l§l§l
execute as @a[tag=ingame,team=green] run scoreboard players set §l§l§l 18display 6
team join t.Orange §l§l§l§l
execute as @a[tag=ingame,team=orange] run scoreboard players set §l§l§l§l 18display 3

# Adds the blank lines in the scoreboard depending on if teams are present
scoreboard players set §r 2display 13
execute as @a[tag=ingame,team=blue] run scoreboard players set §r§r 18display 10
execute as @a[tag=ingame,team=red] run scoreboard players set §r§r§r 18display 7
execute as @a[tag=ingame,team=green] run scoreboard players set §r§r§r§r 18display 4
execute as @a[tag=ingame,team=orange] run scoreboard players set §r§r§r§r§r 18display 1

# Blue team
team join t.18b §r§r§r§r§r§r
execute as @a[tag=ingame,team=blue] run scoreboard players set §r§r§r§r§r§r 18display 11
# Red team
team join t.18r §r§r§r§r§r§r§r
execute as @a[tag=ingame,team=red] run scoreboard players set §r§r§r§r§r§r§r 18display 8
# Green team
team join t.18g §r§r§r§r§r§r§r§r
execute as @a[tag=ingame,team=green] run scoreboard players set §r§r§r§r§r§r§r§r 18display 5
# Orange team
team join t.18o §r§r§r§r§r§r§r§r§r
execute as @a[tag=ingame,team=orange] run scoreboard players set §r§r§r§r§r§r§r§r§r 18display 2

execute as @a[tag=finished] run function games:18/dec
execute as @a[tag=finished] run function games:18/sec
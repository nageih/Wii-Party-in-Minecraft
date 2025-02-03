#   Author        =   @ JevinLevin
#   Description   =   Lets the players start moving
#   Called By     =   games:4/starttitle

# Clears the subtitle incase one is already being displayed
title @a[tag=playing] subtitle " "

# Displays Start! for all players, the colour dependant on their team
title @a[team=blue] title {"nbt":"colors.blue","storage":"minecraft:config","interpret":true,"extra":[{"translate":"generic.Start","bold":true}],"source":"storage","type":"nbt"}
title @a[team=red] title {"nbt":"colors.red","storage":"minecraft:config","interpret":true,"extra":[{"translate":"generic.Start","bold":true}],"source":"storage","type":"nbt"}
title @a[team=green] title {"nbt":"colors.green","storage":"minecraft:config","interpret":true,"extra":[{"translate":"generic.Start","bold":true}],"source":"storage","type":"nbt"}
title @a[team=orange] title {"nbt":"colors.orange","storage":"minecraft:config","interpret":true,"extra":[{"translate":"generic.Start","bold":true}],"source":"storage","type":"nbt"}
title @a[tag=playing,tag=!ingame] title {"nbt":"colors.spectator","storage":"minecraft:config","interpret":true,"extra":[{"translate":"generic.Start","bold":true}],"source":"storage","type":"nbt"}

# Ping sound effect for all players
execute as @a[tag=playing] at @s run playsound minecraft:block.note_block.pling master @a ~ ~ ~ 1 2
execute as @a[tag=playing] at @s run playsound ouo:start master @s ~ ~ ~ 3 1

# Sets the ingame score to 2, this signifies that the game has actually started
scoreboard players set ingame= 4scores 2


# Sets the bossbar for the start of the game
    # Sets the bossbar max value
bossbar set 4blue max 3600
bossbar set 4red max 3600
bossbar set 4green max 3600
bossbar set 4orange max 3600
bossbar set 4spectator max 3600
    # Sets the bossbar to the max value
bossbar set 4blue value 3600
bossbar set 4red value 3600
bossbar set 4green value 3600
bossbar set 4orange value 3600
bossbar set 4spectator value 3600
    # Sets the bossbar to visible
bossbar set 4blue visible true
bossbar set 4red visible true
bossbar set 4green visible true
bossbar set 4orange visible true
bossbar set 4spectator visible true
    # Sets the bossbar for all players on the correct teams
bossbar set 4blue players @a[tag=ingame,team=blue]
bossbar set 4red players @a[tag=ingame,team=red]
bossbar set 4green players @a[tag=ingame,team=green]
bossbar set 4orange players @a[tag=ingame,team=orange]
bossbar set 4spectator players @a[tag=playing,tag=!ingame]


function games:4/play_song

scoreboard objectives add 4turnCooldown dummy
scoreboard objectives add 4inputCooldown dummy
scoreboard players set @a[tag=ingame] 4turnCooldown 0
scoreboard players set @a[tag=ingame] 4shootCooldown 0
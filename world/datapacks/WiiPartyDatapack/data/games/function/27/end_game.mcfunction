#   Author        =   @ T4Bl3rUs
#   Description   =   Ran at the end of the game
#   Called By     =   games:27/repeating

# Clears the subtitle incase one is already being displayed
title @a[tag=playing] subtitle " "

# Resets the times
title @a[tag=ingame] times 20 60 20

# Displays FINISH! for all players, the colour dependant on their team
title @a[tag=ingame,team=blue] title {"nbt":"colors.blue","storage":"minecraft:config","interpret":true,"extra":[{"translate":"generic.Finish","bold":true}],"source":"storage","type":"nbt"}
title @a[tag=ingame,team=red] title {"nbt":"colors.red","storage":"minecraft:config","interpret":true,"extra":[{"translate":"generic.Finish","bold":true}],"source":"storage","type":"nbt"}
title @a[tag=ingame,team=green] title {"nbt":"colors.green","storage":"minecraft:config","interpret":true,"extra":[{"translate":"generic.Finish","bold":true}],"source":"storage","type":"nbt"}
title @a[tag=ingame,team=orange] title {"nbt":"colors.gold","storage":"minecraft:config","interpret":true,"extra":[{"translate":"generic.Finish","bold":true}],"source":"storage","type":"nbt"}
title @a[tag=playing,tag=!ingame] title {"nbt":"colors.spectator","storage":"minecraft:config","interpret":true,"extra":[{"translate":"generic.Finish","bold":true}],"source":"storage","type":"nbt"}

# Ping sound effect
execute as @a[tag=playing] at @s run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 1 0.5
execute as @a[tag=playing] at @s run playsound ouo:finish master @s ~ ~ ~ 1 1

# Schedules the end function for 5 seconds, this function will reset the minigame and take playes back to the island
schedule function games:27/end 5s

# Schedules the fade to black function to happen just before the end to give the true effect
schedule function general:fade/main 88t

# Resets the ingame function to signify that the game has ended
scoreboard players reset ingame= 27scores

# Runs the function that shows where the players placed
execute unless score practice= 27scores matches 1 run function general:placements

# Gives the player weakness so they cant punch
effect give @a[tag=ingame] minecraft:weakness infinite 255 true

# Shows message showing that the practice round is over
execute if score practice= 27scores matches 1 run tellraw @a[tag=ingame,team=blue] {"nbt":"colors.blue","storage":"minecraft:config","interpret":true,"extra":[{"translate":"generic.Practice.RoundOver","bold":true}],"source":"storage","type":"nbt"}
execute if score practice= 27scores matches 1 run tellraw @a[tag=ingame,team=red] {"nbt":"colors.red","storage":"minecraft:config","interpret":true,"extra":[{"translate":"generic.Practice.RoundOver","bold":true}],"source":"storage","type":"nbt"}
execute if score practice= 27scores matches 1 run tellraw @a[tag=ingame,team=green] {"nbt":"colors.green","storage":"minecraft:config","interpret":true,"extra":[{"translate":"generic.Practice.RoundOver","bold":true}],"source":"storage","type":"nbt"}
execute if score practice= 27scores matches 1 run tellraw @a[tag=ingame,team=orange] {"nbt":"colors.orange","storage":"minecraft:config","interpret":true,"extra":[{"translate":"generic.Practice.RoundOver","bold":true}],"source":"storage","type":"nbt"}

# Restarts vote if practice mode is on
execute if score practice= 27scores matches 1 run schedule function games:27/start 112t

# Clears the players
clear @a[tag=ingame]

schedule clear games:27/play_song
stopsound @a[tag=playing] voice


#   Author        =   @ JevinLevin
#   Description   =   Ends the game, and schedules the reset and the next board parts
#   Called By     =   games:4/repeating

# Sets all players title time back to the default
title @a[tag=playing] times 20 60 20

# Clears the subtitle incase one is already being displayed
title @a[tag=playing] subtitle " "

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
schedule function games:4/end 5s

# Schedules the fade to black function to happen just before the end to give the true effect
schedule function general:fade/main 88t

# Sets scores
# Sets the ingame score to 0 to signify that the game has ended
scoreboard players set ingame= 4scores 0
# Resets other scores
scoreboard players reset alive= 4scores

# Gives all players who aren't dead the 1st position
tag @a[tag=ingame,tag=!4dead] add 1st

# Removes the 4dead tag from all players
tag @a remove 4dead

# Runs the function that shows where the players placed
function general:placements

# Clear the new_powerup function from running again since the game is over
schedule clear games:4/new_powerup

# Clears the players carrot on a stick  from their offhand
clear @a[tag=ingame] minecraft:carrot_on_a_stick[minecraft:custom_data={4shoot:1b}]

schedule clear games:4/play_song
stopsound @a[tag=playing] voice

effect clear @a[tag=ingame] haste 

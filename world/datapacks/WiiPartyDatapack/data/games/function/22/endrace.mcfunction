# Clears the subtitle incase one is already being displayed
title @a[tag=playing] subtitle " "

# Displays GO! for all players, the colour dependant on their team
title @a[tag=ingame,tag=blue] title {"nbt":"colors.blue","storage":"minecraft:config","interpret":true,"extra":[{"translate":"generic.Finish","bold":true,"type":"translatable"}],"source":"storage","type":"nbt"}
title @a[tag=ingame,tag=red] title {"nbt":"colors.red","storage":"minecraft:config","interpret":true,"extra":[{"translate":"generic.Finish","bold":true,"type":"translatable"}],"source":"storage","type":"nbt"}
title @a[tag=ingame,tag=green] title {"nbt":"colors.green","storage":"minecraft:config","interpret":true,"extra":[{"translate":"generic.Finish","bold":true,"type":"translatable"}],"source":"storage","type":"nbt"}
title @a[tag=ingame,tag=orange] title {"nbt":"colors.orange","storage":"minecraft:config","interpret":true,"extra":[{"translate":"generic.Finish","bold":true,"type":"translatable"}],"source":"storage","type":"nbt"}
title @a[tag=playing,tag=!ingame] title {"nbt":"colors.spectator","storage":"minecraft:config","interpret":true,"extra":[{"translate":"generic.Ready","bold":true}],"source":"storage","type":"nbt"}

# Ping sound effect
execute as @a[tag=playing] at @s run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 1 0.5
execute as @a[tag=playing] at @s run playsound ouo:finish master @s ~ ~ ~ 1 1

# Schedules the end function for 5 seconds, this function will reset the minigame and take playes back to the island
schedule function games:22/end 5s

# Schedules the fade to black function to happen just before the end to give the true effect
schedule function general:fade/main 88t

# Sets the ingame function to 0 to signify that the game has ended
scoreboard players set ingame 22scores 0

# Gives all the players weakness forever to disable PvP
effect give @a[tag=ingame] minecraft:weakness infinite 255 true

# Runs the score function that gives all the players the 1st, 2nd and 3rd and 4th tags depending on how high their score was
function games:22/give_score

function general:placements

schedule clear games:22/play_song
stopsound @a[tag=playing] voice

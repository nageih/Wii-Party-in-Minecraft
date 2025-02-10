#   Author        =   @ JevinLevin
#   Description   =   Runs after the start countdown, makes the moles start popping
#   Called By     =   games:26/start_title

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

# ingame= score is used to determine which part of the minigame you are in
scoreboard players set ingame= 26scores 2

# Starts running the function that spawns the moles in 1 second
schedule function games:26/new_mole 1s

# Makes the title times short so that the cooldown title shows correctly
title @a[tag=ingame] times 10 20 10

# Removes all players weakness so they can hit the moles and players
effect clear @a[tag=ingame] minecraft:weakness

function games:26/play_song

#   Author        =   @ JevinLevin
#   Description   =   Ran at the end of the game
#   Called By     =   games:2/endanimation

# Clears the subtitle incase one is already being displayed
title @a[tag=playing] subtitle " "

# Displays GO! for all players, the colour dependant on their team
title @a[tag=ingame,tag=blue] title {"nbt":"colors.blue","storage":"minecraft:config","interpret":true,"extra":[{"translate":"generic.Finish","bold":true}],"source":"storage","type":"nbt"}
title @a[tag=ingame,tag=red] title {"nbt":"colors.red","storage":"minecraft:config","interpret":true,"extra":[{"translate":"generic.Finish","bold":true}],"source":"storage","type":"nbt"}
title @a[tag=ingame,tag=green] title {"nbt":"colors.green","storage":"minecraft:config","interpret":true,"extra":[{"translate":"generic.Finish","bold":true}],"source":"storage","type":"nbt"}
title @a[tag=ingame,tag=orange] title {"nbt":"colors.orange","storage":"minecraft:config","interpret":true,"extra":[{"translate":"generic.Finish","bold":true}],"source":"storage","type":"nbt"}
title @a[tag=playing,tag=!ingame] title {"nbt":"colors.spectator","storage":"minecraft:config","interpret":true,"extra":[{"translate":"generic.Finish","bold":true}],"source":"storage","type":"nbt"}

# Ping sound effect
execute as @a[tag=playing] at @s run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 1 0.5
execute as @a[tag=playing] at @s run playsound ouo:finish master @s ~ ~ ~ 1 1

# Schedules the end function for 5 seconds, this function will reset the minigame and take playes back to the island
schedule function games:2/end 5s

# Schedules the fade to black function to happen just before the end to give the true effect
schedule function general:fade/main 88t

# Sets the ingame function to 0 to signify that the game has ended
scoreboard players set ingame 2scores 0

# Gives all the players weakness forever to disable PvP
effect give @a[tag=ingame] minecraft:weakness infinite 255 true

# Rejoins all players back to their team
team join blue @a[tag=blue]
team join red @a[tag=red]
team join green @a[tag=green]
team join orange @a[tag=orange]

# Runs the function that shows where the players placed
function general:placements

# Clears all players slowness and jump boost, given to stop playes from moving during the end animation
effect clear @a[tag=ingame] minecraft:slowness
execute as @a[tag=ingame] run attribute @s minecraft:generic.jump_strength base set 0.41999998688697815

# Removes the dead and zombie tags, given to the player when they turn into a zombie
tag @a remove dead

# Kills all the boats summoned above the players to force them to crawl
kill @e[type=minecraft:boat,tag=1endboat]
kill @e[type=minecraft:armor_stand,tag=2freeze]

scoreboard players set start= 2scores 0

# Advancement
advancement grant @a[tag=dead,scores={advancements=2}] only advancements:zombie_tag/psycho_killer


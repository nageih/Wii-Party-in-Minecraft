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
schedule function games:28/end 5s

# Schedules the fade to black function to happen just before the end to give the true effect
schedule function general:fade/main 88t

# Sets scores
# Sets the ingame score to 0 to signify that the game has ended
scoreboard players set ingame= 28scores 0


# Gives placement tags
function games:28/give_score

# Runs the function that shows where the players placed
function general:placements


# Look at winner
execute as @a[tag=ingame,tag=1st] at @s run tag @e[type=armor_stand,tag=28player,limit=1,sort=nearest] add 1st
effect give @e[type=armor_stand,tag=1st] glowing infinite 1 true
execute if entity @a[tag=ingame,tag=1st] as @e[type=armor_stand,tag=28player,tag=!1st] at @s run function games:28/loot_at_winner

stopsound @a[tag=playing] voice

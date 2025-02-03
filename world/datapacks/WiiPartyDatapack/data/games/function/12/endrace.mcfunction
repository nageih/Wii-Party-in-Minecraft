#   Author        =   @ T4Bl3rUs
#   Description   =   Resets nametag visibility, ends the game and displays the results
#   Called By     =   games:12/repeating

scoreboard players reset global minigame

#Display a title to show that the game has finished
title @a[tag=playing] actionbar " "
title @a[tag=ingame,tag=blue] title {"nbt":"colors.blue","storage":"minecraft:config","interpret":true,"extra":[{"translate":"generic.Finish","bold":true}],"source":"storage","type":"nbt"}
title @a[tag=ingame,tag=red] title {"nbt":"colors.red","storage":"minecraft:config","interpret":true,"extra":[{"translate":"generic.Finish","bold":true}],"source":"storage","type":"nbt"}
title @a[tag=ingame,tag=green] title {"nbt":"colors.green","storage":"minecraft:config","interpret":true,"extra":[{"translate":"generic.Finish","bold":true}],"source":"storage","type":"nbt"}
title @a[tag=ingame,tag=orange] title {"nbt":"colors.orange","storage":"minecraft:config","interpret":true,"extra":[{"translate":"generic.Finish","bold":true}],"source":"storage","type":"nbt"}

#Reenable nametag visibility
team modify blue nametagVisibility always
team modify red nametagVisibility always
team modify green nametagVisibility always
team modify yellow nametagVisibility always

#End the game
execute as @a[tag=playing] at @s run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 1 0.5
execute as @a[tag=playing] at @s run playsound ouo:finish master @s ~ ~ ~ 1 1

schedule function games:12/end 5s
schedule function general:fade/main 88t

scoreboard players set timer 12scores -1

#Display results
scoreboard objectives setdisplay sidebar
function general:placements_teams

schedule clear games:12/play_song
stopsound @a[tag=playing] voice

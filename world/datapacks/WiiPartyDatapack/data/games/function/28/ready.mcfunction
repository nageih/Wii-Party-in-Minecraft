scoreboard players operation timer= 28scores = target= 28scores 
execute as @e[type=text_display,tag=28main] run function games:28/set_timers
scoreboard players set timer= 28scores 0

# Displays a blank title so that the subtitles can be displayed
title @a[tag=playing] title ""

# Displays 'Ready' as a subtitle with the colour depending on the team
title @a[team=blue] subtitle {"nbt":"colors.blue","storage":"minecraft:config","interpret":true,"extra":[{"translate":"generic.Ready","bold":true}],"source":"storage","type":"nbt"}
title @a[team=red] subtitle {"nbt":"colors.red","storage":"minecraft:config","interpret":true,"extra":[{"translate":"generic.Ready","bold":true}],"source":"storage","type":"nbt"}
title @a[team=green] subtitle {"nbt":"colors.green","storage":"minecraft:config","interpret":true,"extra":[{"translate":"generic.Ready","bold":true}],"source":"storage","type":"nbt"}
title @a[team=orange] subtitle {"nbt":"colors.orange","storage":"minecraft:config","interpret":true,"extra":[{"translate":"generic.Ready","bold":true}],"source":"storage","type":"nbt"}
title @a[tag=playing,tag=!ingame] subtitle {"nbt":"colors.spectator","storage":"minecraft:config","interpret":true,"extra":[{"translate":"generic.Ready","bold":true}],"source":"storage","type":"nbt"}

# Plays countdown sound
execute as @a[tag=playing] at @s run playsound minecraft:block.note_block.banjo master @s ~ ~ ~ 3 0.7

schedule function games:28/begin 2s

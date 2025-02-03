# Displays a blank title so that the subtitles can be displayed
title @a[tag=playing] title ""

# Displays 'Ready' as a subtitle with the colour depending on the team
title @a[team=blue] subtitle {"nbt":"colors.blue","storage":"minecraft:config","interpret":true,"extra":[{"translate":"generic.Almost","bold":true}],"source":"storage","type":"nbt"}
title @a[team=red] subtitle {"nbt":"colors.red","storage":"minecraft:config","interpret":true,"extra":[{"translate":"generic.Almost","bold":true}],"source":"storage","type":"nbt"}
title @a[team=green] subtitle {"nbt":"colors.green","storage":"minecraft:config","interpret":true,"extra":[{"translate":"generic.Almost","bold":true}],"source":"storage","type":"nbt"}
title @a[team=orange] subtitle {"nbt":"colors.orange","storage":"minecraft:config","interpret":true,"extra":[{"translate":"generic.Almost","bold":true}],"source":"storage","type":"nbt"}
title @a[tag=playing,tag=!ingame] subtitle {"nbt":"colors.spectator","storage":"minecraft:config","interpret":true,"extra":[{"translate":"generic.Almost","bold":true}],"source":"storage","type":"nbt"}

execute as @a[tag=playing] at @s run playsound minecraft:block.note_block.banjo master @a ~ ~ ~ 1 0.9
schedule function games:6/startrace 1.5s
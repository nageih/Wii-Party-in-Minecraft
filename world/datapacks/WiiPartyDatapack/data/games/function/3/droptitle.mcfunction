#   Author        =   @ JevinLevin
#   Description   =   Displays a title for all players
#   Called By     =   games:3/start_animation


# Shortens the title times so they disappear before the barrel starts to stop
title @a[tag=playing] times 10 20 10

# Displays a blank title so that the subtitles can be displayed
title @a[tag=playing] title ""

# Displays 'Start!' as a subtitle with the colour depending on the team
title @a[team=blue] subtitle {"nbt":"colors.blue","storage":"minecraft:config","interpret":true,"extra":[{"translate":"generic.Start","bold":true}],"source":"storage","type":"nbt"}
title @a[team=red] subtitle {"nbt":"colors.red","storage":"minecraft:config","interpret":true,"extra":[{"translate":"generic.Start","bold":true}],"source":"storage","type":"nbt"}
title @a[team=green] subtitle {"nbt":"colors.green","storage":"minecraft:config","interpret":true,"extra":[{"translate":"generic.Start","bold":true}],"source":"storage","type":"nbt"}
title @a[team=orange] subtitle {"nbt":"colors.orange","storage":"minecraft:config","interpret":true,"extra":[{"translate":"generic.Start","bold":true}],"source":"storage","type":"nbt"}
title @a[tag=playing,tag=!ingame] subtitle {"nbt":"colors.spectator","storage":"minecraft:config","interpret":true,"extra":[{"translate":"generic.Start","bold":true}],"source":"storage","type":"nbt"}

# Plays countdown sound
execute as @a[tag=playing] at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 3 1
execute as @a[tag=playing] at @s run playsound ouo:start master @s ~ ~ ~ 3 1
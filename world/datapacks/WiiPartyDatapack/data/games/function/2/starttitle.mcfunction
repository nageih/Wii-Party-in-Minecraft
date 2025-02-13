#   Author        =   @ JevinLevin
#   Description   =   Displays title at the start
#   Called By     =   games:2/start


# Displays a blank title so that the subtitles can be displayed
title @a[tag=playing] title ""

# Displays 'Ready' as a subtitle with the colour depending on the team
title @a[tag=blue] subtitle {"nbt":"colors.blue","storage":"minecraft:config","interpret":true,"extra":[{"translate":"game.ZombieTag.EnterTheGraveyard","bold":true}],"source":"storage","type":"nbt"}
title @a[tag=red] subtitle {"nbt":"colors.red","storage":"minecraft:config","interpret":true,"extra":[{"translate":"game.ZombieTag.EnterTheGraveyard","bold":true}],"source":"storage","type":"nbt"}
title @a[tag=green] subtitle {"nbt":"colors.green","storage":"minecraft:config","interpret":true,"extra":[{"translate":"game.ZombieTag.EnterTheGraveyard","bold":true}],"source":"storage","type":"nbt"}
title @a[tag=orange] subtitle {"nbt":"colors.orange","storage":"minecraft:config","interpret":true,"extra":[{"translate":"game.ZombieTag.EnterTheGraveyard","bold":true}],"source":"storage","type":"nbt"}
title @a[tag=playing,tag=!ingame] subtitle {"nbt":"colors.spectator","storage":"minecraft:config","interpret":true,"extra":[{"translate":"game.ZombieTag.EnterTheGraveyard","bold":true}],"source":"storage","type":"nbt"}

# Plays countdown sound
execute as @a[tag=playing] at @s run playsound minecraft:block.note_block.banjo master @s ~ ~ ~ 3 0.7

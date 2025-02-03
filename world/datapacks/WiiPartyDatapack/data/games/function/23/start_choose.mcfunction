# Displays 'Choose a side!' as a subtitle with the colour depending on the team
title @a[team=blue,tag=ingame,tag=!dead] subtitle {"nbt":"colors.blue","storage":"minecraft:config","interpret":true,"extra":[{"translate":"game.RiskyRailway.ChooseSide","bold":true}],"source":"storage","type":"nbt"}
title @a[team=red,tag=ingame,tag=!dead] subtitle {"nbt":"colors.red","storage":"minecraft:config","interpret":true,"extra":[{"translate":"game.RiskyRailway.ChooseSide","bold":true}],"source":"storage","type":"nbt"}
title @a[team=green,tag=ingame,tag=!dead] subtitle {"nbt":"colors.green","storage":"minecraft:config","interpret":true,"extra":[{"translate":"game.RiskyRailway.ChooseSide","bold":true}],"source":"storage","type":"nbt"}
title @a[team=orange,tag=ingame,tag=!dead] subtitle {"nbt":"colors.orange","storage":"minecraft:config","interpret":true,"extra":[{"translate":"game.RiskyRailway.ChooseSide","bold":true}],"source":"storage","type":"nbt"}
title @a[tag=playing,tag=!ingame] subtitle {"nbt":"colors.spectator","storage":"minecraft:config","interpret":true,"extra":[{"translate":"game.RiskyRailway.ChooseSide","bold":true}],"source":"storage","type":"nbt"}

title @a[tag=playing,tag=!dead] title ""

execute as @a[tag=ingame,tag=!dead] at @s run playsound minecraft:block.note_block.hat master @s ~ ~ ~ 1
tag @a[tag=ingame,tag=!dead] add 23forward


# Sets the countdown= score to 1 to show that the countdown has started
scoreboard players set choosing= 23scores 1

# Sets the ingame score to 2, this signifies that the game has actually started
scoreboard players set ingame= 23scores 2

function games:23/view_prevention {"block":"barrier"}

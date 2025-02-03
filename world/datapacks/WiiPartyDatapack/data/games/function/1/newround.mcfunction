# Displays 'Choose a side!' as a subtitle with the colour depending on the team
title @a[team=blue] title {"nbt":"colors.blue","storage":"minecraft:config","interpret":true,"extra":[{"translate":"game.DiceyDescent.ChooseSide","bold":true}],"source":"storage","type":"nbt"}
title @a[team=red] title {"nbt":"colors.red","storage":"minecraft:config","interpret":true,"extra":[{"translate":"game.DiceyDescent.ChooseSide","bold":true}],"source":"storage","type":"nbt"}
title @a[team=green] title {"nbt":"colors.green","storage":"minecraft:config","interpret":true,"extra":[{"translate":"game.DiceyDescent.ChooseSide","bold":true}],"source":"storage","type":"nbt"}
title @a[team=orange] title {"nbt":"colors.orange","storage":"minecraft:config","interpret":true,"extra":[{"translate":"game.DiceyDescent.ChooseSide","bold":true}],"source":"storage","type":"nbt"}
title @a[tag=playing,tag=!ingame] title {"nbt":"colors.spectator","storage":"minecraft:config","interpret":true,"extra":[{"translate":"game.DiceyDescent.ChooseSide","bold":true}],"source":"storage","type":"nbt"}


# Starts the countdown
function games:1/countdown/8

# Sets the countdown= score to 1 to show that the countdown has started
scoreboard players set countdown= 1scores 1
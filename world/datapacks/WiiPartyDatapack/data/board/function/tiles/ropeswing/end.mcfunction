
execute as @a[tag=turn] run attribute @s minecraft:generic.gravity base set 0.08
execute if score if6 tiles matches 1 run schedule function board:dice_roll/end_go 1s

function general:island/structtobarriers

execute as @a[tag=turn] at @s run function board:dice_roll/prevent/clear_too_far
execute as @a[tag=turn] run function board:dice_roll/prevent/forward_prevention

function board:tiles/ropeswing/reset
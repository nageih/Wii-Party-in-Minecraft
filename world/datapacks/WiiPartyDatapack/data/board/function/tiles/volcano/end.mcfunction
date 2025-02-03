
function board:tiles/volcano/landed/reset
function board:tiles/volcano/reset

# Runs the end of the dice rolling segment
execute as @a[tag=turn] run function board:dice_roll/end_go
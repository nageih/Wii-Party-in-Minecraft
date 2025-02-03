

# Tellraw showing the players new position
execute as @a[tag=turn] run function general:updated_positions

function board:tiles/dino/reset

# Runs the end of the dice rolling segment
execute as @a[tag=turn] run function board:dice_roll/end_go

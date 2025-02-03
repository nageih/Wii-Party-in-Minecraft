# Tellraw showing the players new position
function general:updated_positions

scoreboard players reset originalTile= tiles

# Runs the end_go function to end the dice_roll segment
function board:dice_roll/end_go
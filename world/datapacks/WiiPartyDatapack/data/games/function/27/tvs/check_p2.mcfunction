#   Author        =   @ T4Bl3rUs
#   Description   =   Checks if player 2 has finished
#   Called By     =   games:27/tvs/p2_*



scoreboard players set p2= 27scores 0
execute if score p2_l1= 27scores = main= 27scores run scoreboard players add p2= 27scores 1
execute if score p2_l2= 27scores = main= 27scores run scoreboard players add p2= 27scores 1
execute if score p2_l3= 27scores = main= 27scores run scoreboard players add p2= 27scores 1
execute if score p2_l4= 27scores = main= 27scores run scoreboard players add p2= 27scores 1
execute if score p2_r1= 27scores = main= 27scores run scoreboard players add p2= 27scores 1
execute if score p2_r2= 27scores = main= 27scores run scoreboard players add p2= 27scores 1
execute if score p2_r3= 27scores = main= 27scores run scoreboard players add p2= 27scores 1
execute if score p2_r4= 27scores = main= 27scores run scoreboard players add p2= 27scores 1
function games:27/display
execute if score main= 27scores = p2_l1= 27scores if score main= 27scores = p2_l2= 27scores if score main= 27scores = p2_l3= 27scores if score main= 27scores = p2_l4= 27scores if score main= 27scores = p2_r1= 27scores if score main= 27scores = p2_r2= 27scores if score main= 27scores = p2_r3= 27scores if score main= 27scores = p2_r4= 27scores run function games:27/p2_win

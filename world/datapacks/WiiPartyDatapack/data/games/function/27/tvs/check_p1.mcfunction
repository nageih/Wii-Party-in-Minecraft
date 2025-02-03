#   Author        =   @ T4Bl3rUs
#   Description   =   Checks if player 1 has finished
#   Called By     =   games:27/tvs/p1_*



scoreboard players set p1= 27scores 0
execute if score p1_l1= 27scores = main= 27scores run scoreboard players add p1= 27scores 1
execute if score p1_l2= 27scores = main= 27scores run scoreboard players add p1= 27scores 1
execute if score p1_l3= 27scores = main= 27scores run scoreboard players add p1= 27scores 1
execute if score p1_l4= 27scores = main= 27scores run scoreboard players add p1= 27scores 1
execute if score p1_r1= 27scores = main= 27scores run scoreboard players add p1= 27scores 1
execute if score p1_r2= 27scores = main= 27scores run scoreboard players add p1= 27scores 1
execute if score p1_r3= 27scores = main= 27scores run scoreboard players add p1= 27scores 1
execute if score p1_r4= 27scores = main= 27scores run scoreboard players add p1= 27scores 1
function games:27/display
execute if score main= 27scores = p1_l1= 27scores if score main= 27scores = p1_l2= 27scores if score main= 27scores = p1_l3= 27scores if score main= 27scores = p1_l4= 27scores if score main= 27scores = p1_r1= 27scores if score main= 27scores = p1_r2= 27scores if score main= 27scores = p1_r3= 27scores if score main= 27scores = p1_r4= 27scores run function games:27/p1_win

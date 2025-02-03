#   Author        =   @ JevinLevin
#   Description   =   Ends the shout space segment and either ends the round or lets the player continue moving
#   Called By     =   board:tiles/shout_space/main



# Displays blank line in chat
tellraw @a[tag=playing] ""

# Tellraw for everyone saying that the player made it out of the volcano
execute if entity @a[tag=turn,team=blue] run tellraw @a[tag=playing] {"translate":"board.Tiles.Shout.Escape","bold":true,"color":"gray","with":[{"selector":"@a[tag=turn,limit=1]","color":"#0088ff"}]}
execute if entity @a[tag=turn,team=red] run tellraw @a[tag=playing] {"translate":"board.Tiles.Shout.Escape","bold":true,"color":"gray","with":[{"selector":"@a[tag=turn,limit=1]","color":"red"}]}
execute if entity @a[tag=turn,team=green] run tellraw @a[tag=playing] {"translate":"board.Tiles.Shout.Escape","bold":true,"color":"gray","with":[{"selector":"@a[tag=turn,limit=1]","color":"green"}]}
execute if entity @a[tag=turn,team=orange] run tellraw @a[tag=playing] {"translate":"board.Tiles.Shout.Escape","bold":true,"color":"gray","with":[{"selector":"@a[tag=turn,limit=1]","color":"gold"}]}

# Displays another blank line in chat
tellraw @a[tag=playing] ""

function board:tiles/shout_space/reset

# Removes the volcano tag from the player as they have now escaped
tag @a[tag=turn] remove volcano

# If the player has no more tile to move to it runs the endgo function
execute if score @a[tag=turn,limit=1] newBoardPos matches 106 as @a[tag=turn] run function board:tiles/shout_space/return
execute if score @a[tag=turn,limit=1] newBoardPos matches 110 as @a[tag=turn] run function board:tiles/shout_space/return

# If the player can move further then it runs the continue function to find where the player needs to move to
execute if score @a[tag=turn,limit=1] newBoardPos matches 111.. as @a[tag=turn] run function board:tiles/shout_space/continue

function board:dice_roll/board_display
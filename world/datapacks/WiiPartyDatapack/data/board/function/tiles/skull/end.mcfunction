#   Author        =   @ JevinLevin
#   Description   =   Ends the skull segment and runs the function to end the dice roll segement
#   Called By     =   board:tiles/skull/main



# Sets the players boardPos and newBoardPos to 100, which is the first tile in the volcano
scoreboard players set @a[tag=turn] boardPos 100
scoreboard players set @a[tag=turn] newBoardPos 100

tag @a[tag=turn] add volcano


function board:tiles/skull/reset

# Displays blank line in chat
tellraw @a[tag=playing] ""

# Shows tellraw for everyone saying that the player is now in the volcano
execute if entity @a[tag=turn,team=blue] run tellraw @a[tag=playing] {"translate":"board.Tiles.Skull.InVolcano","bold":true,"color":"gray","with":[{"selector":"@a[tag=turn,limit=1]","color":"#0088ff"}]}
execute if entity @a[tag=turn,team=red] run tellraw @a[tag=playing] {"translate":"board.Tiles.Skull.InVolcano","bold":true,"color":"gray","with":[{"selector":"@a[tag=turn,limit=1]","color":"red"}]}
execute if entity @a[tag=turn,team=green] run tellraw @a[tag=playing] {"translate":"board.Tiles.Skull.InVolcano","bold":true,"color":"gray","with":[{"selector":"@a[tag=turn,limit=1]","color":"green"}]}
execute if entity @a[tag=turn,team=orange] run tellraw @a[tag=playing] {"translate":"board.Tiles.Skull.InVolcano","bold":true,"color":"gray","with":[{"selector":"@a[tag=turn,limit=1]","color":"gold"}]}

# Displays another blank line in chat
tellraw @a[tag=playing] ""

# Runs the end of the dice rolling segment
execute as @a[tag=turn] run function board:dice_roll/end_go
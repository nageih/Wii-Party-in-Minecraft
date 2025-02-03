#   Author        =   @ JevinLevin
#   Description   =   Ends the UFO segment and runs the function to end the dice roll segement
#   Called By     =   board:tiles/ufo/swapping


# Swaps the two players board position scores
    # Stores the turn players boardPos score into the temp= score
    scoreboard players operation temp= boardPos = @a[tag=turn] boardPos
    # Replaces the turn players score with the chosen players score
    scoreboard players operation @a[tag=turn] boardPos = @a[tag=chosen] boardPos
    # Sets the chosen players score to the temp= one, which was the turn players previous scores
    scoreboard players operation @a[tag=chosen] boardPos = temp= boardPos

# Sets both players newBoardPos score to be the same as their boardPos score. Only for debugging purposes really
execute as @a[tag=turn] run scoreboard players operation @s newBoardPos = @s boardPos
execute as @a[tag=chosen] run scoreboard players operation @s newBoardPos = @s boardPos

# Displays blank line in chat
execute if score players= tiles matches 2.. run tellraw @a[tag=playing] ""

# Calculates the difference
scoreboard players operation difference= tiles = @s newBoardPos

scoreboard players operation difference= tiles -= originalTile= tiles

# Displays the old and new positions of the players who just swapped
# General text saying 'Updated Positions:'
execute if score players= tiles matches 2.. run tellraw @a[tag=playing] {"nbt":"colors.base","storage":"minecraft:config","interpret":true,"extra":[{"translate":"board.Tiles.UpdatedPositionsText"}]}
# Old and New positions. Different version with a bold selector for the player its for 
execute if score players= tiles matches 2.. run tellraw @a[tag=playing,tag=!turn] {"nbt":"colors.base","storage":"minecraft:config","interpret":true,"extra":[{"translate":"board.Tiles.UpdatedPositions","bold":true,"with":[{"selector":"@a[tag=turn]","bold":false},{"score":{"name":"@a[tag=chosen,limit=1]","objective":"boardPos"},"bold":false},{"score":{"name":"@a[tag=turn,limit=1]","objective":"boardPos"},"bold":false}]}]}
execute if score players= tiles matches 2.. run tellraw @a[tag=playing,tag=turn] {"nbt":"colors.base","storage":"minecraft:config","interpret":true,"extra":[{"translate":"board.Tiles.UpdatedPositions","bold":true,"with":[{"selector":"@a[tag=turn]","bold":true},{"score":{"name":"@a[tag=chosen,limit=1]","objective":"boardPos"},"bold":false},{"score":{"name":"@a[tag=turn,limit=1]","objective":"boardPos"},"bold":false}]}]}
execute if score players= tiles matches 2.. run tellraw @a[tag=playing,tag=!chosen] {"nbt":"colors.base","storage":"minecraft:config","interpret":true,"extra":[{"translate":"board.Tiles.UpdatedPositions","bold":true,"with":[{"selector":"@a[tag=chosen]","bold":false},{"score":{"name":"@a[tag=turn,limit=1]","objective":"boardPos"},"bold":false},{"score":{"name":"@a[tag=chosen,limit=1]","objective":"boardPos"},"bold":false}]}]}
execute if score players= tiles matches 2.. run tellraw @a[tag=playing,tag=chosen] {"nbt":"colors.base","storage":"minecraft:config","interpret":true,"extra":[{"translate":"board.Tiles.UpdatedPositions","bold":true,"with":[{"selector":"@a[tag=chosen]","bold":true},{"score":{"name":"@a[tag=turn,limit=1]","objective":"boardPos"},"bold":false},{"score":{"name":"@a[tag=chosen,limit=1]","objective":"boardPos"},"bold":false}]}]}

# Displays another blank line in chat
execute if score players= tiles matches 2.. run tellraw @a[tag=playing] ""

function board:tiles/ufo/reset

# Runs the end of the dice rolling segment
execute as @a[tag=turn] run function board:dice_roll/end_go
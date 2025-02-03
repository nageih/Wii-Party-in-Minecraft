#   Author        =   @ JevinLevin
#   Description   =   Ends the tornado segment and runs the function to end the dice roll segement
#   Called By     =   board:tiles/tornado/swapping


execute as @a[tag=chosen] run scoreboard players operation @s newBoardPos = @s boardPos

# Calculates the difference
execute if score players= tiles matches 2.. run scoreboard players operation difference= tiles = @a[tag=chosen] newBoardPos

execute if score players= tiles matches 2.. run scoreboard players operation difference= tiles -= originalTile= tiles

### # Displays blank line in chat
### execute if score players= tiles matches 2.. run tellraw @a[tag=playing] ""
### # Displays the old and new positions of the player who just moved back
### # General text saying 'Updated Positions:'
### execute if score players= tiles matches 2.. run tellraw @a[tag=playing] {"translate":"board.Tiles.UpdatedPositionsText","color":"gray"}
### # Fowards
### execute if score players= tiles matches 2.. if score difference= tiles matches 1.. run tellraw @a[tag=playing,tag=!chosen] [{"translate":"board.Tiles.UpdatedPositions","color":"gray","bold":false,"with":[{"selector":"@a[tag=chosen]","bold":false},{"score":{"name":"originalTile=","objective":"tiles"},"bold":false},{"score":{"name":"@a[tag=chosen,limit=1]","objective":"newBoardPos"},"bold":false}]},{"translate":"board.Tiles.Difference+","color":"green","with":[{"score":{"name":"difference=","objective":"tiles"}}]}]
### execute if score players= tiles matches 2.. if score difference= tiles matches 1.. run tellraw @a[tag=playing,tag=chosen] [{"translate":"board.Tiles.UpdatedPositions","color":"gray","bold":false,"with":[{"selector":"@a[tag=chosen]","bold":true},{"score":{"name":"originalTile=","objective":"tiles"},"bold":false},{"score":{"name":"@a[tag=chosen,limit=1]","objective":"newBoardPos"},"bold":false}]},{"translate":"board.Tiles.Difference+","color":"green","with":[{"score":{"name":"difference=","objective":"tiles"}}]}]
### # Backwards
### execute if score players= tiles matches 2.. if score difference= tiles matches ..-1 run tellraw @a[tag=playing,tag=!chosen] [{"translate":"board.Tiles.UpdatedPositions","color":"gray","bold":false,"with":[{"selector":"@a[tag=chosen]","bold":false},{"score":{"name":"originalTile=","objective":"tiles"},"bold":false},{"score":{"name":"@a[tag=chosen,limit=1]","objective":"newBoardPos"},"bold":false}]},{"translate":"board.Tiles.Difference-","color":"red","with":[{"score":{"name":"difference=","objective":"tiles"}}]}]
### execute if score players= tiles matches 2.. if score difference= tiles matches ..-1 run tellraw @a[tag=playing,tag=chosen] [{"translate":"board.Tiles.UpdatedPositions","color":"gray","bold":false,"with":[{"selector":"@a[tag=chosen]","bold":true},{"score":{"name":"originalTile=","objective":"tiles"},"bold":false},{"score":{"name":"@a[tag=chosen,limit=1]","objective":"newBoardPos"},"bold":false}]},{"translate":"board.Tiles.Difference-","color":"red","with":[{"score":{"name":"difference=","objective":"tiles"}}]}]
### # Displays another blank line in chat
### execute if score players= tiles matches 2.. run tellraw @a[tag=playing] ""

# Tellraw showing the players new position
execute as @a[tag=chosen] run function general:updated_positions

# Removes the players slow falling so they stop floating
execute as @a[tag=chosen] run attribute @s minecraft:generic.gravity base set 0.08

# Teleports the player to the newPoint cloud, which should be on the tile they need to land on
execute at @e[type=area_effect_cloud,tag=newPoint] run tp @a[tag=chosen] ~ ~ ~


function board:tiles/tornado/reset

# Runs the end of the dice rolling segment
execute as @a[tag=turn] run scoreboard players operation @s newBoardPos = @s boardPos
execute as @a[tag=turn] run function board:dice_roll/end_go

stopsound @a[tag=playing] master minecraft:item.elytra.flying
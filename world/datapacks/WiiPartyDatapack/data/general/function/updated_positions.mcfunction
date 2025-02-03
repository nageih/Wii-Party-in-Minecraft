# Calculates the difference
scoreboard players operation difference= tiles = @s newBoardPos

scoreboard players operation difference= tiles -= originalTile= tiles

scoreboard players operation differenceDisplay= tiles = difference= tiles
execute if score differenceDisplay= tiles matches ..-1 run scoreboard players operation differenceDisplay= tiles *= -1 Numbers

# Tellraw showing the players new position
# Blank line
tellraw @a[tag=playing] ""
# Updated Positions text
tellraw @a[tag=playing] {"nbt":"colors.base","storage":"minecraft:config","interpret":true,"extra":[{"translate":"board.Tiles.UpdatedPositionsText","bold":true}],"source":"storage","type":"nbt"}
# Blank line
tellraw @a[tag=playing] ""
# Shows the old and new tile numbers
# Fowards
execute if score difference= tiles matches 1.. run tellraw @a[tag=playing,tag=!turn] {"nbt":"colors.base","storage":"minecraft:config","interpret":true,"extra":[{"translate":"board.Tiles.UpdatedPositions","bold":false,"with":[{"selector":"@s","bold":false,"type":"selector"},{"score":{"name":"originalTile=","objective":"tiles"},"bold":false,"type":"score"},{"score":{"name":"@s","objective":"newBoardPos"},"bold":false,"type":"score"}]},{"translate":"board.Tiles.Difference+","color":"green","with":[{"score":{"name":"difference=","objective":"tiles"},"type":"score"}],"hoverEvent":{"action":"show_text","contents":[{"translate":"board.Tiles.WentForward","color":"green","bold":true,"with":[{"selector":"@s","color":"green","type":"selector"},{"score":{"name":"differenceDisplay=","objective":"tiles"},"type":"score"}]}]}}],"source":"storage","type":"nbt"}
execute if score difference= tiles matches 1.. run tellraw @a[tag=playing,tag=turn] {"nbt":"colors.base","storage":"minecraft:config","interpret":true,"extra":[{"translate":"board.Tiles.UpdatedPositions","bold":false,"with":[{"selector":"@s","bold":true,"type":"selector"},{"score":{"name":"originalTile=","objective":"tiles"},"bold":false,"type":"score"},{"score":{"name":"@s","objective":"newBoardPos"},"bold":false,"type":"score"}]},{"translate":"board.Tiles.Difference+","color":"green","with":[{"score":{"name":"difference=","objective":"tiles"},"type":"score"}],"hoverEvent":{"action":"show_text","contents":[{"translate":"board.Tiles.WentForward","color":"green","bold":true,"with":[{"selector":"@s","color":"green","type":"selector"},{"score":{"name":"differenceDisplay=","objective":"tiles"},"type":"score"}]}]}}],"source":"storage","type":"nbt"}
# Backwards
execute if score difference= tiles matches ..-1 run tellraw @a[tag=playing,tag=!turn] {"nbt":"colors.base","storage":"minecraft:config","interpret":true,"extra":[{"translate":"board.Tiles.UpdatedPositions","bold":false,"with":[{"selector":"@s","bold":false,"type":"selector"},{"score":{"name":"originalTile=","objective":"tiles"},"bold":false,"type":"score"},{"score":{"name":"@s","objective":"newBoardPos"},"bold":false,"type":"score"}]},{"translate":"board.Tiles.Difference-","color":"red","with":[{"score":{"name":"difference=","objective":"tiles"},"type":"score"}],"hoverEvent":{"action":"show_text","contents":[{"translate":"board.Tiles.WentBack","color":"red","bold":true,"with":[{"selector":"@s","color":"red","type":"selector"},{"score":{"name":"differenceDisplay=","objective":"tiles"},"type":"score"}]}]}}],"source":"storage","type":"nbt"}
execute if score difference= tiles matches ..-1 run tellraw @a[tag=playing,tag=turn] {"nbt":"colors.base","storage":"minecraft:config","interpret":true,"extra":[{"translate":"board.Tiles.UpdatedPositions","bold":false,"with":[{"selector":"@s","bold":true,"type":"selector"},{"score":{"name":"originalTile=","objective":"tiles"},"bold":false,"type":"score"},{"score":{"name":"@s","objective":"newBoardPos"},"bold":false,"type":"score"}]},{"translate":"board.Tiles.Difference-","color":"red","with":[{"score":{"name":"difference=","objective":"tiles"},"type":"score"}],"hoverEvent":{"action":"show_text","contents":[{"translate":"board.Tiles.WentBack","color":"red","bold":true,"with":[{"selector":"@s","color":"red","type":"selector"},{"score":{"name":"differenceDisplay=","objective":"tiles"},"type":"score"}]}]}}],"source":"storage","type":"nbt"}
# Blank line
tellraw @a[tag=playing] ""



scoreboard players reset originalTile= tiles
scoreboard players reset difference= tiles
scoreboard players reset differenceDisplay= tiles
execute as @a[tag=playing] at @s run playsound block.note_block.pling master @s ~ ~ ~ 3

# Displays blank line in chat
###  tellraw @a[tag=playing] ""

### execute if score originalTile= tiles matches 32 if score good= tiles matches 1 run scoreboard players set @a[tag=turn] boardPos 40
### execute if score originalTile= tiles matches 32 if score good= tiles matches 2 run scoreboard players set @a[tag=turn] boardPos 27
### execute if score originalTile= tiles matches 60 if score bad= tiles matches 1 run scoreboard players set @a[tag=turn] boardPos 65
### execute if score originalTile= tiles matches 60 if score bad= tiles matches 2 run scoreboard players set @a[tag=turn] boardPos 52

### # Displays the old and new positions of the players who just swapped
### # General text saying 'Updated Positions:'
### execute if score good= tiles matches 1..2 run tellraw @a[tag=playing] {"translate":"board.Tiles.UpdatedPositionsText","color":"#0088ff"}
### execute if score bad= tiles matches 1..2 run tellraw @a[tag=playing] {"translate":"board.Tiles.UpdatedPositionsText","color":"red"}
### # Old and New positions. Different version with a bold selector for the player its for 
### tellraw @a[tag=playing,tag=!chosen] {"translate":"board.Tiles.UpdatedPositions","color":"gray","bold":true,"with":[{"selector":"@a[tag=turn]","bold":false},{"score":{"name":"originalTile=","objective":"tiles"},"bold":false},{"score":{"name":"@a[tag=turn,limit=1]","objective":"boardPos"},"bold":false}]}
### tellraw @a[tag=playing,tag=chosen] {"translate":"board.Tiles.UpdatedPositions","color":"gray","bold":true,"with":[{"selector":"@a[tag=turn]","bold":true},{"score":{"name":"originalTile=","objective":"tiles"},"bold":false},{"score":{"name":"@a[tag=turn,limit=1]","objective":"boardPos"},"bold":false}]}

# Displays another blank line in chat
### tellraw @a[tag=playing] ""

effect clear @a[tag=turn] speed
execute as @a[tag=turn] run attribute @s minecraft:generic.gravity base set 0.08
#   Author        =   @ JevinLevin
#   Description   =   Finds the players newBoardPos after leaving the volcano
#   Called By     =   board:tiles/shout_space/end


# This should find the players new newBoardPos now that they are back on the island
# First it sets the temp= score to the last tile, 110
scoreboard players set temp= tiles 110
# Removes the max tile from the players original tile number
scoreboard players operation temp= tiles -= @s boardPos
# Removes the players current tile number from the original tile number
scoreboard players operation @s newBoardPos -= @s boardPos
# Adds the tile the player started on before the volacno to the difference from the original and current tile
scoreboard players operation @s newBoardPos += @s skullReturnTile
# Takes away the difference from the max tile and original tile from where the player was going to move to (which should be higher than 110)
scoreboard players operation @s newBoardPos -= temp= tiles
# Resets the temp= score since it isnt needed any more
scoreboard players reset temp= tiles

# Clamp new pos to 90
execute if score @s newBoardPos matches 91.. run scoreboard players set @s newBoardPos 90
scoreboard players operation @s boardPos = @s skullReturnTile

# Sets the moving= score back to as the player is moving again
scoreboard players set moving= dice 1

# Kills the glowing falling blcoks that represents the tile the player has to go to
    # First it teleports them all into the V O I D
    execute as @e[tag=tileGlow] at @s run tp @s ~ -1000 ~
    # Air toggles the falling blocks to update their position faster
    execute as @e[type=minecraft:falling_block,tag=tileGlow] store result entity @s Air double 1 run time query gametime
    # Respawns a new one at the new tile
    function board:dice_roll/glowing_tile
#   Author        =   @ JevinLevin
#   Description   =   Explains what is happening in chat, and schedules the next part. Ran if there are less than 3 players
#   Called By     =   board:tiles/tornado/start

# Displays blank line
tellraw @a[tag=playing] ""

tag @a[tag=ingame,tag=!turn,tag=!volcano] add select

# Displays tellraw in chat saying the player has been chosen by default
tellraw @a[tag=playing,tag=!select] {"translate":"board.Tiles.HasBeenChosenDefault","color":"gray","with":[{"selector":"@a[tag=ingame,tag=!turn,tag=!volcano]"}]}
tellraw @a[tag=select] {"translate":"board.Tiles.HasBeenChosenDefault","color":"gray","with":[{"selector":"@a[tag=select]","bold":true}]}
# Displays blank line
tellraw @a[tag=playing] ""

# Shows tellraw saying that the player is gonna roll to decide how far the other player moves back
tellraw @a[tag=playing,tag=!turn,tag=!select] {"translate":"board.Tiles.Tornado.WillRoll","color":"gray","with":[{"selector":"@a[tag=turn]"},{"selector":"@a[tag=ingame,tag=!turn,tag=!volcano]"}]}
tellraw @a[tag=turn] {"translate":"board.Tiles.Tornado.WillRoll","color":"gray","with":[{"selector":"@a[tag=turn]","bold":true},{"selector":"@a[tag=ingame,tag=!turn,tag=!volcano]"}]}
tellraw @a[tag=select] {"translate":"board.Tiles.Tornado.WillRoll","color":"gray","with":[{"selector":"@a[tag=turn]"},{"selector":"@a[tag=select]","bold":true}]}

# Displays blank line
tellraw @a[tag=playing] ""

# Gives the other player the 'chosen' tag to be swapped with
tag @a[tag=select] add chosen

tag @a remove select

# Plays bit sound
execute as @a[tag=playing] at @s run playsound block.note_block.bit master @s ~ ~ ~ 3


# Schedules next part in 2 seconds
schedule function board:tiles/tornado/start_roll 2s



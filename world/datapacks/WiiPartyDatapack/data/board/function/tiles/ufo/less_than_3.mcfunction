#   Author        =   @ JevinLevin
#   Description   =   Explains what is happening in chat, and schedules the next part. Ran if there are less than 3 players
#   Called By     =   board:tiles/ufo/start

# Displays blank line
tellraw @a[tag=playing] ""

# Displays tellraw in chat explaining what is happening
tag @a[tag=ingame,tag=!turn,tag=!volcano] add select
tellraw @a[tag=playing,tag=!turn,tag=!select] {"translate":"board.Tiles.Ufo.IntroLessThan3","color":"gray","with":[{"selector":"@a[tag=turn]"},{"selector":"@a[tag=select]"}]}
tellraw @a[tag=turn] {"translate":"board.Tiles.Ufo.IntroLessThan3","color":"gray","with":[{"selector":"@a[tag=turn]","bold":true},{"selector":"@a[tag=select]"}]}
tellraw @a[tag=select] {"translate":"board.Tiles.Ufo.IntroLessThan3","color":"gray","with":[{"selector":"@a[tag=turn]"},{"selector":"@a[tag=select]","bold":true}]}
tag @a remove select

# Displays blank line
tellraw @a[tag=playing] ""

# Plays bit sound
execute as @a[tag=playing] at @s run playsound block.note_block.bit master @s ~ ~ ~ 3

# Gives the other player the 'chosen' tag to be swapped with
tag @a[tag=ingame,tag=!turn,tag=!volcano] add chosen

# Runs the swap_clouds function to summon an area effect cloud at the players current tile 
execute as @a[tag=chosen] run function board:tiles/ufo/swap_clouds

# Sets the ufo= score to 2 which shows the players need to start swapping
scoreboard players set ufo= tiles 2


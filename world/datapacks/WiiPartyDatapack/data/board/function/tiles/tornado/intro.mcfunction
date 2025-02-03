#   Author        =   @ JevinLevin
#   Description   =   Explains what is happening in chat, and schedules the next part. Ran if there are 3 or more players
#   Called By     =   board:tiles/tornado/start


# Displays blank line in chat
tellraw @a[tag=playing] ""

# Displays tellraw in chat explaining what is happening
tellraw @a[tag=turn] {"translate":"board.Tiles.Tornado.Intro","color":"gray","bold":true,"with":[{"selector":"@a[tag=turn]","bold":true}]}
tellraw @a[tag=playing,tag=!turn] {"translate":"board.Tiles.Tornado.Intro","color":"gray","bold":true,"with":[{"selector":"@a[tag=turn]","bold":false}]}

# Displays blank line in chat
tellraw @a[tag=playing] ""

# Plays bit sound
execute as @a[tag=playing] at @s run playsound block.note_block.bit master @s ~ ~ ~ 3

# Gives the player rolling the 'tornadoBoth' tag which shows they are rolling both dice
tag @a[tag=turn] add tornadoBoth

# Schedules next part in 2 seconds
schedule function board:tiles/tornado/start_roll 2s


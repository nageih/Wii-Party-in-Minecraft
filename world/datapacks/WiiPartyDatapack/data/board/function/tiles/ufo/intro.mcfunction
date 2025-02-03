#   Author        =   @ JevinLevin
#   Description   =   Explains what is happening in chat, and schedules the next part. Ran if there are 3 or more players
#   Called By     =   board:tiles/ufo/start


# Displays blank line in chat
tellraw @a[tag=playing] ""

# Displays tellraw in chat explaining what is happening
tellraw @a[tag=playing,tag=!turn] {"nbt":"colors.base","storage":"minecraft:config","interpret":true,"extra":[{"translate":"board.Tiles.Ufo.Intro","with":[{"nbt":"colors.base","storage":"minecraft:config","interpret":true,"extra":[{"selector":"@a[tag=turn]"}]}]}]}
tellraw @a[tag=turn] {"nbt":"colors.base","storage":"minecraft:config","interpret":true,"extra":[{"translate":"board.Tiles.Ufo.Intro","with":[{"nbt":"colors.base","storage":"minecraft:config","interpret":true,"extra":[{"selector":"@a[tag=turn]","bold":true}]}]}]}

# Displays blank line in chat
tellraw @a[tag=playing] ""

# Plays bit sound
execute as @a[tag=playing] at @s run playsound block.note_block.bit master @s ~ ~ ~ 3

# Schedules next part in 2 seconds
schedule function board:tiles/ufo/start_roll 2s


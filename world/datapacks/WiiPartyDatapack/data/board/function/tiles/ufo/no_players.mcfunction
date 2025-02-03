# Displays blank line
tellraw @a[tag=playing] ""

# Displays tellraw in chat saying that there are no players
tellraw @a[tag=playing] {"nbt":"colors.base","storage":"minecraft:config","interpret":true,"extra":[{"translate":"board.Tiles.Ufo.NoPlayers","bold":true}]}

# Displays blank line
tellraw @a[tag=playing] ""

# Another tellraw saying that the segment is gonna be skipped
tellraw @a[tag=playing] {"nbt":"colors.base","storage":"minecraft:config","interpret":true,"extra":[{"translate":"board.Tiles.SkipSegment","bold":false}]}

# Displays blank line
tellraw @a[tag=playing] ""

# Plays bit sound
execute as @a[tag=playing] at @s run playsound block.note_block.didgeridoo master @s ~ ~ ~ 3

# Schedules the end of the segment to skip the ufo 
schedule function board:tiles/ufo/end 2.5s
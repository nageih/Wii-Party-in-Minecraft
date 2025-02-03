# Displays blank line
tellraw @a[tag=playing] ""

# Displays tellraw in chat saying that they are no players to move back
tellraw @a[tag=playing] {"translate":"board.Tiles.Tornado.NoPlayers","color":"gray","bold":true}

# Displays blank line
tellraw @a[tag=playing] ""

# Another tellraw saying that the segment is gonna be skipped
tellraw @a[tag=playing] {"translate":"board.Tiles.SkipSegment","color":"gray"}

# Displays blank line
tellraw @a[tag=playing] ""

# Plays bit sound
execute as @a[tag=playing] at @s run playsound block.note_block.didgeridoo master @s ~ ~ ~ 3

# Schedules the end of the segment to skip the ufo 
schedule function board:tiles/tornado/end 2s
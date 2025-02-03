


# Displays blank line in chat
tellraw @a[tag=playing] ""

# Displays tellraw in chat explaining what is happening
tellraw @a[tag=playing,team=!blue,team=!red,team=!green,team=!orange] {"translate":"board.Tiles.Dino.Intro","color":"light_purple","with":[{"selector":"@a[tag=turn]","color":"light_purple"}]}
tellraw @a[team=blue,tag=!turn] {"translate":"board.Tiles.Dino.Intro","color":"#0088ff","with":[{"selector":"@a[tag=turn]","color":"#0088ff"}]}
tellraw @a[team=red,tag=!turn] {"translate":"board.Tiles.Dino.Intro","color":"red","with":[{"selector":"@a[tag=turn]","color":"red"}]}
tellraw @a[team=green,tag=!turn] {"translate":"board.Tiles.Dino.Intro","color":"green","with":[{"selector":"@a[tag=turn]","color":"green"}]}
tellraw @a[team=orange,tag=!turn] {"translate":"board.Tiles.Dino.Intro","color":"gold","with":[{"selector":"@a[tag=turn]","color":"gold"}]}
tellraw @a[team=blue,tag=turn] {"translate":"board.Tiles.Dino.Intro","color":"#0088ff","with":[{"selector":"@a[tag=turn]","color":"#0088ff"}]}
tellraw @a[team=red,tag=turn] {"translate":"board.Tiles.Dino.Intro","color":"red","with":[{"selector":"@a[tag=turn]","color":"red"}]}
tellraw @a[team=green,tag=turn] {"translate":"board.Tiles.Dino.Intro","color":"green","with":[{"selector":"@a[tag=turn]","color":"green"}]}
tellraw @a[team=orange,tag=turn] {"translate":"board.Tiles.Dino.Intro","color":"gold","with":[{"selector":"@a[tag=turn]","color":"gold"}]}

# Displays blank line in chat
tellraw @a[tag=playing] ""

# Plays bit sound
execute as @a[tag=playing] at @s run playsound block.note_block.bit master @s ~ ~ ~ 3

# Schedules next part in 2 seconds
schedule function board:tiles/dino/start_roll 2s


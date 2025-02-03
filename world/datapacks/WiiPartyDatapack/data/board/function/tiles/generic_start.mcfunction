# Resets the players title times to the default value
title @a[tag=playing] times 10 40 10

# Sets the players boardPos to be the same as their newBoardPos
scoreboard players operation @a[tag=turn] boardPos = @a[tag=turn] newBoardPos

# Sets the moving= score to 0 to show that the player is no longer moving across the board
scoreboard players set moving= dice 0

# Clears any more scheduled functions
schedule clear board:tiles/ufo/start
schedule clear board:tiles/tornado/start
schedule clear board:tiles/dino/start
schedule clear board:tiles/volcano/start

# Resets the players speed attribute back to default
attribute @a[tag=turn,limit=1] generic.movement_speed base set 0.1

# Resets their sprintdistance score too so that they dont immediately start at a high speed next time
scoreboard players reset @a[tag=turn] sprintDistance

# Plays 2 sounds for everyone. Dont ask why, just though it sounded cool
execute as @a[tag=playing] at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 3 1
execute as @a[tag=playing] at @s run playsound minecraft:block.beacon.power_select master @s ~ ~ ~ 3 2

# Shows title saying 'Surprise Time', just like in the original game lol
title @a[tag=playing,tag=!ingame] title {"translate":"board.Tiles.Surprise","bold":true,"color":"light_purple"}
title @a[team=blue] title {"translate":"board.Tiles.Surprise","bold":true,"color":"#0088ff"}
title @a[team=red] title {"translate":"board.Tiles.Surprise","bold":true,"color":"red"}
title @a[team=green] title {"translate":"board.Tiles.Surprise","bold":true,"color":"green"}
title @a[team=orange] title {"translate":"board.Tiles.Surprise","bold":true,"color":"gold"}
title @a[tag=playing] subtitle ""

# Clears everyones skip coas
clear @a[tag=playing] carrot_on_a_stick[minecraft:custom_data={skip:1b}]

# Kill glowing tile
kill @e[type=minecraft:falling_block,tag=tileGlow]

scoreboard players set double= dice 0
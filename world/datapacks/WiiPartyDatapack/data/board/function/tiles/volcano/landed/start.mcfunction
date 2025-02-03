scoreboard players operation @a[tag=turn] boardPos = @a[tag=turn] newBoardPos

# Teleports the player to themself to get rid of their motion
tp @a[tag=turn] @a[tag=turn,limit=1]

# Sets the moving= score to 0 to show that the player is no longer moving across the board
scoreboard players set moving= dice 0

# Clears any more scheduled functions
schedule clear board:tiles/volcano/landed/start

# Resets the players speed attribute back to default
attribute @a[tag=turn,limit=1] minecraft:generic.movement_speed base set 0.1

# Clears everyones skip coas
clear @a[tag=playing] minecraft:carrot_on_a_stick[minecraft:custom_data={skip:1b}]

# Resets their sprintdistance score too so that they dont immediately start at a high speed next time
scoreboard players reset @a[tag=turn] sprintDistance

scoreboard players operation originalTile= tiles = @a[tag=turn] boardPos

execute as @a[tag=turn] run function board:tiles/volcano/landed/begin

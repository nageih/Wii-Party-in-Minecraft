#   Author        =   @ JevinLevin
#   Description   =   Ran at the end of a players turn
#   Called By     =   board:dice_roll/tiles


# Displays title for everyone saying that the turn is over
title @a[tag=playing] title [{"translate":"board.DiceRoll.TurnOver","color":"light_purple"}]
title @a[team=blue] title [{"translate":"board.DiceRoll.TurnOver","color":"#0088ff"}]
title @a[team=red] title [{"translate":"board.DiceRoll.TurnOver","color":"red"}]
title @a[team=green] title [{"translate":"board.DiceRoll.TurnOver","color":"green"}]
title @a[team=orange] title [{"translate":"board.DiceRoll.TurnOver","color":"gold"}]

# Clears all the players subtitle so that the previous one doesnt show up
title @a[tag=playing] subtitle ""

# Plays bong sound
execute as @a[tag=playing] at @s run playsound minecraft:block.note_block.iron_xylophone master @s ~ ~ ~ 3 0.5

# gamemode adventure @a[tag=turn]

schedule clear board:dice_roll/end_go


# Sets the players boardPos to their newBoardPos score, which is the tile the player moved to
scoreboard players operation @a[tag=turn] boardPos = @a[tag=turn,limit=1] newBoardPos

# Sets the moving= score to 0 to show that player the player is no longer moving
scoreboard players set moving= dice 0

# This logic has been removed as there arent multiple rounds
# If the volcano is erupted
execute if score errupted= tiles matches 1 run scoreboard players add erruptedRounds= tiles 1
# Schedules next round in 2 seconds
execute unless score erruptedRounds= tiles matches 4.. run schedule function board:dice_roll/new_go 2s
execute if score erruptedRounds= tiles matches 4.. unless entity @a[tag=turn,tag=volcano] run schedule function board:tiles/volcano/return_to_normal 2s
execute if score erruptedRounds= tiles matches 4.. if entity @a[tag=turn,tag=volcano] run schedule function board:dice_roll/new_go 2s


clear @a[tag=playing] minecraft:carrot_on_a_stick[minecraft:custom_data={skip:1b}]



# Kills the glowing falling blcoks that represents the tile the player has to go to
    # First it teleports them all into the V O I D
execute as @e[tag=tileGlow] at @s run tp @s ~ -1000 ~
    # Air toggles the falling blocks to update their position faster
execute as @e[type=minecraft:falling_block,tag=tileGlow] store result entity @s Air double 1 run time query gametime

# Resets the players speed attribute back to default
attribute @s minecraft:generic.movement_speed base set 0.1

# Resets their sprintdistance score too so that they dont immediately start at a high speed next time
scoreboard players reset @s sprintDistance

# Resets scores used for each turn
scoreboard players reset @a[tag=turn] diceTimer
scoreboard players reset diceTimer
scoreboard players reset timermax= dice
scoreboard players reset speedReset= sprintDistance
scoreboard players reset speedTime= sprintDistance
scoreboard players set double= dice 0
scoreboard players reset total= dice
scoreboard players set rolling= dice 0
scoreboard players set moving= dice 0
scoreboard players reset @a[tag=turn] diceRoll
scoreboard players reset normal= dice
scoreboard players reset golden= dice
scoreboard players reset silver= dice
scoreboard players reset bronze= dice
scoreboard players reset doubleroll= dice
scoreboard players reset @a diceRoll
scoreboard players reset timermax= dice
scoreboard players reset speedReset= sprintDistance
scoreboard players reset speedTime= sprintDistance
scoreboard players reset @a sprintDistance
scoreboard players reset negative= dice
scoreboard players reset dino= dice


scoreboard players reset eventRoll= tiles

function board:dice_roll/board_display

# Add players collision
team modify blue collisionRule never
team modify red collisionRule never
team modify green collisionRule never
team modify orange collisionRule never
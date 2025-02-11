#   Author        =   @ JevinLevin
#   Description   =   Start the dice rolling as the player who runs the function
#   Called By     =   board:dice_roll/begin

### ### Needed for demo 
function general:island/structtobarriers
### schedule clear board:dice_roll/end

### ### Previously inside the 'begin' function but moved here for demo
### execute unless score errupted= tiles matches 1 run function board:dice_roll/tile_names
### 
### execute if score errupted= tiles matches 1 run function board:tiles/volcano/tile_names
### 
### scoreboard players reset @a diceRoll
### 

tag @a[scores={newBoardPos=100..}] add volcano


# Gives the player the turn tag, which is used to identify the player who is rolling
tag @s add turn

### ### For demo also give playing tag
### tag @s add playing


#Gives the player the correct dice
    # Gives a Normal Dice
    function board:dice_roll/give/normal
    # Gives a Golden Dice if the player is 1st
    execute as @s[tag=1st] run function board:dice_roll/give/golden
    # Gives a Silver Dice if the player is 2nd
    execute as @s[tag=2nd] run function board:dice_roll/give/silver
    # Gives a Bronze Dice if the player is 3rd
    execute as @s[tag=3rd] run function board:dice_roll/give/bronze

# Sets the total= score to 0, showing that no dice have been rolled yet
scoreboard players set total= dice 0
# Sets the rolling= score to 1 which shows that a player is rolling
scoreboard players set rolling= dice 1
# Sets the moving= score to 0 to show that player the player is no longer moving
scoreboard players set moving= dice 0

# Resets the speed scores for the player so that the speed function doesnt continue from the last round
scoreboard players reset speedReset= sprintDistance
scoreboard players reset speedTime= sprintDistance
# Resets their sprintdistance score too so that they dont immediately start at a high speed next time
scoreboard players reset @s sprintDistance

# Sets players title times
title @s times 10 40 10

# Title saying whos turn it is
execute if entity @a[tag=turn,team=blue] run title @a[tag=playing] title [{"translate":"board.DiceRoll.Turn","with":[{"selector":"@s","color":"#0088ff"}],"color":"#0088ff","bold":true}]
execute if entity @a[tag=turn,team=red] run title @a[tag=playing] title [{"translate":"board.DiceRoll.Turn","with":[{"selector":"@s","color":"red"}],"color":"red","bold":true}]
execute if entity @a[tag=turn,team=green] run title @a[tag=playing] title [{"translate":"board.DiceRoll.Turn","with":[{"selector":"@s","color":"green"}],"color":"green","bold":true}]
execute if entity @a[tag=turn,team=orange] run title @a[tag=playing] title [{"translate":"board.DiceRoll.Turn","with":[{"selector":"@s","color":"gold"}],"color":"gold","bold":true}] 

# Puts the player into adventure mode
gamemode adventure @s

# Teleports the player to their board position
function board:dice_roll/tp_board_pos

# Teleports all spectators to the player
execute as @a[tag=turn] run function board:dice_roll/spectator_tp

# Plays ding sound
execute as @a[tag=playing] at @s run playsound minecraft:block.note_block.bell master @s ~ ~ ~ 3 0.5

# Puts everyone else into spectator
gamemode spectator @a[tag=playing,tag=!turn]

# Clears the players weakness
effect clear @a[tag=turn] minecraft:weakness

# Clears all the previous rolls
scoreboard players set normal= dice 0
execute if entity @a[tag=1st] run scoreboard players set golden= dice 0
execute if entity @a[tag=2nd] run scoreboard players set silver= dice 0
execute if entity @a[tag=3rd] run scoreboard players set bronze= dice 0

# Runs both functions that remove the barriers that limit the players movement to prepare for the next round
function board:dice_roll/prevent/clear_too_far
function board:dice_roll/prevent/clear_back

# Sets the players newBoardPos to be the same as their current boardPos
scoreboard players operation @s newBoardPos = @s boardPos

# Runs the tile_clouds function to summon an area effect cloud at the players tile
function board:dice_roll/tile_clouds
# Clears the barriers around the tile
execute at @e[type=minecraft:area_effect_cloud,tag=tileCloud] run fill ~23 ~5 ~23 ~-23 ~-9 ~-22 minecraft:void_air replace minecraft:barrier
# Adds barriers to spots where players can throw dices off the map
function board:dice_roll/prevent/dice_roll_protection

# Runs the stop_too_far function which stops the player running off at the start
function board:dice_roll/prevent/forward_prevention
# Runs the back_prevention function to stop players back tracking
function board:dice_roll/prevent/back_prevention
# Converts these into void air
function board:dice_roll/prevent/convert_to_void

# If theyre on the final tile then remove dice and start final stage
execute if score @s boardPos matches 90 run clear @s
execute if score @s boardPos matches 90 run tag @s add startFinal
execute if score @s boardPos matches 90 run schedule function board:tiles/final/start 10t


function board:dice_roll/board_display

# Add players collision
execute if entity @a[tag=turn,team=blue] run team modify blue collisionRule always
execute if entity @a[tag=turn,team=red] run team modify red collisionRule always
execute if entity @a[tag=turn,team=green] run team modify green collisionRule always
execute if entity @a[tag=turn,team=orange] run team modify orange collisionRule always
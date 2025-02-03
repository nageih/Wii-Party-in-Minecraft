


### # Displays blank line in chat
### tellraw @a[tag=playing] ""
### 
### # Displays 'Player Numbers' in chat
### tellraw @a[tag=playing] {"translate":"board.Tiles.Dino.Numbers","color":"gray","bold":true}
### 
### # Displays what each dinosaur represents as numbers
### tellraw @a[tag=playing] {"translate":"board.Tiles.Dino.NumbersRed","color":"red","bold":true}
### tellraw @a[tag=playing] {"translate":"board.Tiles.Dino.NumbersBlue","color":"#0088ff","bold":true}
### 
### # Displays blank line in chat
### tellraw @a[tag=playing] ""

# Gives the player a dice
execute as @a[tag=turn] run function board:dice_roll/give/dino

# Sets the ufo= score to 1 to show that the player is rolling. Used so that when the dice is rolled it is store in the correct score
scoreboard players set dino= tiles 1

# Runs both functions that remove the barriers that limit the players movement to prepare for the next round
execute as @a[tag=turn] at @s run function board:dice_roll/prevent/clear_too_far
execute as @a[tag=turn] at @s run function board:dice_roll/prevent/clear_back

# Runs the tile_clouds function to summon an area effect cloud at the players tile
execute as @a[tag=turn] at @s run function board:dice_roll/tile_clouds
# Clears the barriers around the tile
execute at @e[type=area_effect_cloud,tag=tileCloud] run fill ~23 ~5 ~23 ~-23 ~-9 ~-22 void_air replace barrier
# Adds barriers to spots where players can throw dices off the map
execute as @a[tag=turn] at @s run function board:dice_roll/prevent/dice_roll_protection

# Runs the stop_too_far function which stops the player running off at the start
execute as @a[tag=turn] at @s run function board:dice_roll/prevent/forward_prevention
# Runs the back_prevention function to stop players back tracking
execute as @a[tag=turn] at @s run function board:dice_roll/prevent/back_prevention
# Converts these into void air
execute as @a[tag=turn] at @s run function board:dice_roll/prevent/convert_to_void
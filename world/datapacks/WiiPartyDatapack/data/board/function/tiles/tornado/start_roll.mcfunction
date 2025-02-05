#   Author        =   @ JevinLevin
#   Description   =   Gives the player dice and lets them start rolling to choose a player to swap with and how far
#   Called By     =   board:tiles/tornado/intro


# Gives all players (except the one whos rolling) a unique tornado tag
tag @r[tag=ingame,tag=!volcano,tag=!turn] add tornado1
tag @r[tag=ingame,tag=!volcano,tag=!turn,tag=!tornado1] add tornado2
tag @r[tag=ingame,tag=!volcano,tag=!turn,tag=!tornado1,tag=!tornado2] add tornado3

# Displays blank line in chat
execute if score players= tiles matches 3.. run tellraw @a[tag=playing] ""

# Displays 'Player Numbers' in chat
execute if score players= tiles matches 3.. run tellraw @a[tag=playing] {"translate":"board.Tiles.PlayerNumbers","color":"gray","bold":true}

# Shows each player, and the roll scores that are needed to select them
    # 3 Players
    execute if score players= tiles matches 3 run tellraw @a[tag=playing,tag=!tornado1] {"translate":"board.Tiles.1-3","color":"gray","bold":true,"with":[{"selector":"@a[tag=tornado1]","bold":false}]}
    execute if score players= tiles matches 3 run tellraw @a[tag=playing,tag=tornado1] {"translate":"board.Tiles.1-3","color":"gray","bold":true,"with":[{"selector":"@a[tag=tornado1]","bold":true}]}
    execute if score players= tiles matches 3 run tellraw @a[tag=playing,tag=!tornado2] {"translate":"board.Tiles.4-6","color":"gray","bold":true,"with":[{"selector":"@a[tag=tornado2]","bold":false}]}
    execute if score players= tiles matches 3 run tellraw @a[tag=playing,tag=tornado2] {"translate":"board.Tiles.4-6","color":"gray","bold":true,"with":[{"selector":"@a[tag=tornado2]","bold":true}]}
    # 4 Players
    execute if score players= tiles matches 4 run tellraw @a[tag=playing,tag=!tornado1] {"translate":"board.Tiles.1-2","color":"gray","bold":true,"with":[{"selector":"@a[tag=tornado1]","bold":false}]}
    execute if score players= tiles matches 4 run tellraw @a[tag=playing,tag=tornado1] {"translate":"board.Tiles.1-2","color":"gray","bold":true,"with":[{"selector":"@a[tag=tornado1]","bold":true}]}
    execute if score players= tiles matches 4 run tellraw @a[tag=playing,tag=!tornado2] {"translate":"board.Tiles.3-4","color":"gray","bold":true,"with":[{"selector":"@a[tag=tornado2]","bold":false}]}
    execute if score players= tiles matches 4 run tellraw @a[tag=playing,tag=tornado2] {"translate":"board.Tiles.3-4","color":"gray","bold":true,"with":[{"selector":"@a[tag=tornado2]","bold":true}]}
    execute if score players= tiles matches 4 run tellraw @a[tag=playing,tag=!tornado3] {"translate":"board.Tiles.5-6","color":"gray","bold":true,"with":[{"selector":"@a[tag=tornado3]","bold":false}]}
    execute if score players= tiles matches 4 run tellraw @a[tag=playing,tag=tornado3] {"translate":"board.Tiles.5-6","color":"gray","bold":true,"with":[{"selector":"@a[tag=tornado3]","bold":true}]}

# Displays blank line in chat
execute if score players= tiles matches 3.. run tellraw @a[tag=playing] ""

# Gives the player dice
# Normal
execute as @a[tag=turn,tag=tornadoBoth] run function board:dice_roll/give/normal
execute as @a[tag=turn] run function board:dice_roll/give/negative

scoreboard players set eventRoll= tiles 1
scoreboard players reset eventRoll diceRoll
scoreboard players reset addResult= tiles
scoreboard players set double= dice 0

# Sets the tornado= score to 1 to show that the player is rolling. Used so that when the dice is rolled it is store in the correct score
scoreboard players set tornado= tiles 1

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
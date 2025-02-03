#   Author        =   @ JevinLevin
#   Description   =   Runs once the player has rolled their dice to choose a new player
#   Called By     =   board:tiles/ufo/main


# Gives the correct players the chosen tag, depending on what the player rolled
    # 3 players
    execute unless entity @a[tag=UFO3] if score roll= tiles matches 1..3 run tag @a[tag=UFO1] add chosen
    execute unless entity @a[tag=UFO3] if score roll= tiles matches 4..6 run tag @a[tag=UFO2] add chosen
    # 4 Players
    execute if entity @a[tag=UFO3] if score roll= tiles matches 1..2 run tag @a[tag=UFO1] add chosen
    execute if entity @a[tag=UFO3] if score roll= tiles matches 3..4 run tag @a[tag=UFO2] add chosen
    execute if entity @a[tag=UFO3] if score roll= tiles matches 5..6 run tag @a[tag=UFO3] add chosen

# Displays blank line in chat
tellraw @a[tag=playing] ""

tellraw @a[tag=playing] [{"translate":"board.DiceRoll.RollResult4th","with":[{"selector":"@a[tag=turn]","color":"gray"},{"score":{"name":"roll=","objective":"tiles"},"color":"white"}],"color":"gray"}]
tellraw @a[tag=playing] ""

# Tellraw in chat showing which player has been chosen. Also displays a bold version for said player
tellraw @a[tag=playing,tag=!chosen] {"nbt":"colors.base","storage":"minecraft:config","interpret":true,"extra":[{"translate":"board.Tiles.HasBeenChosen","with":[{"selector":"@a[tag=chosen]"}]}]}
tellraw @a[tag=playing,tag=chosen] {"nbt":"colors.base","storage":"minecraft:config","interpret":true,"extra":[{"translate":"board.Tiles.HasBeenChosen","with":[{"selector":"@a[tag=chosen]","bold":true}]}]}

# Displays blank line in chat
tellraw @a[tag=playing] ""

# Plays levelup sound for everyone
execute as @a[tag=playing] at @s run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 3 0.5

# Runs the swap_clouds function to summon an area effect cloud at the players current tile 
execute as @a[tag=chosen] run function board:tiles/ufo/swap_clouds

# Sets the ufo= score to 2 which shows the players need to start swapping
scoreboard players set ufo= tiles 2

# Resets the roll= score so that this function doesnt keep running
scoreboard players reset roll= tiles

# Puts the barriers back around the tile
execute at @e[type=area_effect_cloud,tag=tileCloud] run fill ~23 ~5 ~23 ~-23 ~-9 ~-22 barrier replace void_air

# Removes the tileCloud entity
kill @e[type=area_effect_cloud,tag=tileCloud]

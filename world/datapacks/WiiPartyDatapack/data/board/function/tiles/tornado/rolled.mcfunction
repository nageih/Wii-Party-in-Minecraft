#   Author        =   @ JevinLevin
#   Description   =   Runs once the player has rolled their dice to choose a new player
#   Called By     =   board:tiles/tornado/main


# Gives the correct players the chosen tag, depending on what the player rolled
    # 3 players
    execute unless entity @a[tag=tornado3] if score roll= tiles matches 1..3 run tag @a[tag=tornado1] add chosen
    execute unless entity @a[tag=tornado3] if score roll= tiles matches 4..6 run tag @a[tag=tornado2] add chosen
    # 4 Players
    execute if entity @a[tag=tornado3] if score roll= tiles matches 1..2 run tag @a[tag=tornado1] add chosen
    execute if entity @a[tag=tornado3] if score roll= tiles matches 3..4 run tag @a[tag=tornado2] add chosen
    execute if entity @a[tag=tornado3] if score roll= tiles matches 5..6 run tag @a[tag=tornado3] add chosen

# Displays blank line in chat
tellraw @a[tag=playing] ""

execute unless score negative= dice matches 1..6 run scoreboard players set negative= dice 1

# Tellraw in chat showing which player has been chosen. Also displays a bold version for said player
execute if score players= tiles matches 3.. run tellraw @a[tag=playing,tag=!chosen] {"translate":"board.Tiles.Tornado.Chosen","color":"gray","with":[{"selector":"@a[tag=chosen]"},{"score":{"name":"negative=","objective":"dice"},"bold":true}]}
execute if score players= tiles matches 3.. run tellraw @a[tag=playing,tag=chosen] {"translate":"board.Tiles.Tornado.Chosen","color":"gray","with":[{"selector":"@a[tag=chosen]","bold":true},{"score":{"name":"negative=","objective":"dice"},"bold":true}]}
execute if score players= tiles matches 2 run tellraw @a[tag=playing,tag=!chosen] {"translate":"board.Tiles.Tornado.WillMove","color":"gray","with":[{"selector":"@a[tag=chosen]"},{"score":{"name":"negative=","objective":"dice"},"bold":true}]}
execute if score players= tiles matches 2 run tellraw @a[tag=playing,tag=chosen] {"translate":"board.Tiles.Tornado.WillMove","color":"gray","with":[{"selector":"@a[tag=chosen]","bold":true},{"score":{"name":"negative=","objective":"dice"},"bold":true}]}

# Displays blank line in chat
tellraw @a[tag=playing] ""

# Plays levelup sound for everyone
execute as @a[tag=playing] at @s run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 300 0.5

# Runs the swap_clouds function to summon an area effect cloud at the players current tile 
execute as @a[tag=chosen] run function board:tiles/tornado/new_tile

# Sets the ufo= score to 2 which shows the players need to start swapping
scoreboard players set tornado= tiles 2

# Resets the roll= score so that this function doesnt keep running
scoreboard players reset tornadoTotal= tiles

# News the originalTile= score to be the same as the chosen players current boardPos
scoreboard players operation originalTile= tiles = @a[tag=chosen] boardPos

scoreboard players set increase= tiles -1

execute as @a[tag=chosen] run attribute @s minecraft:generic.gravity base set 0

# Puts the barriers back around the tile
execute at @e[type=area_effect_cloud,tag=tileCloud] run fill ~23 ~5 ~23 ~-23 ~-9 ~-22 barrier replace void_air

# Removes the tileCloud entity
kill @e[type=area_effect_cloud,tag=tileCloud]
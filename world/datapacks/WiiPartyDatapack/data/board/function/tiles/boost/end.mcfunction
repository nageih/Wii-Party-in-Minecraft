#   Author        =   @ JevinLevin
#   Description   =   Runs once the player reaches the end tile
#   Called By     =   board:tiles/boost/main + board:tiles/boost/main_yeet


ride @s dismount

# Plays sound for when the player lands, depending on whcih type of boost they had
# Bad
execute if score boostType= tiles matches 0 run playsound entity.generic.explode master @a ~ ~ ~ 3 1.25
# Good
execute if score boostType= tiles matches 1 run playsound entity.generic.explode master @a ~ ~ ~ 3 2
execute if score boostType= tiles matches 1 run playsound entity.player.levelup master @a ~ ~ ~ 3 1.5

# Clears the players slow falling
attribute @s minecraft:generic.gravity base set 0.08

# Eliminates the players motion
tp @s @s
# Aligns the player to the middle of the platform
execute at @s align xyz run tp @s ~.5 ~ ~.5
# Checks if the player is underground, if so it teleports them up
execute at @s align xyz unless block ~ ~ ~ air run tp @s ~.5 ~1 ~.5
execute at @s align xyz unless block ~ ~ ~ air run tp @s ~.5 ~1 ~.5

# Displays different particles depending on which type of boost it is
execute if score boostType= tiles matches 1 run particle firework ~ ~1 ~ 1.5 .5 1.5 0.01 30
execute if score boostType= tiles matches 0 run particle angry_villager ~ ~ ~ 1 .5 1 0.01 30

# Summons boat above the player, with area effect clouds in them to stop the player getting inside, and time when the boat should be killed
execute if score boostType= tiles matches 0 at @s run summon boat ~ ~1 ~ {Type:"acacia",Tags:["boostBoat"],Passengers:[{id:"minecraft:area_effect_cloud",Duration:39,Tags:["boostBoat"]},{id:"minecraft:area_effect_cloud",Duration:39}]}
# Gives the player slowness so they cant escape
execute if score boostType= tiles matches 0 run effect give @a[tag=turn] slowness 2 255 true

# Puts the newBoardPos into the originaltile score
scoreboard players operation originalTile= tiles = @s newBoardPos

# Sets the players newBoardPos 
    # Normal boosts
    execute if score @s newBoardPos matches 1 run scoreboard players set @s newBoardPos 6
    execute if score @s newBoardPos matches 7 run scoreboard players set @s newBoardPos 2
    execute if score @s newBoardPos matches 11 run scoreboard players set @s newBoardPos 14
    execute if score @s newBoardPos matches 23 run scoreboard players set @s newBoardPos 28
    execute if score @s newBoardPos matches 24 run scoreboard players set @s newBoardPos 21
    execute if score @s newBoardPos matches 30 run scoreboard players set @s newBoardPos 34
    execute if score @s newBoardPos matches 40 run scoreboard players set @s newBoardPos 35
    execute if score @s newBoardPos matches 45 run scoreboard players set @s newBoardPos 41
    execute if score @s newBoardPos matches 52 run scoreboard players set @s newBoardPos 56
    execute if score @s newBoardPos matches 54 run scoreboard players set @s newBoardPos 59
    execute if score @s newBoardPos matches 57 run scoreboard players set @s newBoardPos 51
    execute if score @s newBoardPos matches 63 run scoreboard players set @s newBoardPos 67
    execute if score @s newBoardPos matches 74 run scoreboard players set @s newBoardPos 69
    execute if score @s newBoardPos matches 77 run scoreboard players set @s newBoardPos 181
    execute if score @s newBoardPos matches 81 run scoreboard players set @s newBoardPos 77
    execute if score @s newBoardPos matches 89 run scoreboard players set @s newBoardPos 86
    execute if score @s newBoardPos matches 181 run scoreboard players set @s newBoardPos 81
    # Yeeters
    execute if score @s newBoardPos matches 10 run scoreboard players set @s newBoardPos 25
    execute if score @s newBoardPos matches 12 run scoreboard players set @s newBoardPos 25
    execute if score @s newBoardPos matches 38 run scoreboard players set @s newBoardPos 11

# Makes the players boardPos the same as their newBoardPos
scoreboard players operation @s boardPos = @s newBoardPos

# Tellraw showing the players new position
function general:updated_positions

# Replaces all the blocking barriers
execute as @a[tag=turn] run function board:dice_roll/prevent/back_prevention
execute as @a[tag=turn] run function board:dice_roll/prevent/forward_prevention

function board:tiles/boost/reset

# Runs the end_go function to end the dice_roll segment
execute as @a[tag=turn] run function board:dice_roll/end_go

schedule clear board:tiles/boost/end_context
#   Author        =   @ JevinLevin
#   Description   =   Starts the UFO segment
#   Called By     =   board:dice_roll/tiles

function board:tiles/generic_start

tag @a[scores={newBoardPos=100..}] add volcano


# Checks how many players there are, if there are 3+ then the player needs to roll to choose who to swap with
    # Stores the number of players in the player= score
    execute store result score players= tiles if entity @a[tag=ingame,tag=!volcano]
    # If there are 3 or more players then it schedules the intro function in 1.5 seconds
    execute if score players= tiles matches 3.. run schedule function board:tiles/ufo/intro 1.5s
    # If there are less than 3 players then it schedules the less_than_3 function (what a shit name) in 1.5 seconds
    execute if score players= tiles matches 2 run schedule function board:tiles/ufo/less_than_3 1.5s
    # If there are no available players then it schedules the no_players function in 1.5 seconds
    execute unless score players= tiles matches 2.. run schedule function board:tiles/ufo/no_players 1.5s

# Checks which tile the player is at, and spawns an area effect cloud with the ufoOrigin tag at the tile
execute if score @a[tag=turn,limit=1] newBoardPos matches 14 run summon minecraft:area_effect_cloud -242 13 -33 {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: ["ufoOrigin"]}
execute if score @a[tag=turn,limit=1] newBoardPos matches 39 run summon minecraft:area_effect_cloud -257 26 79 {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: ["ufoOrigin"]}
execute if score @a[tag=turn,limit=1] newBoardPos matches 47 run summon minecraft:area_effect_cloud -194 28 13 {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: ["ufoOrigin"]}
execute if score @a[tag=turn,limit=1] newBoardPos matches 67 run summon minecraft:area_effect_cloud -128 14 98 {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: ["ufoOrigin"]}
execute if score @a[tag=turn,limit=1] newBoardPos matches 88 run summon minecraft:area_effect_cloud -197 58 42 {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: ["ufoOrigin"]}

function board:dice_roll/board_display

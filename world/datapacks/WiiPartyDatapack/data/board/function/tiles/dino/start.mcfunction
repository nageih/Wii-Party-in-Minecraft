


function board:tiles/generic_start


schedule function board:tiles/dino/intro 1.5s

# Checks which tile the player is at, and spawns an area effect cloud with the ufoOrigin tag at the tile
execute if score @a[tag=turn,limit=1] newBoardPos matches 32 run summon minecraft:area_effect_cloud -185 24 119 {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: ["dinoOrigin","tile1"]}
execute if score @a[tag=turn,limit=1] newBoardPos matches 60 run summon minecraft:area_effect_cloud -107 21 27 {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: ["dinoOrigin","tile2"]}

scoreboard players operation @a[tag=turn,limit=1] boardPos = @a[tag=turn,limit=1] newBoardPos
scoreboard players operation originalTile= tiles = @a[tag=turn,limit=1] boardPos

title @a[tag=turn] actionbar ""

function board:dice_roll/board_display
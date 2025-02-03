# Teleports the aec a block down so that it is inside the tile
tp @s ~ ~ ~

summon minecraft:falling_block ~ ~ ~ {BlockState:{Name:"minecraft:white_concrete"},NoGravity:1b,Time:-2147483648,Glowing:1b,Tags:["tileGlow"]}
summon minecraft:falling_block ~ ~ ~0.99 {BlockState:{Name:"minecraft:smooth_sandstone_stairs",Properties:{facing:"north"}},NoGravity:1b,Glowing:1b,Time:-2147483648,Tags:["tileGlow"]}
summon minecraft:falling_block ~0.99 ~ ~ {BlockState:{Name:"minecraft:smooth_sandstone_stairs",Properties:{facing:"west"}},NoGravity:1b,Glowing:1b,Time:-2147483648,Tags:["tileGlow"]}
summon minecraft:falling_block ~ ~ ~-0.99 {BlockState:{Name:"minecraft:smooth_sandstone_stairs",Properties:{facing:"south"}},NoGravity:1b,Glowing:1b,Time:-2147483648,Tags:["tileGlow"]}
summon minecraft:falling_block ~-0.99 ~ ~ {BlockState:{Name:"minecraft:smooth_sandstone_stairs",Properties:{facing:"east"}},NoGravity:1b,Glowing:1b,Time:-2147483648,Tags:["tileGlow"]}
summon minecraft:falling_block ~0.99 ~ ~0.99 {BlockState:{Name:"minecraft:birch_slab"},NoGravity:1b,Time:-2147483648,Glowing:1b,Tags:["tileGlow"]}
summon minecraft:falling_block ~0.99 ~ ~-0.99 {BlockState:{Name:"minecraft:birch_slab"},NoGravity:1b,Time:-2147483648,Glowing:1b,Tags:["tileGlow"]}
summon minecraft:falling_block ~-0.99 ~ ~0.99 {BlockState:{Name:"minecraft:birch_slab"},NoGravity:1b,Time:-2147483648,Glowing:1b,Tags:["tileGlow"]}
summon minecraft:falling_block ~-0.99 ~ ~-0.99 {BlockState:{Name:"minecraft:birch_slab"},NoGravity:1b,Time:-2147483648,Glowing:1b,Tags:["tileGlow"]}

# Blue Boosts
#execute unless score errupted= tiles matches 1 if score @a[tag=turn,limit=1] newBoardPos matches 5 run function board:dice_roll/glowing_tiles/blue_boost
execute unless score errupted= tiles matches 1 if score @a[tag=turn,limit=1] newBoardPos matches 1 run function board:dice_roll/glowing_tiles/blue_boost
execute unless score errupted= tiles matches 1 if score @a[tag=turn,limit=1] newBoardPos matches 11 run function board:dice_roll/glowing_tiles/blue_boost
execute unless score errupted= tiles matches 1 if score @a[tag=turn,limit=1] newBoardPos matches 23 run function board:dice_roll/glowing_tiles/blue_boost
execute unless score errupted= tiles matches 1 if score @a[tag=turn,limit=1] newBoardPos matches 30 run function board:dice_roll/glowing_tiles/blue_boost
execute unless score errupted= tiles matches 1 if score @a[tag=turn,limit=1] newBoardPos matches 52 run function board:dice_roll/glowing_tiles/blue_boost
execute unless score errupted= tiles matches 1 if score @a[tag=turn,limit=1] newBoardPos matches 54 run function board:dice_roll/glowing_tiles/blue_boost
execute unless score errupted= tiles matches 1 if score @a[tag=turn,limit=1] newBoardPos matches 63 run function board:dice_roll/glowing_tiles/blue_boost
execute unless score errupted= tiles matches 1 if score @a[tag=turn,limit=1] newBoardPos matches 77 run function board:dice_roll/glowing_tiles/blue_boost
# Red Boosts
execute unless score errupted= tiles matches 1 if score @a[tag=turn,limit=1] newBoardPos matches 7 run function board:dice_roll/glowing_tiles/red_boost
execute unless score errupted= tiles matches 1 if score @a[tag=turn,limit=1] newBoardPos matches 24 run function board:dice_roll/glowing_tiles/red_boost
execute unless score errupted= tiles matches 1 if score @a[tag=turn,limit=1] newBoardPos matches 40 run function board:dice_roll/glowing_tiles/red_boost
execute unless score errupted= tiles matches 1 if score @a[tag=turn,limit=1] newBoardPos matches 45 run function board:dice_roll/glowing_tiles/red_boost
execute unless score errupted= tiles matches 1 if score @a[tag=turn,limit=1] newBoardPos matches 57 run function board:dice_roll/glowing_tiles/red_boost
execute unless score errupted= tiles matches 1 if score @a[tag=turn,limit=1] newBoardPos matches 74 run function board:dice_roll/glowing_tiles/red_boost
execute unless score errupted= tiles matches 1 if score @a[tag=turn,limit=1] newBoardPos matches 81 run function board:dice_roll/glowing_tiles/red_boost
execute unless score errupted= tiles matches 1 if score @a[tag=turn,limit=1] newBoardPos matches 89 run function board:dice_roll/glowing_tiles/red_boost
# Blue Yeeter
execute unless score errupted= tiles matches 1 if score @a[tag=turn,limit=1] newBoardPos matches 10 run function board:dice_roll/glowing_tiles/blue_yeeter
execute unless score errupted= tiles matches 1 if score @a[tag=turn,limit=1] newBoardPos matches 12 run function board:dice_roll/glowing_tiles/blue_yeeter
# Red Yeeter
execute unless score errupted= tiles matches 1 if score @a[tag=turn,limit=1] newBoardPos matches 38 run function board:dice_roll/glowing_tiles/red_yeeter
# Tornado + UFO
execute unless score errupted= tiles matches 1 if score @a[tag=turn,limit=1] newBoardPos matches 14 run function board:dice_roll/glowing_tiles/yellow_surprise
execute unless score errupted= tiles matches 1 if score @a[tag=turn,limit=1] newBoardPos matches 17 run function board:dice_roll/glowing_tiles/yellow_surprise
execute unless score errupted= tiles matches 1 if score @a[tag=turn,limit=1] newBoardPos matches 39 run function board:dice_roll/glowing_tiles/yellow_surprise
execute unless score errupted= tiles matches 1 if score @a[tag=turn,limit=1] newBoardPos matches 47 run function board:dice_roll/glowing_tiles/yellow_surprise
execute unless score errupted= tiles matches 1 if score @a[tag=turn,limit=1] newBoardPos matches 53 run function board:dice_roll/glowing_tiles/yellow_surprise
execute unless score errupted= tiles matches 1 if score @a[tag=turn,limit=1] newBoardPos matches 67 run function board:dice_roll/glowing_tiles/yellow_surprise
execute unless score errupted= tiles matches 1 if score @a[tag=turn,limit=1] newBoardPos matches 69 run function board:dice_roll/glowing_tiles/yellow_surprise
execute unless score errupted= tiles matches 1 if score @a[tag=turn,limit=1] newBoardPos matches 85 run function board:dice_roll/glowing_tiles/yellow_surprise
execute unless score errupted= tiles matches 1 if score @a[tag=turn,limit=1] newBoardPos matches 88 run function board:dice_roll/glowing_tiles/yellow_surprise
# 3v1 + 1v1
execute unless score errupted= tiles matches 1 if score @a[tag=turn,limit=1] newBoardPos matches 21 run function board:dice_roll/glowing_tiles/duels
execute unless score errupted= tiles matches 1 if score @a[tag=turn,limit=1] newBoardPos matches 37 run function board:dice_roll/glowing_tiles/duels
execute unless score errupted= tiles matches 1 if score @a[tag=turn,limit=1] newBoardPos matches 41 run function board:dice_roll/glowing_tiles/duels
execute unless score errupted= tiles matches 1 if score @a[tag=turn,limit=1] newBoardPos matches 49 run function board:dice_roll/glowing_tiles/duels
execute unless score errupted= tiles matches 1 if score @a[tag=turn,limit=1] newBoardPos matches 65 run function board:dice_roll/glowing_tiles/duels
execute unless score errupted= tiles matches 1 if score @a[tag=turn,limit=1] newBoardPos matches 76 run function board:dice_roll/glowing_tiles/duels
# Skull
execute unless score errupted= tiles matches 1 if score @a[tag=turn,limit=1] newBoardPos matches 33 run function board:dice_roll/glowing_tiles/skull
execute unless score errupted= tiles matches 1 if score @a[tag=turn,limit=1] newBoardPos matches 84 run function board:dice_roll/glowing_tiles/skull
# Volcano + DInosaur
execute unless score errupted= tiles matches 1 if score @a[tag=turn,limit=1] newBoardPos matches 32 run function board:dice_roll/glowing_tiles/orange_surprise
execute unless score errupted= tiles matches 1 if score @a[tag=turn,limit=1] newBoardPos matches 36 run function board:dice_roll/glowing_tiles/orange_surprise
execute unless score errupted= tiles matches 1 if score @a[tag=turn,limit=1] newBoardPos matches 60 run function board:dice_roll/glowing_tiles/orange_surprise
# Random smaller white tiles
execute if score @a[tag=turn,limit=1] newBoardPos matches 43 run function board:dice_roll/glowing_tiles/semi_white
execute if score @a[tag=turn,limit=1] newBoardPos matches 44 run function board:dice_roll/glowing_tiles/semi_white
execute if score @a[tag=turn,limit=1] newBoardPos matches 79 run function board:dice_roll/glowing_tiles/semi_white
# Volcano
execute if score @a[tag=turn,limit=1] newBoardPos matches 100 run function board:dice_roll/glowing_tiles/volcano_start
execute if score @a[tag=turn,limit=1] newBoardPos matches 101 run function board:dice_roll/glowing_tiles/volcano
execute if score @a[tag=turn,limit=1] newBoardPos matches 102 run function board:dice_roll/glowing_tiles/volcano
execute if score @a[tag=turn,limit=1] newBoardPos matches 103 run function board:dice_roll/glowing_tiles/volcano
execute if score @a[tag=turn,limit=1] newBoardPos matches 104 run function board:dice_roll/glowing_tiles/volcano
execute if score @a[tag=turn,limit=1] newBoardPos matches 105 run function board:dice_roll/glowing_tiles/volcano
execute if score @a[tag=turn,limit=1] newBoardPos matches 106 run function board:dice_roll/glowing_tiles/shout_space
execute if score @a[tag=turn,limit=1] newBoardPos matches 107 run function board:dice_roll/glowing_tiles/volcano
execute if score @a[tag=turn,limit=1] newBoardPos matches 108 run function board:dice_roll/glowing_tiles/volcano
execute if score @a[tag=turn,limit=1] newBoardPos matches 109 run function board:dice_roll/glowing_tiles/volcano
execute if score @a[tag=turn,limit=1] newBoardPos matches 110.. run function board:dice_roll/glowing_tiles/shout_space


# If the volcano has errupted
execute if score errupted= tiles matches 1 if score @a[tag=turn,limit=1] newBoardPos matches 5 run function board:dice_roll/glowing_tiles/red_boost
execute if score errupted= tiles matches 1 if score @a[tag=turn,limit=1] newBoardPos matches 11 run function board:dice_roll/glowing_tiles/red_boost
execute if score errupted= tiles matches 1 if score @a[tag=turn,limit=1] newBoardPos matches 23 run function board:dice_roll/glowing_tiles/red_boost
execute if score errupted= tiles matches 1 if score @a[tag=turn,limit=1] newBoardPos matches 30 run function board:dice_roll/glowing_tiles/red_boost
execute if score errupted= tiles matches 1 if score @a[tag=turn,limit=1] newBoardPos matches 52 run function board:dice_roll/glowing_tiles/red_boost
execute if score errupted= tiles matches 1 if score @a[tag=turn,limit=1] newBoardPos matches 54 run function board:dice_roll/glowing_tiles/red_boost
execute if score errupted= tiles matches 1 if score @a[tag=turn,limit=1] newBoardPos matches 63 run function board:dice_roll/glowing_tiles/red_boost
execute if score errupted= tiles matches 1 if score @a[tag=turn,limit=1] newBoardPos matches 77 run function board:dice_roll/glowing_tiles/red_boost
execute if score errupted= tiles matches 1 if score @a[tag=turn,limit=1] newBoardPos matches 7 run function board:dice_roll/glowing_tiles/red_boost
execute if score errupted= tiles matches 1 if score @a[tag=turn,limit=1] newBoardPos matches 24 run function board:dice_roll/glowing_tiles/red_boost
execute if score errupted= tiles matches 1 if score @a[tag=turn,limit=1] newBoardPos matches 40 run function board:dice_roll/glowing_tiles/red_boost
execute if score errupted= tiles matches 1 if score @a[tag=turn,limit=1] newBoardPos matches 45 run function board:dice_roll/glowing_tiles/red_boost
execute if score errupted= tiles matches 1 if score @a[tag=turn,limit=1] newBoardPos matches 57 run function board:dice_roll/glowing_tiles/red_boost
execute if score errupted= tiles matches 1 if score @a[tag=turn,limit=1] newBoardPos matches 74 run function board:dice_roll/glowing_tiles/red_boost
execute if score errupted= tiles matches 1 if score @a[tag=turn,limit=1] newBoardPos matches 81 run function board:dice_roll/glowing_tiles/red_boost
execute if score errupted= tiles matches 1 if score @a[tag=turn,limit=1] newBoardPos matches 89 run function board:dice_roll/glowing_tiles/red_boost
execute if score errupted= tiles matches 1 if score @a[tag=turn,limit=1] newBoardPos matches 10 run function board:dice_roll/glowing_tiles/red_boost
execute if score errupted= tiles matches 1 if score @a[tag=turn,limit=1] newBoardPos matches 12 run function board:dice_roll/glowing_tiles/red_boost
execute if score errupted= tiles matches 1 if score @a[tag=turn,limit=1] newBoardPos matches 38 run function board:dice_roll/glowing_tiles/red_boost
execute if score errupted= tiles matches 1 if score @a[tag=turn,limit=1] newBoardPos matches 14 run function board:dice_roll/glowing_tiles/red_boost
execute if score errupted= tiles matches 1 if score @a[tag=turn,limit=1] newBoardPos matches 17 run function board:dice_roll/glowing_tiles/red_boost
execute if score errupted= tiles matches 1 if score @a[tag=turn,limit=1] newBoardPos matches 39 run function board:dice_roll/glowing_tiles/red_boost
execute if score errupted= tiles matches 1 if score @a[tag=turn,limit=1] newBoardPos matches 47 run function board:dice_roll/glowing_tiles/red_boost
execute if score errupted= tiles matches 1 if score @a[tag=turn,limit=1] newBoardPos matches 53 run function board:dice_roll/glowing_tiles/red_boost
execute if score errupted= tiles matches 1 if score @a[tag=turn,limit=1] newBoardPos matches 67 run function board:dice_roll/glowing_tiles/red_boost
execute if score errupted= tiles matches 1 if score @a[tag=turn,limit=1] newBoardPos matches 85 run function board:dice_roll/glowing_tiles/red_boost
execute if score errupted= tiles matches 1 if score @a[tag=turn,limit=1] newBoardPos matches 88 run function board:dice_roll/glowing_tiles/red_boost
execute if score errupted= tiles matches 1 if score @a[tag=turn,limit=1] newBoardPos matches 21 run function board:dice_roll/glowing_tiles/red_boost
execute if score errupted= tiles matches 1 if score @a[tag=turn,limit=1] newBoardPos matches 37 run function board:dice_roll/glowing_tiles/red_boost
#execute if score errupted= tiles matches 1 if score @a[tag=turn,limit=1] newBoardPos matches 41 run function board:dice_roll/glowing_tiles/red_boost
execute if score errupted= tiles matches 1 if score @a[tag=turn,limit=1] newBoardPos matches 49 run function board:dice_roll/glowing_tiles/red_boost
execute if score errupted= tiles matches 1 if score @a[tag=turn,limit=1] newBoardPos matches 65 run function board:dice_roll/glowing_tiles/red_boost
execute if score errupted= tiles matches 1 if score @a[tag=turn,limit=1] newBoardPos matches 76 run function board:dice_roll/glowing_tiles/red_boost
execute if score errupted= tiles matches 1 if score @a[tag=turn,limit=1] newBoardPos matches 33 run function board:dice_roll/glowing_tiles/red_boost
execute if score errupted= tiles matches 1 if score @a[tag=turn,limit=1] newBoardPos matches 32 run function board:dice_roll/glowing_tiles/red_boost
execute if score errupted= tiles matches 1 if score @a[tag=turn,limit=1] newBoardPos matches 36 run function board:dice_roll/glowing_tiles/red_boost
execute if score errupted= tiles matches 1 if score @a[tag=turn,limit=1] newBoardPos matches 60 run function board:dice_roll/glowing_tiles/red_boost
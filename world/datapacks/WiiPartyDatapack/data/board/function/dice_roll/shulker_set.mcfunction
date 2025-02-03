# Teleports the shulker a block down so that it is inside the tile
tp @s ~ ~-1 ~

# Gives the shulker glowing so that it can be seen through walls
effect give @s minecraft:glowing 1000000 1 true

# Makes the shulker invisible
effect give @s minecraft:invisibility 1000000 1 true

# Makes the shulker join the same team as the current player, so that they glow matches the players colour
    # Blue
execute if entity @a[tag=turn,team=blue] run team join blue @s
    # Red
execute if entity @a[tag=turn,team=red] run team join red @s
    # Green
execute if entity @a[tag=turn,team=green] run team join green @s
    # Orange
execute if entity @a[tag=turn,team=orange] run team join orange @s
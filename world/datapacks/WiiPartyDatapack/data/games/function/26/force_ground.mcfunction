#   Author        =   @ JevinLevin
#   Description   =   Teleports the player to the ground
#   Called By     =   games:26/hit_player + games:26/force_ground


# If the player isnt on the ground, teleport them down
execute if block ~ ~-1 ~ minecraft:air run tp @s ~ ~-1 ~

# If they still arent on the ground, repeat
execute if block ~ ~-1 ~ minecraft:air at @s run function games:26/force_ground
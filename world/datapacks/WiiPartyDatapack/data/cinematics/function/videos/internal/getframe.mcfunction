#   Author        =   @ T4Bl3rUs
#   Description   =   Saves the current frame
#   Called By     =   cinematics:videos/internal/record

# Empty the array
data modify storage cinematics frame set value []

# Add position and rotation
data modify storage cinematics frame append from entity @s Pos
data modify storage cinematics frame append from entity @s Rotation
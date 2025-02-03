#   Author        =   @ T4Bl3rUs
#   Description   =   Changes the armor stands's data
#   Called By     =   cinematics:videos/internal/playvid

# Get position and rotation from the storage
data modify entity @e[type=minecraft:armor_stand,tag=video,limit=1] Pos set from storage minecraft:cinematics load[0][0]
data modify entity @e[type=minecraft:armor_stand,tag=video,limit=1] Rotation set from storage minecraft:cinematics load[0][1]
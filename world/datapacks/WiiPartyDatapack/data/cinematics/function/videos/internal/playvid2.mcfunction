#   Author        =   @ T4Bl3rUs
#   Description   =   Starts playing the video
#   Called By     =   cinematics:videos/playvid

# Sets the first frame
data modify entity @e[type=minecraft:armor_stand,tag=video,limit=1] Pos set from storage minecraft:cinematics load[0][0]
data modify entity @e[type=minecraft:armor_stand,tag=video,limit=1] Rotation set from storage minecraft:cinematics load[0][1]

# Starts playing the video
execute as @e[type=minecraft:armor_stand,tag=video,limit=1] at @s run function cinematics:videos/internal/playvid
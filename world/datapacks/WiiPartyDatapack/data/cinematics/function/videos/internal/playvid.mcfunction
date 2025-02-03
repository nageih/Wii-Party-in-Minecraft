#   Author        =   @ T4Bl3rUs
#   Description   =   Adds the current frame to the recording
#   Called By     =   cinematics:videos/internal/playvid2 + cinematics:videos/internal/playvid

# Creates the armor stand if there isn't one
execute unless entity @e[type=minecraft:armor_stand,tag=video,limit=1] run summon minecraft:armor_stand ~ ~ ~ {NoGravity:1b,Invisible:1b,Silent:1b,Tags:["video"]}

# Creates
scoreboard objectives add recording dummy

# Plays the current frame
function cinematics:videos/internal/playframe
execute as @a[tag=!nocinematics] run spectate @e[type=minecraft:armor_stand,tag=video,limit=1]
data remove storage minecraft:cinematics load[0]

# Continue if there are more frames
execute store success score %continue recording run data get storage minecraft:cinematics load[0]
execute if score %continue recording matches 1 run schedule function cinematics:videos/internal/playvid 1t
execute if score %continue recording matches 0 run kill @e[type=minecraft:armor_stand,tag=video]
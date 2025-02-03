#   Author        =   @ T4Bl3rUs
#   Description   =   Forces the player to load chunks
#   Called By     =   cinematics:videos/internal/reset + cinematics:videos/playvid

# Change the player's gamemode to load chunks (forceload doesnt work)
effect give @a[tag=!nocinematics] minecraft:invisibility 1 0 true
execute as @a[tag=!nocinematics] run spectate
execute as @a[tag=!nocinematics] run spectate @e[type=minecraft:armor_stand,tag=video,limit=1]

# Schedules this function
execute if score %continue recording matches 1 run schedule function cinematics:videos/internal/reset 5s
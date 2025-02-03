#   Author        =   @ T4Bl3rUs
#   Description   =   Gets the current frame and checks if the recording has ended
#   Called By     =   cinematics:videos/internal/record + cinematics:videos/startrecording

# Gets current frame
execute as @a[tag=recording] run function cinematics:videos/internal/getframe
execute as @a[tag=recording] run function cinematics:videos/internal/addframe

# Checks if it should keep recording
execute as @a[tag=recording] run schedule function cinematics:videos/internal/record 1t
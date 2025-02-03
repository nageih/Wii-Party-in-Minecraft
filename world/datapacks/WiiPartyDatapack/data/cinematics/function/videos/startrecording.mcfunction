#   Author        =   @ T4Bl3rUs
#   Description   =   Starts recording
#   Called By     =  

# Add the "recording" tag
tag @s add recording

# Clear previous data in save
data modify storage minecraft:cinematics save set value []

# Start recording
function cinematics:videos/internal/record
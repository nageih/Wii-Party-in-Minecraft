#   Author        =   @ T4Bl3rUs
#   Description   =   Handles interpolation and drawing points
#   Called By     =   graphing:renderpoint + graphing:interpolate

# Get current Y (multiplied by 1000 for precision)
execute store result score current_y= graphing run data get entity @s Pos[1] 1000

# Get next Y from storage (multiplied by 1000 for precision)
execute store result score next_y= graphing run data get storage minecraft:graphing heights[0] 1000

# Calculate interpolated Y
execute store result score delta_y= graphing run scoreboard players operation next_y= graphing -= current_y= graphing
execute store result score delta_y= graphing run scoreboard players operation delta_y= graphing /= interpolate= graphing
execute store result score interpolated_y= graphing run scoreboard players operation interpolated_y= graphing = current_y= graphing
execute store result score interpolated_y= graphing run scoreboard players operation interpolated_y= graphing += delta_y= graphing

# Store interpolated Y in storage (divide by 1000 to restore precision)
execute store result storage minecraft:graphing temp_y double 0.001 run scoreboard players get interpolated_y= graphing

# Get next X and Z from current position (after moving in renderpoint)
execute if score test= graphing matches 1 store result score next_x= graphing run data get entity @s Pos[0] 1000
execute if score test= graphing matches 1 store result score next_z= graphing run data get entity @s Pos[2] 1000
scoreboard players set test= graphing 0

# Calculate interpolated X
scoreboard players operation delta_x= graphing = next_x= graphing
scoreboard players operation delta_x= graphing -= current_x= graphing
scoreboard players operation delta_x= graphing /= interpolate= graphing
scoreboard players operation interpolated_x= graphing = current_x= graphing
scoreboard players operation interpolated_x= graphing += delta_x= graphing

# Calculate interpolated Z
scoreboard players operation delta_z= graphing = next_z= graphing
scoreboard players operation delta_z= graphing -= current_z= graphing
scoreboard players operation delta_z= graphing /= interpolate= graphing
scoreboard players operation interpolated_z= graphing = current_z= graphing
scoreboard players operation interpolated_z= graphing += delta_z= graphing

# Store interpolated X and Z in storage (divide by 1000 to restore precision)
execute store result storage minecraft:graphing temp_x double 0.001 run scoreboard players get interpolated_x= graphing
execute store result storage minecraft:graphing temp_z double 0.001 run scoreboard players get interpolated_z= graphing

#tellraw @a {"score":{"name":"interpolated_z=","objective":"graphing"}}

# Set entity position using interpolated values
data modify entity @s Pos[0] set from storage minecraft:graphing temp_x
data modify entity @s Pos[1] set from storage minecraft:graphing temp_y
data modify entity @s Pos[2] set from storage minecraft:graphing temp_z
scoreboard players operation current_x= graphing = interpolated_x= graphing
scoreboard players operation current_z= graphing = interpolated_z= graphing

# Draw the point
execute at @s if score colour= graphing matches 1 run particle dust{"color":[0.125,0.361,0.792],"scale":0.75} ~ ~ ~ 0 0 0 0.1 1 force
execute at @s if score colour= graphing matches 2 run particle dust{"color":[0.792,0.224,0.125],"scale":0.75} ~ ~ ~ 0 0 0 0.1 1 force
execute at @s if score colour= graphing matches 3 run particle dust{"color":[0.125,0.792,0.361],"scale":0.75} ~ ~ ~ 0 0 0 0.1 1 force
execute at @s if score colour= graphing matches 4 run particle dust{"color":[0.792,0.58,0.125],"scale":0.75} ~ ~ ~ 0 0 0 0.1 1 force

# Decrease interpolate
scoreboard players remove interpolate= graphing 1

# Recursively call itself if interpolate > 0
execute if score interpolate= graphing matches 1.. at @s as @s run function graphing:interpolate

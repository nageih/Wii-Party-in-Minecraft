#   Author        =   @ T4Bl3rUs
#   Description   =   Renders a point
#   Called By     =   graphing:render + graphing:renderpoint

# Set height
data modify entity @s Pos[1] set from storage minecraft:graphing heights[0]
data remove storage minecraft:graphing heights[0]

# Move forward and store X, Z for interpolation
execute store result score current_x= graphing run data get entity @s Pos[0] 1000
execute store result score current_z= graphing run data get entity @s Pos[2] 1000
scoreboard players set test= graphing 1
execute at @s rotated ~ 0 run tp @s ^ ^ ^0.1565

# Set interpolate based on diff_percent
execute store result score diff_percent= graphing run data get storage minecraft:graphing diffs[0]
data remove storage minecraft:graphing diffs[0]
execute if score diff_percent= graphing matches ..24 run scoreboard players set interpolate= graphing 1
execute if score diff_percent= graphing matches 25..49 run scoreboard players set interpolate= graphing 3
execute if score diff_percent= graphing matches 50.. run scoreboard players set interpolate= graphing 5

# Call interpolate function
execute at @s rotated ~ 0 run function graphing:interpolate

# Decide if it should continue
execute store success score #continue graphing run data get storage minecraft:graphing heights[0]
execute if score #continue graphing matches 1 at @s rotated ~ 0 run function graphing:renderpoint
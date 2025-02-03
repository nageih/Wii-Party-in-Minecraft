#   Author        =   @ T4Bl3rUs
#   Description   =   Renders the graph
#   Called By     =   graphing:fullgraph

# Store starting position
summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["temppos"],Age:-2147483648,Duration:-1,WaitTime:-2147483648}
tp @e[tag=temppos] ~ ~ ~ ~ ~15
execute as @e[tag=temppos] store result score start= graphing run data get entity @s Pos[1]

# Temp
function graphing:calc

# Render
execute store result score colour= graphing run data get storage minecraft:graphing config.colour
execute as @e[tag=temppos] at @s rotated as @s run function graphing:renderpoint

# Delete the entity
kill @e[tag=temppos]
data remove storage minecraft:graphing heights
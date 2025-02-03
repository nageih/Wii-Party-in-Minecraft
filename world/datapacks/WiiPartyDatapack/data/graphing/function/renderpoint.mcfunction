#   Author        =   @ T4Bl3rUs
#   Description   =   Renders a point
#   Called By     =   graphing:render + graphing:renderpoint

# Set height
data modify entity @s Pos[1] set from storage minecraft:graphing heights[0]
data remove storage minecraft:graphing heights[0]

# Draw the point
execute at @s if score colour= graphing matches 1 run particle dust{"color":[0.125,0.361,0.792],"scale":0.75} ~ ~ ~ 0 0 0 0.1 1 force
#execute at @s if score colour= graphing matches 1 run particle dust{"color":[0.125,0.361,0.792],"scale":0.5} ~ ~ ~ 0 0 0 0.1 1 force
execute at @s if score colour= graphing matches 2 run particle dust{"color":[0.792,0.224,0.125],"scale":0.75} ~ ~ ~ 0 0 0 0.1 1 force
#execute at @s if score colour= graphing matches 2 run particle dust{"color":[0.792,0.224,0.125],"scale":0.5} ~ ~ ~ 0 0 0 0.1 1 force
execute at @s if score colour= graphing matches 3 run particle dust{"color":[0.125,0.792,0.361],"scale":0.75} ~ ~ ~ 0 0 0 0.1 1 force
#execute at @s if score colour= graphing matches 3 run particle dust{"color":[0.125,0.792,0.361],"scale":0.5} ~ ~ ~ 0 0 0 0.1 1 force
execute at @s if score colour= graphing matches 4 run particle dust{"color":[0.792,0.58,0.125],"scale":0.75} ~ ~ ~ 0 0 0 0.1 1 force
#execute at @s if score colour= graphing matches 4 run particle dust{"color":[0.792,0.58,0.125],"scale":0.5} ~ ~ ~ 0 0 0 0.1 1 force


execute at @s run tp @s ^ ^ ^.1565

# Decide if it should continue
execute store success score #continue graphing run data get storage minecraft:graphing heights[0]
execute if score #continue graphing matches 1 at @s run function graphing:renderpoint
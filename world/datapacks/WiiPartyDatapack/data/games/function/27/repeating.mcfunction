#   Author        =   @ T4Bl3rUs
#   Description   =   Main tick function for the minigame
#   Called By     =   games:repeat



# Runs the player function as all ingame players
execute if score ingame= 27scores matches 2 as @a[tag=ingame] at @s rotated as @s run function games:27/player

# Kill dropped remotes
kill @e[type=minecraft:item,x=25900,y=15,z=25900,dx=200,dy=100,dz=200]

# Handles the tutorial
execute if score ingame= 27scores matches 0 run function games:27/main_start

function general:spectator/main
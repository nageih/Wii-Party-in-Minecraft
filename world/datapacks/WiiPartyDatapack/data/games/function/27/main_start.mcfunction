#   Author        =   @ T4Bl3rUs
#   Description   =   Runs the starting book section
#   Called By     =   games:27/repeating


execute if score ingame= 27scores matches 0 run function general:tutorial/tick
execute if score ingame= 27scores matches 0 run function games:27/mods

execute if score play= practice matches 1 run scoreboard players set theme= 27mods 1
execute if score play= practice matches 1 run function games:27/start_play
execute if score practice= practice matches 1 run function games:27/start_play
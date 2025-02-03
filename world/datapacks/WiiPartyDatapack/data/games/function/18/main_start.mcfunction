#   Author        =   @ T4Bl3rUs
#   Description   =   Runs the starting book section
#   Called By     =   games:18/repeating


execute if score ingame= 18scores matches 0 run function general:tutorial/tick
execute if score ingame= 18scores matches 0 run function games:18/mods

# Reset mods
#execute if score play= practice matches 1 run scoreboard players set timer= 18mods 901

execute if score play= practice matches 1 run function games:18/start_play
execute if score practice= practice matches 1 run function games:18/start_play
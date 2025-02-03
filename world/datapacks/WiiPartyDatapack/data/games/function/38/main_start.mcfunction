#   Author        =   @ T4Bl3rUs
#   Description   =   Runs the starting book section
#   Called By     =   games:38/repeating


execute if score ingame= 38scores matches 0 run function general:tutorial/tick
execute if score ingame= 38scores matches 0 run function games:38/mods

execute if score play= practice matches 1 run scoreboard players set timer= 38mods 901
execute if score play= practice matches 1 run scoreboard players set entity= 38mods 1
execute if score play= practice matches 1 run function games:38/start_play
execute if score practice= practice matches 1 run function games:38/start_play
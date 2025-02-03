#   Author        =   @ JevinLevin
#   Description   =   Summons a new powerup
#   Called By     =   games:4/start


# Summons new armor stand to represent the powerup
summon minecraft:armor_stand ~ ~ ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,Small:1b,Marker:1b,Invisible:1b,Tags:["4powerup","temppowerup"],DisabledSlots:4144959,ArmorItems:[{},{},{},{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_model_data":4001},count:1}]}

# Summons area effect cloud in the centre of the map for the armor stand to spread players at
# Needs this because for some reason using hardcoded coords for the spread players gives a weird error message. So to bypass i just execute at an entity and use ~ ~
summon minecraft:area_effect_cloud 3995.0 23.5 4005 {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["4temp"]}

# Runs the move_powerup function as the new powerup which will move it to a random location on the track
execute as @e[type=minecraft:armor_stand,tag=temppowerup] run function games:4/move_powerup

# Kills the temporary area effect cloud used for spreadplayers
kill @e[type=minecraft:area_effect_cloud,tag=4temp]

# Schedules the next powerup, with the time dependant on how far into the game it is
    # If its been less than 25 seconds it schedules for 7.5 seconds
execute if score time= 4scores matches 1..500 run schedule function games:4/new_powerup 8s
    # If its been more than 25 seconds but less than 35 it schedules for 6.5 seconds
execute if score time= 4scores matches 501..700 run schedule function games:4/new_powerup 7.5s
    # If its been more than 35 seconds but less than 45 the it schedules for 5.5 seconds
execute if score time= 4scores matches 701..900 run schedule function games:4/new_powerup 7s
    # If its been more than 45 seconds then it schedules for 4 seconds
execute if score time= 4scores matches 901..3600 run schedule function games:4/new_powerup 6s
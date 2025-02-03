#   Author        =   @ JevinLevin
#   Description   =   Main tick function for the minigame
#   Called By     =   games:repeat


# Runs the start_animation function which makes the barrels rise up
execute if score ingame 3scores matches 2 run function games:3/start_animation

# Runs the dropping function while the barrels are dropping
execute if score ingame 3scores matches 3 run function games:3/dropping

# Ran while the barrels are falling
    # If the player fails and doesnt press the button then the function is ran as their barrels
execute if score ingame 3scores matches 3 if score timer= 3scores matches 33 as @e[type=minecraft:falling_block,tag=barrel,tag=!stopped] at @s run function games:3/fail_barrels
    # If the player fails and doesnt press the button then this function is ran as them
execute if score ingame 3scores matches 3 if score timer= 3scores matches 33 as @a[tag=ingame,tag=!stopped,scores={3time=33}] at @s run function games:3/fail_players

# Ran when the barrels reach the very bottom
    # Schedules the endgame function in 2 seconds
execute if score timer= 3scores matches 33 run schedule function games:3/endgame 2s
    # If there is a player who failed, runs the zombie villager cure sound for all players
execute if score timer= 3scores matches 33 if entity @a[tag=ingame,tag=failed] as @a[tag=ingame] at @s run playsound minecraft:entity.zombie_villager.cure master @s ~ ~ ~ 0.5 2 1

# While the barrels are falling, it sets the block above it to a chain. Makes it look like the chain is attaches and falling too
execute as @e[type=minecraft:falling_block,tag=barrel] at @s run setblock ~ ~1 ~ minecraft:chain
# Does it also 2 blocks above because for some reason at the very start one chain is missed
execute as @e[type=minecraft:falling_block,tag=barrel] at @s run setblock ~ ~2 ~ minecraft:chain

# Air toggles the falling blocks every tick to help smoothen the movement
# Using the time query method is very smart and stolen from the MCC discord
execute as @e[type=minecraft:falling_block,tag=barrel] store result entity @s Air double 1 run time query gametime

### # Constantly sets the buttons so that when they are pressed they are immediately replaced
### setblock 3006 15 2983 minecraft:stone_button[face=floor,facing=north,powered=false]
### setblock 3002 15 2983 minecraft:stone_button[face=floor,facing=north,powered=false]
### setblock 2998 15 2983 minecraft:stone_button[face=floor,facing=north,powered=false]
### setblock 2994 15 2983 minecraft:stone_button[face=floor,facing=north,powered=false]
### setblock 3006 15 3002 minecraft:stone_button[face=floor,facing=north,powered=false]
### setblock 3002 15 3002 minecraft:stone_button[face=floor,facing=north,powered=false]
### setblock 2998 15 3002 minecraft:stone_button[face=floor,facing=north,powered=false]
### setblock 2994 15 3002 minecraft:stone_button[face=floor,facing=north,powered=false]

# Advancement
scoreboard players add @a[tag=ingame,y_rotation=135..180] advancements 1
scoreboard players add @a[tag=ingame,y_rotation=-180..-135] advancements 1

function general:spectator/main
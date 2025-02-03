#   Author        =   @ JevinLevin
#   Description   =   Ran every tick while the barrels are falling
#   Called By     =   games:3/repeating


## # If a button is pushed, runs the stop_barrel function as the barrel in the same X coord as that button
## execute if block 3006 15 2983 minecraft:stone_button[powered=true] as @e[type=minecraft:falling_block,tag=barrel,tag=!stopped] at @s if entity @s[x=3006,dx=0] run function games:3/stop_barrel
## execute if block 3002 15 2983 minecraft:stone_button[powered=true] as @e[type=minecraft:falling_block,tag=barrel,tag=!stopped] at @s if entity @s[x=3002,dx=0] run function games:3/stop_barrel
## execute if block 2998 15 2983 minecraft:stone_button[powered=true] as @e[type=minecraft:falling_block,tag=barrel,tag=!stopped] at @s if entity @s[x=2998,dx=0] run function games:3/stop_barrel
## execute if block 2994 15 2983 minecraft:stone_button[powered=true] as @e[type=minecraft:falling_block,tag=barrel,tag=!stopped] at @s if entity @s[x=2994,dx=0] run function games:3/stop_barrel

## # If a button is pushed, gives the stopped tag to the player in the same X coord as the button
## execute if block 3006 15 2983 minecraft:stone_button[powered=true] as @a[tag=ingame,tag=!stopped] at @s if entity @s[x=3005,dx=2] run tag @s add stopped
## execute if block 3002 15 2983 minecraft:stone_button[powered=true] as @a[tag=ingame,tag=!stopped] at @s if entity @s[x=3001,dx=2] run tag @s add stopped
## execute if block 2998 15 2983 minecraft:stone_button[powered=true] as @a[tag=ingame,tag=!stopped] at @s if entity @s[x=2997,dx=2] run tag @s add stopped
## execute if block 2994 15 2983 minecraft:stone_button[powered=true] as @a[tag=ingame,tag=!stopped] at @s if entity @s[x=2993,dx=2] run tag @s add stopped


# Increments the 3time score every tick for all player who havent either pressed their button, or failed yet
execute as @a[tag=ingame,tag=!stopped,tag=!failed] run scoreboard players add @s 3time 1

# Increases the timer= score every tick to time the end of the game
scoreboard players add timer= 3scores 1

# Runs the display function every tick while the barrel is dropping to update the scoreboard
function games:3/display
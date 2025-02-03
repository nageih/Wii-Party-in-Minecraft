#   Author        =   @ JevinLevin
#   Description   =   Handles the end animation by running every tick during it and incrementing a score
#   Called By     =   games:2/repeating


# Adds 1 to the end= score which tracks how many ticks its been for the timer
scoreboard players add end= 2scores 1

# At 3 seconds, it runs a function as all zombie players and zombies to turn them back from zombies
    # Players
execute if score end= 2scores matches 60 as @a[tag=dead] at @s run function games:2/convert
    # Zombies
execute if score end= 2scores matches 60 as @e[type=minecraft:zombie,tag=zombietag] at @s run function games:2/convert

# At 6 seconds, runs the endgame function, showing the game has ended
execute if score end= 2scores matches 120 run function games:2/endgame

### NO LONGER NEEDED WITH JUMP STRENGTH SET TO 0
# Teleports all the players to their nearest armor stand so they cant move
# execute if score end= 2scores matches 0..120 as @a at @s at @e[type=minecraft:armor_stand,tag=2freeze,sort=nearest,limit=1] run tp @s ~ ~ ~
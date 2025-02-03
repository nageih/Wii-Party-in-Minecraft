#   Author        =   @ T4Bl3rUs
#   Description   =   Main tick function for the minigame
#   Called By     =   games:repeat



# Runs the player function as all ingame players
execute if score ingame= 38scores matches 2 as @a[tag=ingame] at @s rotated as @s run function games:38/player

# Kill dropped cameras
execute positioned 38000 15 38000 run kill @e[type=minecraft:item,distance=..100]

# Reduce the timer
execute if score ingame= 38scores matches 2 if score timer= 38scores matches 1.. run scoreboard players remove timer= 38scores 1

# Show the overlay
execute if score timer= 38scores = 4/4ths= 38scores run function games:38/overlay/4
execute if score timer= 38scores = 3/4ths= 38scores run function games:38/overlay/3
execute if score timer= 38scores = 2/4ths= 38scores run function games:38/overlay/2
execute if score timer= 38scores = 1/4th= 38scores run function games:38/overlay/1
execute if score timer= 38scores matches 0 run function games:38/overlay/0
execute if score timer= 38scores matches 0 run scoreboard players set ingame= 38scores 3
execute if score timer= 38scores matches 0 run title @a[tag=ingame] actionbar ""
execute if score timer= 38scores matches 0 run clear @a[tag=ingame]
execute if score timer= 38scores matches 0 run schedule function games:38/gallery/start 4s
execute if score timer= 38scores matches 0 run scoreboard players set timer= 38scores -1

# Ensure the fox gets the tag
execute unless entity @e[type=fox,tag=game38] run function games:38/rm_mobs

# Spectates the armorstand in case the player leaves
execute as @a[tag=playing] at @s if entity @e[type=minecraft:armor_stand,tag=38cam] run spectate @e[type=minecraft:armor_stand,tag=38cam,limit=1]

# Handles the tutorial
#execute if score ingame= 38scores matches 0 run function games:38/main_start

function general:spectator/main
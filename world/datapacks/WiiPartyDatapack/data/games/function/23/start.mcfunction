scoreboard objectives add 23scores dummy
scoreboard objectives add 23moveside dummy
scoreboard objectives add 23turndelay dummy

# Sets the ingame score to 1, indicating that the game is starting
scoreboard players set ingame 23scores 1

# Sets the global minigame score to the current minigame number, this is to ensure that the tick function is being run
scoreboard players set global minigame 23

# These tellraws explain the game
tellraw @a[tag=playing] ""
tellraw @a[team=blue] [{"translate":"game.RiskyRailwayName","color":"#0088ff","bold":true,"underlined": true}]
tellraw @a[team=red] [{"translate":"game.RiskyRailwayName","color":"red","bold":true,"underlined": true}]
tellraw @a[team=green] [{"translate":"game.RiskyRailwayName","color":"green","bold":true,"underlined": true}]
tellraw @a[team=orange] [{"translate":"game.RiskyRailwayName","color":"gold","bold":true,"underlined": true}]
tellraw @a[tag=playing,tag=!ingame] [{"translate":"game.RiskyRailwayName","color":"light_purple","bold":true,"underlined": true}]
tellraw @a[tag=playing] ""
tellraw @a[tag=playing] [{"translate":"game.HowToPlay","color":"gray","bold":true}]
tellraw @a[tag=playing] [{"translate":"game.RiskyRailway.How.1","color":"gray","with":[{"text":"-"}]}]
tellraw @a[tag=playing] [{"translate":"game.RiskyRailway.How.2","color":"gray","with":[{"text":"-"}]}]
tellraw @a[tag=playing] [{"translate":"game.RiskyRailway.How.3","color":"gray","with":[{"text":"-"}]}]
tellraw @a[tag=playing] ""

# Teleport all players to the minigame
tp @a[tag=ingame] 24159.99 11.00 24019.21 90 0

spreadplayers 24200 24017 10 10 under 12 true @a[tag=playing,tag=!ingame]

tag @a remove dead

# Ding sound effect
execute as @a[tag=playing] at @s run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 3 0.7

# Give all players the weakness effect to make sure they can't punch other players to throw them off, this effect is cleared when it is their turn to shoot however
effect give @a[tag=ingame] minecraft:weakness infinite 255 true


# Schedules the next segment, which will display a title
schedule function games:23/starttitle 5s

# Removes all players position tags, just for debugging purposes
function general:reset_tags

# Updates the scoreboard
function games:23/display
scoreboard objectives setdisplay sidebar 23display


execute positioned 24200 11 24017 run function games:23/set_carts

scoreboard players set phase= 23scores 0

schedule function games:23/play_intro 60t
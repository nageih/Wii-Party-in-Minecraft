scoreboard objectives add 23scores dummy
scoreboard objectives add 23moveside dummy
scoreboard objectives add 23turndelay dummy

# Sets the ingame score to 1, indicating that the game is starting
scoreboard players set ingame 23scores 1

# Sets the global minigame score to the current minigame number, this is to ensure that the tick function is being run
scoreboard players set global minigame 23

# These tellraws explain the game, these will only display if you are playing with tutorials off.
tellraw @a[team=blue] {"nbt":"colors.blue","storage":"minecraft:config","interpret":true,"extra":[{"translate":"game.RiskyRailway"}],"source":"storage","type":"nbt"}
tellraw @a[team=red] {"nbt":"colors.red","storage":"minecraft:config","interpret":true,"extra":[{"translate":"game.RiskyRailway"}],"source":"storage","type":"nbt"}
tellraw @a[team=green] {"nbt":"colors.green","storage":"minecraft:config","interpret":true,"extra":[{"translate":"game.RiskyRailway"}],"source":"storage","type":"nbt"}
tellraw @a[team=orange] {"nbt":"colors.orange","storage":"minecraft:config","interpret":true,"extra":[{"translate":"game.RiskyRailway"}],"source":"storage","type":"nbt"}
tellraw @a[tag=playing,tag=!ingame] {"nbt":"colors.spectator","storage":"minecraft:config","interpret":true,"extra":[{"translate":"game.RiskyRailway"}],"source":"storage","type":"nbt"}

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
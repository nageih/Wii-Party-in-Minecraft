

scoreboard objectives add 35scores dummy

# Sets the ingame score to -1, indicating that the game is starting
scoreboard players set ingame= 35scores -1

# Sets the global minigame score to the current minigame number, this is to ensure that the tick function is being run
scoreboard players set global minigame 35


# These tellraws explain the game, these will only display if you are playing with tutorials off.
tellraw @a[team=blue] {"nbt":"colors.blue","storage":"minecraft:config","interpret":true,"extra":[{"translate":"game.StrategySteps"}],"source":"storage","type":"nbt"}
tellraw @a[team=red] {"nbt":"colors.red","storage":"minecraft:config","interpret":true,"extra":[{"translate":"game.StrategySteps"}],"source":"storage","type":"nbt"}
tellraw @a[team=green] {"nbt":"colors.green","storage":"minecraft:config","interpret":true,"extra":[{"translate":"game.StrategySteps"}],"source":"storage","type":"nbt"}
tellraw @a[team=orange] {"nbt":"colors.orange","storage":"minecraft:config","interpret":true,"extra":[{"translate":"game.StrategySteps"}],"source":"storage","type":"nbt"}
tellraw @a[tag=playing,tag=!ingame] {"nbt":"colors.spectator","storage":"minecraft:config","interpret":true,"extra":[{"translate":"game.StrategySteps"}],"source":"storage","type":"nbt"}

# Teleport all players to the minigame
tp @a[tag=playing] 35078 67 35024 -90 0

spreadplayers 35078 35024 5 5 under 68 false @a[tag=ingame]
spreadplayers 35078 35024 5 5 under 68 true @a[tag=!ingame,tag=!playing]

# Ding sound effect
execute as @a[tag=playing] at @s run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 3 0.7

# Give all players the weakness effect to make sure they can't punch other players to throw them off, this effect is cleared when it is their turn to shoot however
effect give @a[tag=ingame] minecraft:weakness infinite 255 true

# Schedules the next segment, which will display a title
# schedule function games:35/start_title 5s

# Removes all players position tags, just for debugging purposes
function general:reset_tags

# Updates the scoreboard
scoreboard objectives add 35display dummy {"translate":"game.StrategyStepsName","bold":true}
scoreboard players set @a[tag=ingame] 48score 0
scoreboard objectives setdisplay sidebar 35display
function games:35/display

scoreboard players reset countdown= 35scores

# Create scoreboards
scoreboard objectives add 35step dummy
scoreboard players set @a[tag=ingame] 35step 0
scoreboard objectives add 35num dummy

# Removes all tags

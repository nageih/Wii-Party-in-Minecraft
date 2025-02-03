scoreboard objectives add 36scores dummy
scoreboard objectives add 36order dummy
scoreboard objectives add 36furthest dummy

# Sets the ingame score to 1, indicating that the game is starting
scoreboard players set ingame= 36scores 1

# Sets the global minigame score to the current minigame number, this is to ensure that the tick function is being run
scoreboard players set global minigame 36

scoreboard players set @a[tag=ingame] 36furthest 0


# These tellraws explain the game, these will only display if you are playing with tutorials off.
tellraw @a[team=blue] {"nbt":"colors.blue","storage":"minecraft:config","interpret":true,"extra":[{"translate":"game.FaceFlip"}],"source":"storage","type":"nbt"}
tellraw @a[team=red] {"nbt":"colors.red","storage":"minecraft:config","interpret":true,"extra":[{"translate":"game.FaceFlip"}],"source":"storage","type":"nbt"}
tellraw @a[team=green] {"nbt":"colors.green","storage":"minecraft:config","interpret":true,"extra":[{"translate":"game.FaceFlip"}],"source":"storage","type":"nbt"}
tellraw @a[team=orange] {"nbt":"colors.orange","storage":"minecraft:config","interpret":true,"extra":[{"translate":"game.FaceFlip"}],"source":"storage","type":"nbt"}
tellraw @a[tag=playing,tag=!ingame] {"nbt":"colors.spectator","storage":"minecraft:config","interpret":true,"extra":[{"translate":"game.FaceFlip"}],"source":"storage","type":"nbt"}

# Teleport all players to the minigame
tp @a[tag=playing] 35997 32 35999
spreadplayers 35997 35999 10 10 under 31 true @a[tag=playing]
execute as @a[tag=playing] at @s run tp @s ~ ~ ~ -90 90

# Ding sound effect
execute as @a[tag=playing] at @s run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 3 0.7

# Give all players the weakness effect to make sure they can't punch other players to throw them off, this effect is cleared when it is their turn to shoot however
effect give @a[tag=ingame] minecraft:weakness infinite 255 true

# Schedules the next segment, which will display a title
schedule function games:36/begin 5s

# Removes all players position tags, just for debugging purposes
function general:reset_tags

# Updates the scoreboard
scoreboard objectives add 36display dummy {"translate":"game.FaceFlipName","bold":true}
scoreboard objectives setdisplay sidebar 36display
function games:36/display


# Effects
effect give @a[tag=playing] night_vision infinite 1 true
effect give @a[tag=ingame] invisibility infinite 1 true

scoreboard players set max= 36order 0
scoreboard players set cur= 36order 0
execute as @a[tag=ingame,sort=random] run function games:36/set_order


function games:36/setup_cards
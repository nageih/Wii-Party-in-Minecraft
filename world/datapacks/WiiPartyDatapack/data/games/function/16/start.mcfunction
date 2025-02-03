

scoreboard objectives add 16scores dummy

# Sets the ingame score to 1, indicating that the game is starting
scoreboard players set ingame= 16scores 1

# Sets the global minigame score to the current minigame number, this is to ensure that the tick function is being run
scoreboard players set global minigame 16


# These tellraws explain the game, these will only display if you are playing with tutorials off.
tellraw @a[team=blue] {"nbt":"colors.blue","storage":"minecraft:config","interpret":true,"extra":[{"translate":"game.TropicalPunch"}],"source":"storage","type":"nbt"}
tellraw @a[team=red] {"nbt":"colors.red","storage":"minecraft:config","interpret":true,"extra":[{"translate":"game.TropicalPunch"}],"source":"storage","type":"nbt"}
tellraw @a[team=green] {"nbt":"colors.green","storage":"minecraft:config","interpret":true,"extra":[{"translate":"game.TropicalPunch"}],"source":"storage","type":"nbt"}
tellraw @a[team=orange] {"nbt":"colors.orange","storage":"minecraft:config","interpret":true,"extra":[{"translate":"game.TropicalPunch"}],"source":"storage","type":"nbt"}
tellraw @a[tag=playing,tag=!ingame] {"nbt":"colors.spectator","storage":"minecraft:config","interpret":true,"extra":[{"translate":"game.TropicalPunch"}],"source":"storage","type":"nbt"}

# Teleport all players to the minigame
tp @a[tag=ingame,team=blue] 16900 18 16992 -90 0
tp @a[tag=ingame,team=red] 16906 18 16986 0 0 
tp @a[tag=ingame,team=green] 16912 18 16992 90 0
tp @a[tag=ingame,team=orange] 16906 18 16998 180 0

spreadplayers 16906.0 16992.0 5 10 true @a[tag=playing,tag=!ingame]

# Ding sound effect
execute as @a[tag=playing] at @s run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 3 0.7

# Give all players the weakness effect to make sure they can't punch other players to throw them off, this effect is cleared when it is their turn to shoot however
effect give @a[tag=ingame] minecraft:weakness infinite 255 true

# Schedules the next segment, which will display a title
schedule function games:16/start_title 5s

# Removes all players position tags, just for debugging purposes
function general:reset_tags

# Updates the scoreboard
scoreboard objectives add 16display dummy {"translate":"game.TropicalPunchName","bold":true}
scoreboard players set @a[tag=ingame] 48score 0
scoreboard objectives setdisplay sidebar 16display
function games:16/display


# Disable movement
execute as @a[tag=ingame] run attribute @s minecraft:generic.movement_speed base set 0
execute as @a[tag=ingame] run attribute @s minecraft:generic.jump_strength base set 0

# Create scoreboards
scoreboard objectives add 16arrow dummy
scoreboard objectives add 16charge dummy

# Removes all tags
tag @a remove 16charging
tag @a remove 16charged
tag @a remove 16dead
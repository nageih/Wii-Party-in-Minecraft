#   Author        =   @ JevinLevin
#   Description   =   Starts the game
#   Called By     =   

# Sets the ingame score to 1, indicating that the game is starting
scoreboard players set ingame= 5scores 1

# Sets the global minigame score to the current minigame number, this is to ensure that the tick function is being run
scoreboard players set global minigame 5

# Resets scores
scoreboard players set typeNo= 5scores 0
scoreboard players set patternNo= 5scores 0
scoreboard players set colorNo= 5scores 0

# These tellraws explain the game, these will only display if you are playing with tutorials off.
tellraw @a[team=blue] {"nbt":"colors.blue","storage":"minecraft:config","interpret":true,"extra":[{"translate":"game.LuckyLaunch"}],"source":"storage","type":"nbt"}
tellraw @a[team=red] {"nbt":"colors.red","storage":"minecraft:config","interpret":true,"extra":[{"translate":"game.LuckyLaunch"}],"source":"storage","type":"nbt"}
tellraw @a[team=green] {"nbt":"colors.green","storage":"minecraft:config","interpret":true,"extra":[{"translate":"game.LuckyLaunch"}],"source":"storage","type":"nbt"}
tellraw @a[team=orange] {"nbt":"colors.orange","storage":"minecraft:config","interpret":true,"extra":[{"translate":"game.LuckyLaunch"}],"source":"storage","type":"nbt"}
tellraw @a[tag=playing,tag=!ingame] {"nbt":"colors.spectator","storage":"minecraft:config","interpret":true,"extra":[{"translate":"game.LuckyLaunch"}],"source":"storage","type":"nbt"}

# Teleport all players to the correct position
    # Players
tp @a[tag=ingame] 5002 16.5 5020 180 25
    # Spectators
spreadplayers 5002 5020 10 10 under 13 true @a[tag=playing,tag=!ingame]
execute as @a[tag=playing,tag=!ingame] at @s run tp @s ~ ~2 ~

# Ding sound effect
execute as @a[tag=playing] at @s run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 3 0.7

# Give all players the weakness effect to make sure they can't punch other players to throw them off, this effect is cleared when it is their turn to shoot however
effect give @a[tag=ingame] minecraft:weakness infinite 255 true

# Removes all players position tags, just for debugging purposes
function general:reset_tags

# Schedules the next segment, which will display a title
schedule function games:5/begin 2s

# Updates the scoreboard
#scoreboard objectives setdisplay sidebar 5display
function games:5/set_display

# Spawns the firework models
schedule function games:5/spawn_fireworks 10t

team modify blue seeFriendlyInvisibles false
team modify red seeFriendlyInvisibles false
team modify green seeFriendlyInvisibles false
team modify orange seeFriendlyInvisibles false

execute as @a[tag=ingame] run function games:5/give_id

scoreboard players reset @a 5scores

time set midnight
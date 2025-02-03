#   Author        =   @ JevinLevin
#   Description   =   Starts the game
#   Called By     =   

# Sets the ingame score to 1, indicating that the game is starting
scoreboard players set ingame 3scores 1

# Sets the global minigame score to the current minigame number, this is to ensure that the tick function is being run
scoreboard players set global minigame 3

scoreboard players set rad= specOptions 15
scoreboard players set x= specOptions 3000
scoreboard players set z= specOptions 2993
scoreboard players set miny= specOptions 13
scoreboard players set maxy= specOptions 45
scoreboard players set enabled= specOptions 1

# These tellraws explain the game, these will only display if you are playing with tutorials off.
tellraw @a[team=blue] {"nbt":"colors.blue","storage":"minecraft:config","interpret":true,"extra":[{"translate":"game.BarrelDaredevil"}],"source":"storage","type":"nbt"}
tellraw @a[team=red] {"nbt":"colors.red","storage":"minecraft:config","interpret":true,"extra":[{"translate":"game.BarrelDaredevil"}],"source":"storage","type":"nbt"}
tellraw @a[team=green] {"nbt":"colors.green","storage":"minecraft:config","interpret":true,"extra":[{"translate":"game.BarrelDaredevil"}],"source":"storage","type":"nbt"}
tellraw @a[team=orange] {"nbt":"colors.orange","storage":"minecraft:config","interpret":true,"extra":[{"translate":"game.BarrelDaredevil"}],"source":"storage","type":"nbt"}
tellraw @a[tag=playing,tag=!ingame] {"nbt":"colors.spectator","storage":"minecraft:config","interpret":true,"extra":[{"translate":"game.BarrelDaredevil"}],"source":"storage","type":"nbt"}

# Teleport all players to the correct position
    # Players
tp @a[team=blue] 3006 13.5 2982
tp @a[team=red] 3002 13.5 2982
tp @a[team=green] 2998 13.5 2982
tp @a[team=orange] 2994 13.5 2982
    # Spectators
spreadplayers 3000 2993 10 10 under 13 true @a[tag=playing,tag=!ingame]
execute as @a[tag=playing,tag=!ingame] at @s run tp @s ~ ~2 ~

# Ding sound effect
execute as @a[tag=playing] at @s run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 3 0.7

# Give all players the weakness effect to make sure they can't punch other players to throw them off, this effect is cleared when it is their turn to shoot however
effect give @a[tag=ingame] minecraft:weakness infinite 255 true

# Removes all players position tags, just for debugging purposes
function general:reset_tags

schedule function games:3/setup 1s

# Schedules the next segment, which will display a title
schedule function games:3/starttitle 5s

# Updates the scoreboard
scoreboard objectives setdisplay sidebar 3display
function games:3/set_display

team add 4.displaySpace
team modify 4.displaySpace prefix {"text":"\uF833\uF831","font":"minecraft:space"}

# Spawn fake players
execute as @a[tag=ingame,team=blue,limit=1] positioned 3006 13.5 3003 run function games:3/summon_player
execute as @a[tag=ingame,team=red,limit=1] positioned 3002 13.5 3003 run function games:3/summon_player
execute as @a[tag=ingame,team=green,limit=1] positioned 2998 13.5 3003 run function games:3/summon_player
execute as @a[tag=ingame,team=orange,limit=1] positioned 2994 13.5 3003 run function games:3/summon_player
schedule function games:3/set_heads 3t

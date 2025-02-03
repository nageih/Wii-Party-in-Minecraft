#   Author        =   @ JevinLevin
#   Description   =   Starts the minigame
#   Called By     =   

# Sets the ingame score to 1, indicating that the game is starting
scoreboard players set ingame= 4scores 1

# Sets the global minigame score to the current minigame number, this is to ensure that the tick function is being run
scoreboard players set global minigame 4

# These tellraws explain the game, these will only display if you are playing with tutorials off.
tellraw @a[team=blue] {"nbt":"colors.blue","storage":"minecraft:config","interpret":true,"extra":[{"translate":"game.BackAttack"}],"source":"storage","type":"nbt"}
tellraw @a[team=red] {"nbt":"colors.red","storage":"minecraft:config","interpret":true,"extra":[{"translate":"game.BackAttack"}],"source":"storage","type":"nbt"}
tellraw @a[team=green] {"nbt":"colors.green","storage":"minecraft:config","interpret":true,"extra":[{"translate":"game.BackAttack"}],"source":"storage","type":"nbt"}
tellraw @a[team=orange] {"nbt":"colors.orange","storage":"minecraft:config","interpret":true,"extra":[{"translate":"game.BackAttack"}],"source":"storage","type":"nbt"}
tellraw @a[tag=playing,tag=!ingame] {"nbt":"colors.spectator","storage":"minecraft:config","interpret":true,"extra":[{"translate":"game.BackAttack"}],"source":"storage","type":"nbt"}

# Teleport all players to the correct position
    # Players
tp @a[tag=ingame,team=blue] 3987 21 4001 -90 ~
tp @a[tag=ingame,team=red] 4002 21 4001 0 ~
tp @a[tag=ingame,team=green] 4002 21 4009 90 ~
tp @a[tag=ingame,team=orange] 3987 21 4009 180 ~
    # Spectators
spreadplayers 3995.0 4005 10 10 under 22 true @a[tag=playing,tag=!ingame]
execute as @a[tag=playing,tag=!ingame] at @s run tp @s ~ ~2 ~

# Sets all the players 4direction score so that they all start off moving in opposite directions
    # Blue
scoreboard players set @a[team=blue] 4direction 1
    # Red
scoreboard players set @a[team=red] 4direction 2
    # Green
scoreboard players set @a[team=green] 4direction 3
    # Orange
scoreboard players set @a[team=orange] 4direction 4

# Ding sound effect
execute as @a[tag=playing] at @s run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 3 0.7

# Give all players the weakness effect to make sure they can't punch other players to throw them off, this effect is cleared when it is their turn to shoot however
effect give @a[tag=ingame] minecraft:weakness infinite 255 true

# Removes all players position tags, just for debugging purposes
function general:reset_tags

# Updates the scoreboard
scoreboard objectives setdisplay sidebar 4display
function games:4/display

# Gives every player a cart, and a unique i

# Sets the time= score to 0. Used to track how long the games been going on for so it needs to be reset at the start of the game
scoreboard players set time= 4scores 0
scoreboard players set @a[tag=ingame] 4powerup -1

# Spawns the rails
function games:4/set_track

schedule function games:4/starttitle 5s
#schedule function games:4/starttitle 10t

function games:4/spawn_carts

# Gives the player an invisible carrot on a stick in the offhand
item replace entity @a[tag=ingame] weapon.offhand with minecraft:carrot_on_a_stick[minecraft:custom_model_data=1,minecraft:custom_name='{"text":"","type":"text"}',minecraft:custom_data={4shoot:1b}]
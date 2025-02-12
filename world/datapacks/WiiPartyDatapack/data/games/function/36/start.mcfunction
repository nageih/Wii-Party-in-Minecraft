scoreboard objectives add 36scores dummy
scoreboard objectives add 36order dummy
scoreboard objectives add 36furthest dummy

# Sets the ingame score to 1, indicating that the game is starting
scoreboard players set ingame= 36scores 1

# Sets the global minigame score to the current minigame number, this is to ensure that the tick function is being run
scoreboard players set global minigame 36

scoreboard players set @a[tag=ingame] 36furthest 0


# These tellraws explain the game
tellraw @a[tag=playing] ""
tellraw @a[team=blue] [{"translate":"game.FaceFlipName","color":"#0088ff","bold":true,"underlined": true}]
tellraw @a[team=red] [{"translate":"game.FaceFlipName","color":"red","bold":true,"underlined": true}]
tellraw @a[team=green] [{"translate":"game.FaceFlipName","color":"green","bold":true,"underlined": true}]
tellraw @a[team=orange] [{"translate":"game.FaceFlipName","color":"gold","bold":true,"underlined": true}]
tellraw @a[tag=playing,tag=!ingame] [{"translate":"game.FaceFlipName","color":"light_purple","bold":true,"underlined": true}]
tellraw @a[tag=playing] ""
tellraw @a[tag=playing] [{"translate":"game.HowToPlay","color":"gray","bold":true}]
tellraw @a[tag=playing] [{"translate":"game.FaceFlip.How.1","color":"gray","with":[{"text":"-"}]}]
tellraw @a[tag=playing] [{"translate":"game.FaceFlip.How.2","color":"gray","with":[{"text":"-"}]}]
tellraw @a[tag=playing] [{"translate":"game.FaceFlip.How.3","color":"gray","with":[{"text":"-"}]}]
tellraw @a[tag=playing] ""

# Teleport all players to the minigame
tp @a[tag=playing] 35997 32 35999
spreadplayers 35997 35999 10 10 under 31 true @a[tag=playing]
execute as @a[tag=playing] at @s run tp @s ~ ~ ~ -90 90

# Ding sound effect
execute as @a[tag=playing] at @s run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 3 0.7

# Give all players the weakness effect to make sure they can't punch other players to throw them off, this effect is cleared when it is their turn to shoot however
effect give @a[tag=ingame] minecraft:weakness infinite 255 true

# Schedules the next segment, which will display a title
schedule function games:36/begin 6s

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

schedule function games:36/play_intro 33t
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

# These tellraws explain the game
tellraw @a[tag=playing] ""
tellraw @a[team=blue] [{"translate":"game.LuckyLaunchName","color":"#0088ff","bold":true,"underlined": true}]
tellraw @a[team=red] [{"translate":"game.LuckyLaunchName","color":"red","bold":true,"underlined": true}]
tellraw @a[team=green] [{"translate":"game.LuckyLaunchName","color":"green","bold":true,"underlined": true}]
tellraw @a[team=orange] [{"translate":"game.LuckyLaunchName","color":"gold","bold":true,"underlined": true}]
tellraw @a[tag=playing,tag=!ingame] [{"translate":"game.LuckyLaunchName","color":"light_purple","bold":true,"underlined": true}]
tellraw @a[tag=playing] ""
tellraw @a[tag=playing] [{"translate":"game.HowToPlay","color":"gray","bold":true}]
tellraw @a[tag=playing] [{"translate":"game.LuckyLaunch.How.1","color":"gray","with":[{"text":"-"}]}]
tellraw @a[tag=playing] [{"translate":"game.LuckyLaunch.How.2","color":"gray","with":[{"text":"-"}]}]
tellraw @a[tag=playing] [{"translate":"game.LuckyLaunch.How.3","color":"gray","with":[{"text":"-"}]}]
tellraw @a[tag=playing] ""

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

function games:5/display
# Sets the ingame score to 1, indicating that the game is starting
scoreboard players set ingame 1scores 1

# Sets the global minigame score to the current minigame number, this is to ensure that the tick function is being run
scoreboard players set global minigame 1

# Sets the level= score to 1 to indicate that the game starts at the first level
scoreboard players set level= 1scores 1

# Sets the falling= score to 1 to indicate that the players arent falling (just in case idk why this is here)
scoreboard players set falling= 1scores 0

scoreboard players set rad= specOptions 18
scoreboard players set x= specOptions 1004
scoreboard players set z= specOptions 1000
scoreboard players set miny= specOptions 98
scoreboard players set maxy= specOptions 255
scoreboard players set enabled= specOptions 1

scoreboard players reset @a 1score

# These tellraws explain the game
tellraw @a[tag=playing] ""
tellraw @a[team=blue] [{"translate":"game.DiceyDescentName","color":"#0088ff","bold":true,"underlined": true}]
tellraw @a[team=red] [{"translate":"game.DiceyDescentName","color":"red","bold":true,"underlined": true}]
tellraw @a[team=green] [{"translate":"game.DiceyDescentName","color":"green","bold":true,"underlined": true}]
tellraw @a[team=orange] [{"translate":"game.DiceyDescentName","color":"gold","bold":true,"underlined": true}]
tellraw @a[tag=playing,tag=!ingame] [{"translate":"game.DiceyDescentName","color":"light_purple","bold":true,"underlined": true}]
tellraw @a[tag=playing] ""
tellraw @a[tag=playing] [{"translate":"game.HowToPlay","color":"gray","bold":true}]
tellraw @a[tag=playing] [{"translate":"game.DiceyDescent.How.1","color":"gray","with":[{"text":"-"}]}]
tellraw @a[tag=playing] [{"translate":"game.DiceyDescent.How.2","color":"gray","with":[{"text":"-"}]}]
tellraw @a[tag=playing] [{"translate":"game.DiceyDescent.How.3","color":"gray","with":[{"text":"-"}]}]
tellraw @a[tag=playing] ""

tag @a remove dead

# Teleport all players to the minigame
tp @a[tag=playing] 1004 241 1000
spreadplayers 1004 1000 3 3 under 241 true @a[tag=playing]

# Ding sound effect
execute as @a[tag=playing] at @s run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 3 0.7

# Give all players the weakness effect to make sure they can't punch other players to throw them off, this effect is cleared when it is their turn to shoot however
effect give @a[tag=ingame] minecraft:weakness infinite 255 true

# Sets everyones 1damaged score to 0 for the sidebarw
scoreboard players set @a[tag=ingame] 1damage 0

# Schedules the next segment, which will display a title
schedule function games:1/starttitle 5s

# Removes all players position tags, just for debugging purposes
function general:reset_tags

# Updates the scoreboard
scoreboard objectives setdisplay sidebar 1display
function games:1/display

schedule function games:1/play_intro 82t
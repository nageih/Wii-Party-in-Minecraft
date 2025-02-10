#   Author        =   @ T4Bl3rUs
#   Description   =   Sets up the game
#   Called By     =   

schedule function games:24/title1 5s
scoreboard players set global minigame 24
playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 3 0.7
scoreboard players set @a[tag=ingame] 24dir -1

# These tellraws explain the game
tellraw @a[tag=playing] ""
tellraw @a[team=blue] [{"translate":"game.MazeDazeName","color":"#0088ff","bold":true,"underlined": true}]
tellraw @a[team=red] [{"translate":"game.MazeDazeName","color":"red","bold":true,"underlined": true}]
tellraw @a[team=green] [{"translate":"game.MazeDazeName","color":"green","bold":true,"underlined": true}]
tellraw @a[team=orange] [{"translate":"game.MazeDazeName","color":"gold","bold":true,"underlined": true}]
tellraw @a[tag=playing,tag=!ingame] [{"translate":"game.MazeDazeName","color":"light_purple","bold":true,"underlined": true}]
tellraw @a[tag=playing] ""
tellraw @a[tag=playing] [{"translate":"game.HowToPlay","color":"gray","bold":true}]
tellraw @a[tag=playing] [{"translate":"game.MazeDaze.How.1","color":"gray","with":[{"text":"-"}]}]
tellraw @a[tag=playing] [{"translate":"game.MazeDaze.How.2","color":"gray","with":[{"text":"-"}]}]
tellraw @a[tag=playing] [{"translate":"game.MazeDaze.How.3","color":"gray","with":[{"text":"-"}]}]
tellraw @a[tag=playing] ""
title @a[tag=playing] times 10 20 10

#Generate the maze
scoreboard players set mazeCreated= 24scores 0

# change the coords
#tp @a[team=blue] 25005 31 25011
#tp @a[team=red] 24969 31 24975
#tp @a[team=green] 25005 31 24975
#tp @a[team=orange] 24969 31 25011

# TP Players
tp @a[team=blue] 24994.0 35 25000.0
tp @a[team=red] 24981.0 35 24987.0
tp @a[team=green] 24994.0 35 24987.0
tp @a[team=orange] 24981.0 35 25000.0

# TP Spectators
spreadplayers 24987 24993 5 20 true @a[tag=playing,tag=!ingame]
execute as @a[tag=playing,tag=!ingame] at @s run tp @s ~ 35 ~


effect give @a[tag=ingame] invisibility infinite 1 true
effect give @a[tag=ingame] minecraft:weakness infinite 255 true

scoreboard objectives add 24scores dummy
scoreboard objectives add 24dir dummy
scoreboard players set @a[tag=ingame] 24dir 0
scoreboard objectives add 24offset dummy
scoreboard players set @a[tag=ingame] 24offset 0
scoreboard objectives add 24zoom dummy
execute as @a unless score @s 24zoom matches 1.. run scoreboard players set @a 24zoom 5
scoreboard objectives add 24cur_slot dummy
scoreboard objectives add 24last_slot dummy
scoreboard objectives add 24rotate dummy
scoreboard players set @a[tag=ingame] 24rotate -1

function general:reset_tags

# Updates the scoreboard
scoreboard objectives add 24display dummy {"translate":"game.MazeDazeName","bold":true}
function games:24/display
scoreboard objectives setdisplay sidebar 24display

scoreboard objectives add 24timer dummy
scoreboard players set @a 24timer 0

scoreboard players set ingame= 24scores 1


scoreboard players set timer= 24scores 1200

# Bossbar
bossbar add 24bluetimer {"translate":"game.WalkOff.Time","color":"#0088ff","bold":true}
bossbar add 24spectimer {"translate":"game.WalkOff.Time","color":"light_purple","bold":true}
bossbar add 24redtimer {"translate":"game.WalkOff.Time","color":"red","bold":true}
bossbar add 24greentimer {"translate":"game.WalkOff.Time","color":"green","bold":true}
bossbar add 24orangetimer {"translate":"game.WalkOff.Time","color":"gold","bold":true}
bossbar set 24bluetimer color blue
bossbar set 24spectimer color pink
bossbar set 24redtimer color red
bossbar set 24greentimer color green
bossbar set 24orangetimer color yellow
bossbar set 24bluetimer max 1200
bossbar set 24spectimer max 1200
bossbar set 24redtimer max 1200
bossbar set 24greentimer max 1200
bossbar set 24orangetimer max 1200
bossbar set 24bluetimer players @a[team=blue]
bossbar set 24bluetimer visible true
bossbar set 24spectimer players @a[tag=playing,tag=!ingame]
bossbar set 24spectimer visible true
bossbar set 24redtimer players @a[team=red]
bossbar set 24redtimer visible true
bossbar set 24greentimer players @a[team=green]
bossbar set 24greentimer visible true
bossbar set 24orangetimer players @a[team=orange]
bossbar set 24orangetimer visible true
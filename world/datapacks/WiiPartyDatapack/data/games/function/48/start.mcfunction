scoreboard objectives add 48scores dummy

# Sets the ingame score to 1, indicating that the game is starting
scoreboard players set ingame= 48scores 1

# Sets the global minigame score to the current minigame number, this is to ensure that the tick function is being run
scoreboard players set global minigame 48


# These tellraws explain the game
tellraw @a[tag=playing] ""
tellraw @a[team=blue] [{"translate":"game.WalkOffName","color":"#0088ff","bold":true,"underlined": true}]
tellraw @a[team=red] [{"translate":"game.WalkOffName","color":"red","bold":true,"underlined": true}]
tellraw @a[team=green] [{"translate":"game.WalkOffName","color":"green","bold":true,"underlined": true}]
tellraw @a[team=orange] [{"translate":"game.WalkOffName","color":"gold","bold":true,"underlined": true}]
tellraw @a[tag=playing,tag=!ingame] [{"translate":"game.WalkOffName","color":"light_purple","bold":true,"underlined": true}]
tellraw @a[tag=playing] ""
tellraw @a[tag=playing] [{"translate":"game.HowToPlay","color":"gray","bold":true}]
tellraw @a[tag=playing] [{"translate":"game.WalkOff.How.1","color":"gray","with":[{"text":"-"}]}]
tellraw @a[tag=playing] [{"translate":"game.WalkOff.How.2","color":"gray","with":[{"text":"-"}]}]
tellraw @a[tag=playing] [{"translate":"game.WalkOff.How.3","color":"gray","with":[{"text":"-"}]}]
tellraw @a[tag=playing] ""

# Teleport all players to the minigame
tp @a[tag=ingame,team=blue] 48999 16 49130 0 0
tp @a[tag=ingame,team=red] 48998 16 49130 0 0
tp @a[tag=ingame,team=green] 48997 16 49130 0 0
tp @a[tag=ingame,team=orange] 48996 16 49130 0 0

spreadplayers 48998.0 49130 5 10 true @a[tag=playing,tag=!ingame]

# Ding sound effect
execute as @a[tag=playing] at @s run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 3 0.7

# Give all players the weakness effect to make sure they can't punch other players to throw them off, this effect is cleared when it is their turn to shoot however
effect give @a[tag=ingame] minecraft:weakness infinite 255 true

# Schedules the next segment, which will display a title
schedule function games:48/begin 5s

# Removes all players position tags, just for debugging purposes
function general:reset_tags

# Updates the scoreboard
scoreboard objectives add 48display dummy {"translate":"game.WalkOffName","bold":true}
scoreboard players set @a[tag=ingame] 48score 0
scoreboard objectives setdisplay sidebar 48display
function games:48/display

scoreboard objectives add 48score dummy

scoreboard objectives add 48distance dummy
scoreboard players set @a[tag=ingame] 48distance 0


# Disable movement
execute as @a[tag=ingame] run attribute @s minecraft:generic.movement_speed base set 0
execute as @a[tag=ingame] run attribute @s minecraft:generic.jump_strength base set 0

# Bossbar
bossbar add 48bluetimer {"translate":"game.WalkOff.Time","color":"#0088ff","bold":true}
bossbar add 48spectimer {"translate":"game.WalkOff.Time","color":"light_purple","bold":true}
bossbar add 48redtimer {"translate":"game.WalkOff.Time","color":"red","bold":true}
bossbar add 48greentimer {"translate":"game.WalkOff.Time","color":"green","bold":true}
bossbar add 48orangetimer {"translate":"game.WalkOff.Time","color":"gold","bold":true}
bossbar set 48bluetimer color blue
bossbar set 48spectimer color pink
bossbar set 48redtimer color red
bossbar set 48greentimer color green
bossbar set 48orangetimer color yellow
bossbar set 48bluetimer max 600
bossbar set 48spectimer max 600
bossbar set 48redtimer max 600
bossbar set 48greentimer max 600
bossbar set 48orangetimer max 600
bossbar set 48bluetimer players @a[team=blue]
bossbar set 48bluetimer visible true
bossbar set 48spectimer players @a[tag=playing,tag=!ingame]
bossbar set 48spectimer visible true
bossbar set 48redtimer players @a[team=red]
bossbar set 48redtimer visible true
bossbar set 48greentimer players @a[team=green]
bossbar set 48greentimer visible true
bossbar set 48orangetimer players @a[team=orange]
bossbar set 48orangetimer visible true

scoreboard players set timer= 48scores 600

# Set starting Z pos
scoreboard players set 0= 48scores 49132
scoreboard players set 49132 Numbers 49132

function games:48/remove_signs
function games:48/set_signs

gamerule reducedDebugInfo true

schedule function games:48/play_intro 3s
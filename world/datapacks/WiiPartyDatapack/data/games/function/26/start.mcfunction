#   Author        =   @ JevinLevin
#   Description   =   Ran at the very start of the minigame
#   Called By     =   


# Sets the ingame= score to 1, indicating that the game is starting
scoreboard players set ingame= 26scores 0

# Sets the global minigame score to the current minigame number, this is to ensure that the tick function is being run
scoreboard players set global minigame 26

# These tellraws explain the game, these will only display if you are playing with tutorials off.
#tellraw @a[tag=ingame,team=blue] {"translate":"game.<minigamename>","color":"#0088ff"}
#tellraw @a[tag=ingame,team=red] {"translate":"game.<minigamename>","color":"red"}
#tellraw @a[tag=ingame,team=green] {"translate":"game.<minigamename>","color":"green"}
#tellraw @a[tag=ingame,team=orange] {"translate":"game.<minigamename>","color":"gold"}
#tellraw @a[tag=!ingame,tag=playing] {"translate":"game.<minigamename>","color":"light_purple"}

# Teleport all players to the minigame
tp @a[tag=ingame,team=blue] 24941 19 25065 135 0
tp @a[tag=ingame,team=red] 24923 19 25065 -135 0
tp @a[tag=ingame,team=green] 24941 19 25047 45 0
tp @a[tag=ingame,team=orange] 24923 19 25047 -45 0

spreadplayers 24932 25056 10 10 under 20 true @a[tag=playing,tag=!ingame]

# Set spectator limits
scoreboard players set rad= specOptions 25
scoreboard players set x= specOptions 24932
scoreboard players set z= specOptions 25056
scoreboard players set miny= specOptions 14
scoreboard players set maxy= specOptions 50
scoreboard players set enabled= specOptions 1

# Ding sound effect
execute as @a[tag=playing] at @s run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 3 0.7

# Removes all players position tags, just for debugging purposes
function general:reset_tags

# Schedules the next segment, which will display a title
#schedule function games:26/start_title 1s

# Spawns AECs above each hole
schedule function games:26/set_holes 2t

# Sets up the bossbars
    # Sets it to be full
bossbar set minecraft:26blue value 600
bossbar set minecraft:26red value 600
bossbar set minecraft:26green value 600
bossbar set minecraft:26orange value 600
    # Lets all players see it
bossbar set minecraft:26blue players @a[team=blue]
bossbar set minecraft:26red players @a[team=red]
bossbar set minecraft:26green players @a[team=green]
bossbar set minecraft:26orange players @a[team=orange]

# Sets the timer to the max value
scoreboard players set timer= 26scores 600

# Sets players points to 0
scoreboard players set @a[tag=ingame] 26points 0

# Sets the players cooldowns to 0 so that the game recognises they arent on cooldown
scoreboard players set @a[tag=ingame] 26hitCooldown 0

# Changes team collision rules to pushOwnTeam, because for some fucking reason that lets them not get pushed by slimes but other teams do? (shouldnt it be pushOtherTeam then? idfk why it needs to be this)
team modify blue collisionRule pushOwnTeam
team modify red collisionRule pushOwnTeam
team modify green collisionRule pushOwnTeam
team modify orange collisionRule pushOwnTeam

# Gives all player a unique ID
execute as @a[tag=ingame,sort=random] run function general:give_id

# Resets everyones damage taken score since they can take damage between the minigame, triggering the knocked function when this game starts
scoreboard players reset @a 26hit

# Gives all players saturation so they dont take hunger
effect give @a[tag=ingame] minecraft:saturation infinite 255 true

# Spawns stairs for each hole
schedule function games:26/set_stairs 2t

# Spawns the starting lecterns
# data modify storage minecraft:tutorials title set from storage minecraft:tutorials game.26.title
# data modify storage minecraft:tutorials desc set from storage minecraft:tutorials game.26.desc
# data modify storage minecraft:tutorials temp set from storage minecraft:tutorials game.26.video
# data modify storage minecraft:tutorials temp2 set from storage minecraft:tutorials game.26.video
# schedule function games:26/set_lecterns 2t
# function general:tutorial/reset

# title @a[tag=ingame] times 0 100 0

schedule function games:26/start_play 1t

# Makes the scoreboard visible and updates it
scoreboard objectives setdisplay sidebar 26display
function games:26/display

# Makes bossbar visible
bossbar set minecraft:26blue visible true
bossbar set minecraft:26red visible true
bossbar set minecraft:26green visible true
bossbar set minecraft:26orange visible true
# Sets the ingame score to 1, indicating that the game is starting
scoreboard players set ingame= 10scores 1

# Sets the global minigame score to the current minigame number, this is to ensure that the tick function is being run
scoreboard players set global minigame 10


# These tellraws explain the game
tellraw @a[tag=playing] ""
tellraw @a[team=blue] [{"translate":"game.PopgunPosseName","color":"#0088ff","bold":true,"underlined": true}]
tellraw @a[team=red] [{"translate":"game.PopgunPosseName","color":"red","bold":true,"underlined": true}]
tellraw @a[team=green] [{"translate":"game.PopgunPosseName","color":"green","bold":true,"underlined": true}]
tellraw @a[team=orange] [{"translate":"game.PopgunPosseName","color":"gold","bold":true,"underlined": true}]
tellraw @a[tag=playing,tag=!ingame] [{"translate":"game.PopgunPosseName","color":"light_purple","bold":true,"underlined": true}]
tellraw @a[tag=playing] ""
tellraw @a[tag=playing] [{"translate":"game.HowToPlay","color":"gray","bold":true}]
tellraw @a[tag=playing] [{"translate":"game.PopgunPosse.How.1","color":"gray","with":[{"text":"-"}]}]
tellraw @a[tag=playing] [{"translate":"game.PopgunPosse.How.2","color":"gray","with":[{"text":"-"}]}]
tellraw @a[tag=playing] [{"translate":"game.PopgunPosse.How.3","color":"gray","with":[{"text":"-"}]}]
tellraw @a[tag=playing] ""

# Teleport all players to the minigame
tp @a[tag=ingame,team=blue] 10986 13 10988 -90 0
tp @a[tag=ingame,team=red] 10986 13 10990 -90 0
tp @a[tag=ingame,team=green] 10986 13 10992 -90 0
tp @a[tag=ingame,team=orange] 10986 13 10994 -90 0
schedule function games:10/spawn_cans 5t

spreadplayers 10986 10990 10 10 under 14 true @a[tag=playing,tag=!ingame]

# Ding sound effect
execute as @a[tag=playing] at @s run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 3 0.7

# Give all players the weakness effect to make sure they can't punch other players to throw them off, this effect is cleared when it is their turn to shoot however
effect give @a[tag=ingame] minecraft:weakness infinite 255 true

# Schedules the next segment, which will display a title
schedule function games:10/starttitle 5s

# Removes all players position tags, just for debugging purposes
function general:reset_tags

# Updates the scoreboard
scoreboard objectives add 10display dummy {"translate":"game.PopgunPosseName","bold":true}
scoreboard players set @a[tag=ingame] 10score 0
scoreboard objectives setdisplay sidebar 10display
function games:10/display

bossbar set 10bluetimer players @a[team=blue]
bossbar set 10bluetimer visible true
bossbar set 10redtimer players @a[team=red]
bossbar set 10redtimer visible true
bossbar set 10greentimer players @a[team=green]
bossbar set 10greentimer visible true
bossbar set 10orangetimer players @a[team=orange]
bossbar set 10orangetimer visible true

scoreboard players set global minigame 10
item replace entity @a[tag=ingame] weapon.offhand with carrot_on_a_stick[unbreakable={},custom_model_data=1,custom_data={10gun:1b},hide_tooltip={},hide_additional_tooltip={}] 1


scoreboard players set timer= 10scores 600
#scoreboard players set timer= 10scores 6000000

# Spin scoreboards
scoreboard objectives add 10axisx dummy
scoreboard objectives add 10axisy dummy
scoreboard objectives add 10axisz dummy
scoreboard objectives add 10quatw dummy
scoreboard objectives add 10quatx dummy
scoreboard objectives add 10quaty dummy
scoreboard objectives add 10quatz dummy
scoreboard objectives add 10angle dummy
scoreboard objectives add 10spintimer dummy
scoreboard objectives add 10score dummy
scoreboard objectives add 10lifetime dummy
scoreboard objectives add 10airdelay dummy
scoreboard objectives add 10cooldown dummy
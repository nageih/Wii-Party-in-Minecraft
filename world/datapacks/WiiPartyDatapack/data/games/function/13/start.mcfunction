scoreboard players set ingame 13scores 1
schedule function games:13/title1 6s
scoreboard players set global minigame 13


# These tellraws explain the game
tellraw @a[tag=playing] ""
tellraw @a[team=blue] [{"translate":"game.FlagFracasName","color":"#0088ff","bold":true,"underlined": true}]
tellraw @a[team=red] [{"translate":"game.FlagFracasName","color":"red","bold":true,"underlined": true}]
tellraw @a[team=green] [{"translate":"game.FlagFracasName","color":"green","bold":true,"underlined": true}]
tellraw @a[team=orange] [{"translate":"game.FlagFracasName","color":"gold","bold":true,"underlined": true}]
tellraw @a[tag=playing,tag=!ingame] [{"translate":"game.FlagFracasName","color":"light_purple","bold":true,"underlined": true}]
tellraw @a[tag=playing] ""
tellraw @a[tag=playing] [{"translate":"game.HowToPlay","color":"gray","bold":true}]
tellraw @a[tag=playing] [{"translate":"game.FlagFracas.How.1","color":"gray","with":[{"text":"-"}]}]
tellraw @a[tag=playing] [{"translate":"game.FlagFracas.How.2","color":"gray","with":[{"text":"-"}]}]
tellraw @a[tag=playing] [{"translate":"game.FlagFracas.How.3","color":"gray","with":[{"text":"-"}]}]
tellraw @a[tag=playing] ""

execute as @a[tag=playing] at @s run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 3 0.7

scoreboard players set start2 13scores 0

tag @a remove dead

tp @a[team=blue] 13970.0 13 13981 180 0
tp @a[team=red] 13971.0 13 13981 180 0
tp @a[team=green] 13972.0 13 13981 180 0
tp @a[team=orange] 13973.0 13 13981 180 0

spreadplayers 13971.0 13981 10 10 under 14 true @a[tag=playing,tag=!ingame]

summon marker 13971 13 14007 {Tags:["flag"]}

# Give all players the weakness effect to make sure they can't punch other players to throw them off, this effect is cleared when it is their turn to shoot however
effect give @a[tag=ingame] minecraft:weakness infinite 255 true

# Removes all players position tags, just for debugging purposes
function general:reset_tags

# Updates the scoreboard
scoreboard objectives setdisplay sidebar 13display
function games:13/display

gamemode adventure @a[tag=ingame]

summon text_display 13971 14.0 13976 {shadow:1b,Tags:["13info"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[2.5f,2.5f,2.5f]},text:'{"color":"light_purple","translate":"game.FlagFracas.FaceDirection"}',background:0}
scoreboard players set ingame 13scores 1
schedule function games:13/title1 6s
scoreboard players set global minigame 13


tellraw @a[team=blue] {"nbt":"colors.blue","storage":"minecraft:config","interpret":true,"extra":[{"translate":"game.FlagFracas"}],"source":"storage","type":"nbt"}
tellraw @a[team=red] {"nbt":"colors.red","storage":"minecraft:config","interpret":true,"extra":[{"translate":"game.FlagFracas"}],"source":"storage","type":"nbt"}
tellraw @a[team=green] {"nbt":"colors.green","storage":"minecraft:config","interpret":true,"extra":[{"translate":"game.FlagFracas"}],"source":"storage","type":"nbt"}
tellraw @a[team=orange] {"nbt":"colors.orange","storage":"minecraft:config","interpret":true,"extra":[{"translate":"game.FlagFracas"}],"source":"storage","type":"nbt"}
tellraw @a[tag=playing,tag=!ingame] {"nbt":"colors.spectator","storage":"minecraft:config","interpret":true,"extra":[{"translate":"game.FlagFracas"}],"source":"storage","type":"nbt"}

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
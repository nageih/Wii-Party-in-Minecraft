scoreboard objectives add 28scores dummy

# Sets the ingame score to 1, indicating that the game is starting
scoreboard players set ingame= 28scores 1

# Sets the global minigame score to the current minigame number, this is to ensure that the tick function is being run
scoreboard players set global minigame 28


# These tellraws explain the game, these will only display if you are playing with tutorials off.
tellraw @a[team=blue] {"nbt":"colors.blue","storage":"minecraft:config","interpret":true,"extra":[{"translate":"game.StopWatchers"}],"source":"storage","type":"nbt"}
tellraw @a[team=red] {"nbt":"colors.red","storage":"minecraft:config","interpret":true,"extra":[{"translate":"game.StopWatchers"}],"source":"storage","type":"nbt"}
tellraw @a[team=green] {"nbt":"colors.green","storage":"minecraft:config","interpret":true,"extra":[{"translate":"game.StopWatchers"}],"source":"storage","type":"nbt"}
tellraw @a[team=orange] {"nbt":"colors.orange","storage":"minecraft:config","interpret":true,"extra":[{"translate":"game.StopWatchers"}],"source":"storage","type":"nbt"}
tellraw @a[tag=playing,tag=!ingame] {"nbt":"colors.spectator","storage":"minecraft:config","interpret":true,"extra":[{"translate":"game.StopWatchers"}],"source":"storage","type":"nbt"}

# Teleport all players to the minigame
tp @a[tag=ingame,team=blue] 26992.93 13.00 27011.06 -177.08 7.67
tp @a[tag=ingame,team=red] 26992.93 13.00 27011.06 -177.08 7.67
tp @a[tag=ingame,team=green] 26992.93 13.00 27011.06 -177.08 7.67
tp @a[tag=ingame,team=orange] 26992.93 13.00 27011.06 -177.08 7.67

spreadplayers 26992 27011 10 10 under 13 true @a[tag=playing,tag=!ingame]

# Ding sound effect
execute as @a[tag=playing] at @s run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 3 0.7

# Give all players the weakness effect to make sure they can't punch other players to throw them off, this effect is cleared when it is their turn to shoot however
effect give @a[tag=ingame] minecraft:weakness infinite 255 true

# Schedules the next segment, which will display a title
schedule function games:28/ready 3s

# Removes all players position tags, just for debugging purposes
function general:reset_tags

# Updates the scoreboard
scoreboard objectives add 28display dummy {"translate":"game.StopWatchersName","bold":true}
scoreboard players set @a[tag=ingame] 28score 0
scoreboard objectives setdisplay sidebar 28display
function games:28/display

scoreboard objectives add 28score dummy
scoreboard objectives add 28scores dummy

# Floor target to nearest milisecond
scoreboard players set timer= 28scores 0
execute store result storage game28:data val.val double 1 run random value 100..200
function games:28/floor with storage game28:data val
scoreboard players operation target= 28scores = temp= 28scores

# Set max value to 10 secs after target
scoreboard players operation max= 28scores = target= 28scores
scoreboard players add max= 28scores 200

execute if entity @a[tag=ingame,team=blue] run summon text_display 26993.0 14.5 27002.9 {Tags:["28timer","blue"],shadow:0b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[3f,3f,3f]},text:'{"bold":true,"color":"#FFD000","text":"00.0"}',background:16777216}
execute if entity @a[tag=ingame,team=red] run summon text_display 26998.0 14.5 27002.9 {Tags:["28timer","red"],shadow:0b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[3f,3f,3f]},text:'{"bold":true,"color":"#FFD000","text":"00.0"}',background:16777216}
execute if entity @a[tag=ingame,team=green] run summon text_display 27003.0 14.5 27002.9 {Tags:["28timer","green"],shadow:0b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[3f,3f,3f]},text:'{"bold":true,"color":"#FFD000","text":"00.0"}',background:16777216}
execute if entity @a[tag=ingame,team=orange] run summon text_display 27008.0 14.5 27002.9 {Tags:["28timer","orange"],shadow:0b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[3f,3f,3f]},text:'{"bold":true,"color":"#FFD000","text":"00.0"}',background:16777216}


summon text_display 27000 20.5 26995 {Tags:["28main"],shadow:0b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[12.5f,12.5f,12.5f]},text:'{"bold":true,"color":"#FFD000","text":"00.0"}',background:16777216}


# Summon display entity for players to ride
execute if entity @a[tag=ingame,team=blue] run summon magma_cube 26992 16 27012 {Tags:["28display","28bluedisplay"],NoAI:1b,Silent:1b,Rotation:[180,0],Size:0}
execute if entity @a[tag=ingame,team=red] run summon magma_cube 26997 16 27012 {Tags:["28display","28reddisplay"],NoAI:1b,Silent:1b,Rotation:[180,0],Size:0}
execute if entity @a[tag=ingame,team=green] run summon magma_cube 27002 16 27012 {Tags:["28display","28greendisplay"],NoAI:1b,Silent:1b,Rotation:[180,0],Size:0}
execute if entity @a[tag=ingame,team=orange] run summon magma_cube 27007 16 27012 {Tags:["28display","28orangedisplay"],NoAI:1b,Silent:1b,Rotation:[180,0],Size:0}

# Spawn fake players
execute as @a[tag=ingame,team=blue,limit=1] positioned 26993.0 15 27001 run function games:28/summon_player
execute as @a[tag=ingame,team=red,limit=1] positioned 26998.0 15 27001 run function games:28/summon_player
execute as @a[tag=ingame,team=green,limit=1] positioned 27003.0 15 27001 run function games:28/summon_player
execute as @a[tag=ingame,team=orange,limit=1] positioned 27008.0 15 27001 run function games:28/summon_player
schedule function games:28/set_heads 3t

effect give @a[tag=ingame] invisibility infinite 1 true
effect give @a[tag=playing] night_vision infinite 1 true
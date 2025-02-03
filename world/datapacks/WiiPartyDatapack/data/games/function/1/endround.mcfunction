# Runs the function to close the platform depending on the level they are on
execute if score level= 1scores matches 1 run function games:1/close1
execute if score level= 1scores matches 2 run function games:1/close2
execute if score level= 1scores matches 3 run function games:1/close3

# Sets the falling= score to 0, this score is used for the tick function to know when players are falling. Gets set to 0 because players should be on the ground at this point
scoreboard players set falling= 1scores 0

# Kills the area effect clouds at the last level that was just used as they arent needed anymore
execute as @e[type=minecraft:area_effect_cloud,tag=cloud] if score @s 1level = level= 1scores run kill @s

# Increments the level= score by 1 which shows that the players are at the next platform
scoreboard players add level= 1scores 1

# Increases the 1score for all players who havent taken damage that round, or arent already dead by 1
scoreboard players add @a[tag=ingame,tag=!1beenDamaged,tag=!dead] 1score 1

# Removes the 1beenDamaged tag from all players collided with a cloud the last round
tag @a remove 1beenDamaged

# Stores the value of how many players are still alive in the alive= score, used to check if the game needs to end early because all the players are dead
execute store result score alive= 1scores if entity @a[tag=ingame,tag=!dead]

# Displays a blank title so that the subtitles can be displayed
execute if score level= 1scores matches 1..3 unless score alive= 1scores matches 0 run title @a[tag=ingame] title ""

# Sets all players title time back to the default
title @a[tag=playing] times 20 60 20

# Displays 'Ready' as a subtitle with the colour depending on the team
execute if score level= 1scores matches 1..3 unless score alive= 1scores matches 0 run title @a[team=blue] subtitle {"nbt":"colors.blue","storage":"minecraft:config","interpret":true,"extra":[{"translate":"generic.Ready","bold":true}],"source":"storage","type":"nbt"}
execute if score level= 1scores matches 1..3 unless score alive= 1scores matches 0 run title @a[team=red] subtitle {"nbt":"colors.red","storage":"minecraft:config","interpret":true,"extra":[{"translate":"generic.Ready","bold":true}],"source":"storage","type":"nbt"}
execute if score level= 1scores matches 1..3 unless score alive= 1scores matches 0 run title @a[team=green] subtitle {"nbt":"colors.green","storage":"minecraft:config","interpret":true,"extra":[{"translate":"generic.Ready","bold":true}],"source":"storage","type":"nbt"}
execute if score level= 1scores matches 1..3 unless score alive= 1scores matches 0 run title @a[team=orange] subtitle {"nbt":"colors.orange","storage":"minecraft:config","interpret":true,"extra":[{"translate":"generic.Ready","bold":true}],"source":"storage","type":"nbt"}
execute if score level= 1scores matches 1..3 unless score alive= 1scores matches 0 run title @a[tag=playing,tag=!ingame] subtitle {"nbt":"colors.spectator","storage":"minecraft:config","interpret":true,"extra":[{"translate":"generic.Ready","bold":true}],"source":"storage","type":"nbt"}

# Plays countdown sound
execute if score level= 1scores matches 1..3 unless score alive= 1scores matches 0 as @a[tag=playing] at @s run playsound minecraft:block.note_block.banjo master @s ~ ~ ~ 3 0.7

# Schedules the start of the game in 2 seconds only if there are still players alive
execute if score level= 1scores matches 1..3 unless score alive= 1scores matches 0 run schedule function games:1/newround 3s

# Schedules the game funtion in 1 second if the players reach the bottom platform
execute if score level= 1scores matches 4 run schedule function games:1/endgame 1s

# Prematurely runs the end function in 1 second if there are no more players alive
execute if score alive= 1scores matches 0 run schedule function games:1/endgame 1s
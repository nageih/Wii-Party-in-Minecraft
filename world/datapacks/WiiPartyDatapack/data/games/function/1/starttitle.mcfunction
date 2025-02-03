# Displays a blank title so that the subtitles can be displayed
title @a[tag=playing] title ""

# Pre summons all the potential cloud positions to be targted later one when they are needed
    # Summons the cloud positions
summon minecraft:area_effect_cloud 1004 221 997 {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["cloud","temp1"]}
summon minecraft:area_effect_cloud 1004 221 1003 {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["cloud","temp1"]}
summon minecraft:area_effect_cloud 1004 172 997 {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["cloud","temp2"]}
summon minecraft:area_effect_cloud 1004 172 1003 {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["cloud","temp2"]}
summon minecraft:area_effect_cloud 1004 127 997 {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["cloud","temp3"]}
summon minecraft:area_effect_cloud 1004 127 1003 {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["cloud","temp3"]}
    # Gives these clouds a score depending on their level
scoreboard players set @e[type=minecraft:area_effect_cloud,tag=cloud,tag=temp1] 1level 1
scoreboard players set @e[type=minecraft:area_effect_cloud,tag=cloud,tag=temp2] 1level 2
scoreboard players set @e[type=minecraft:area_effect_cloud,tag=cloud,tag=temp3] 1level 3
    # Removes all the temp tags given to these area effect clouds as they dont need to be targeted anymore
tag @e[type=minecraft:area_effect_cloud,tag=cloud,tag=temp1] remove temp1
tag @e[type=minecraft:area_effect_cloud,tag=cloud,tag=temp2] remove temp2
tag @e[type=minecraft:area_effect_cloud,tag=cloud,tag=temp3] remove temp3

# Summons an area effect cloud at the middle of each side, used to check what side the player is closer to for making sure players fall and the actionbar indicator
    # Red side
summon minecraft:area_effect_cloud 1004 172 997 {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["sidecheck","redside"]}
    # Blue side
summon minecraft:area_effect_cloud 1004 172 1003 {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["sidecheck","blueside"]}

# Displays 'Ready' as a subtitle with the colour depending on the team
title @a[team=blue] subtitle {"nbt":"colors.blue","storage":"minecraft:config","interpret":true,"extra":[{"translate":"generic.Start","bold":true}],"source":"storage","type":"nbt"}
title @a[team=red] subtitle {"nbt":"colors.red","storage":"minecraft:config","interpret":true,"extra":[{"translate":"generic.Start","bold":true}],"source":"storage","type":"nbt"}
title @a[team=green] subtitle {"nbt":"colors.green","storage":"minecraft:config","interpret":true,"extra":[{"translate":"generic.Start","bold":true}],"source":"storage","type":"nbt"}
title @a[team=orange] subtitle {"nbt":"colors.orange","storage":"minecraft:config","interpret":true,"extra":[{"translate":"generic.Start","bold":true}],"source":"storage","type":"nbt"}
title @a[tag=playing,tag=!ingame] subtitle {"nbt":"colors.spectator","storage":"minecraft:config","interpret":true,"extra":[{"translate":"generic.Start","bold":true}],"source":"storage","type":"nbt"}

# Plays countdown sound
execute as @a[tag=playing] at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 3 1
execute as @a[tag=playing] at @s run playsound ouo:start master @s ~ ~ ~ 3 1


# Schedules the start of the game in 2 seconds
schedule function games:1/newround 2s

execute as @a[tag=playing] at @s run playsound music:dicey_descent voice @s
#   Author        =   @ T4Bl3rUs
#   Description   =   Function that starts the game for the seeker
#   Called By     =   games:12/title2_2

#Set the start of the game
title @a[tag=ingame] actionbar " "
title @a[tag=ingame,tag=solo] subtitle " "
title @a[tag=blue,tag=solo] title {"nbt":"colors.blue","storage":"minecraft:config","interpret":true,"extra":[{"translate":"generic.Go","bold":true}],"source":"storage","type":"nbt"}
title @a[tag=red,tag=solo] title {"nbt":"colors.red","storage":"minecraft:config","interpret":true,"extra":[{"translate":"generic.Go","bold":true}],"source":"storage","type":"nbt"}
title @a[tag=green,tag=solo] title {"nbt":"colors.green","storage":"minecraft:config","interpret":true,"extra":[{"translate":"generic.Go","bold":true}],"source":"storage","type":"nbt"}
title @a[tag=orange,tag=solo] title {"nbt":"colors.orange","storage":"minecraft:config","interpret":true,"extra":[{"translate":"generic.Go","bold":true}],"source":"storage","type":"nbt"}

#Lock the countdown and play a sound
execute as @a[tag=ingame,tag=solo] at @s run playsound minecraft:block.note_block.pling master @a ~ ~ ~ 1 2
scoreboard players set timer 12scores -1

#Tell the hiders that the seeker has been released
title @a[tag=ingame,tag=!solo] title " "
title @a[tag=blue,tag=!solo] subtitle {"nbt":"colors.blue","storage":"minecraft:config","interpret":true,"extra":[{"translate":"game.HideNPeek.SeekerReleased","bold":true}],"source":"storage","type":"nbt"}
title @a[tag=red,tag=!solo] subtitle {"nbt":"colors.red","storage":"minecraft:config","interpret":true,"extra":[{"translate":"game.HideNPeek.SeekerReleased","bold":true}],"source":"storage","type":"nbt"}
title @a[tag=green,tag=!solo] subtitle {"nbt":"colors.green","storage":"minecraft:config","interpret":true,"extra":[{"translate":"game.HideNPeek.SeekerReleased","bold":true}],"source":"storage","type":"nbt"}
title @a[tag=orange,tag=!solo] subtitle {"nbt":"colors.orange","storage":"minecraft:config","interpret":true,"extra":[{"translate":"game.HideNPeek.SeekerReleased","bold":true}],"source":"storage","type":"nbt"}
execute as @a[tag=ingame,tag=!solo] at @s run playsound minecraft:block.note_block.guitar master @a ~ ~ ~ 1 1.5

#Tp every hider outside of their structure's area to it
execute as @a[tag=ingame,tag=!solo,scores={12scores=0}] at @s unless entity @e[type=minecraft:area_effect_cloud,distance=..10,tag=hidenseek] run spreadplayers 13032 12961 0 4 under 22 false @s
execute as @a[tag=ingame,tag=!solo,scores={12scores=1}] at @s unless entity @e[type=minecraft:area_effect_cloud,distance=..10,tag=hidenseek] run spreadplayers 13019 12985 0 4 under 13 false @s
execute as @a[tag=ingame,tag=!solo,scores={12scores=2}] at @s unless entity @e[type=minecraft:area_effect_cloud,distance=..10,tag=hidenseek] run spreadplayers 13004 12985 0 2 under 13 false @s
execute as @a[tag=ingame,tag=!solo,scores={12scores=3}] at @s unless entity @e[type=minecraft:area_effect_cloud,distance=..10,tag=hidenseek] run spreadplayers 12985 12990 0 1.5 under 13 false @s
execute as @a[tag=ingame,tag=!solo,scores={12scores=4}] at @s unless entity @e[type=minecraft:area_effect_cloud,distance=..10,tag=hidenseek] run spreadplayers 12977 12967 0 5 under 20 false @s
execute as @a[tag=ingame,tag=!solo,scores={12scores=5}] at @s unless entity @e[type=minecraft:area_effect_cloud,distance=..10,tag=hidenseek] run spreadplayers 13000 12956 0 4 under 16 false @s
execute as @a[tag=ingame,tag=!solo,scores={12scores=6}] at @s unless entity @e[type=minecraft:area_effect_cloud,distance=..10,tag=hidenseek] run spreadplayers 13020 12943 0 6 under 14 false @s
execute at @a[tag=ingame,tag=!solo] run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["game12headlock"],Age:-2147483648,Duration:-1,WaitTime:-2147483648}
execute as @a[tag=ingame,tag=!solo] if score @s 12scores matches 0..4 run effect give @s minecraft:invisibility infinite 255 true
execute as @a[tag=ingame,tag=!solo] if score @s 12scores matches 6 run effect give @s minecraft:invisibility infinite 255 true

#Make the rocking horses useles in testing mode
execute unless score testing options matches 0 as @a[tag=ingame,tag=!solo] if score @s 12scores matches 5 run effect give @s minecraft:invisibility infinite 255 true

#Tp the seeker
spreadplayers 13002 12970 2 8 false @a[tag=solo]
#   Author        =   @ T4Bl3rUs
#   Description   =   Resets scoreboards and describes the game
#   Called By     =   games:12/start

function games:12/reset
function general:reset_tags
kill @e[type=minecraft:area_effect_cloud,tag=game12headlock]
tag @a remove caught
scoreboard players reset @a coas

# Set spectator limits
scoreboard players set rad= specOptions 45
scoreboard players set x= specOptions 13001
scoreboard players set z= specOptions 12968
scoreboard players set miny= specOptions 8
scoreboard players set maxy= specOptions 45

#Reset the timer and the structures
scoreboard players set timer 12scores 30
scoreboard players set lives 12scores 5
scoreboard players set struct0 12scores 1
scoreboard players set struct1 12scores 1
scoreboard players set struct2 12scores 1
scoreboard players set struct3 12scores 1
scoreboard players set struct4 12scores 1
scoreboard players set struct5 12scores 1
scoreboard players set struct6 12scores 1
function games:12/display

#Disable nametag visibility
team modify blue nametagVisibility never
team modify red nametagVisibility never
team modify green nametagVisibility never
team modify yellow nametagVisibility never

#Schedule the start of the game
schedule function games:12/title1 5s
scoreboard players set global minigame 12
execute as @a[tag=playing] at @s run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 3 0.7

#Intros depending on the role
tellraw @a[tag=!solo,team=blue] {"nbt":"colors.blue","storage":"minecraft:config","interpret":true,"extra":[{"translate":"game.HideNPeek.Hider"}],"source":"storage","type":"nbt"}
tellraw @a[tag=solo,team=blue] {"nbt":"colors.blue","storage":"minecraft:config","interpret":true,"extra":[{"translate":"game.HideNPeek.Seeker"}],"source":"storage","type":"nbt"}

tellraw @a[tag=!solo,team=red] {"nbt":"colors.red","storage":"minecraft:config","interpret":true,"extra":[{"translate":"game.HideNPeek.Hider"}],"source":"storage","type":"nbt"}
tellraw @a[tag=solo,team=red] {"nbt":"colors.red","storage":"minecraft:config","interpret":true,"extra":[{"translate":"game.HideNPeek.Seeker"}],"source":"storage","type":"nbt"}

tellraw @a[tag=!solo,team=green] {"nbt":"colors.green","storage":"minecraft:config","interpret":true,"extra":[{"translate":"game.HideNPeek.Hider"}],"source":"storage","type":"nbt"}
tellraw @a[tag=solo,team=green] {"nbt":"colors.green","storage":"minecraft:config","interpret":true,"extra":[{"translate":"game.HideNPeek.Seeker"}],"source":"storage","type":"nbt"}

tellraw @a[tag=!solo,team=orange] {"nbt":"colors.orange","storage":"minecraft:config","interpret":true,"extra":[{"translate":"game.HideNPeek.Hider"}],"source":"storage","type":"nbt"}
tellraw @a[tag=solo,team=orange] {"nbt":"colors.orange","storage":"minecraft:config","interpret":true,"extra":[{"translate":"game.HideNPeek.Seeker"}],"source":"storage","type":"nbt"}

# These tellraws explain the game
tellraw @a[tag=playing] ""
tellraw @a[team=blue] [{"translate":"game.HideNSeekName","color":"#0088ff","bold":true,"underlined": true}]
tellraw @a[team=red] [{"translate":"game.HideNSeekName","color":"red","bold":true,"underlined": true}]
tellraw @a[team=green] [{"translate":"game.HideNSeekName","color":"green","bold":true,"underlined": true}]
tellraw @a[team=orange] [{"translate":"game.HideNSeekName","color":"gold","bold":true,"underlined": true}]
tellraw @a[tag=playing,tag=!ingame] [{"translate":"game.HideNSeekName","color":"light_purple","bold":true,"underlined": true}]
tellraw @a[tag=playing] ""
tellraw @a[tag=playing] [{"translate":"game.HowToPlay","color":"gray","bold":true}]
tellraw @a[tag=playing,tag=!solo] [{"translate":"game.HideNSeek.How.Main.1","color":"gray","with":[{"text":"-"}]}]
tellraw @a[tag=playing,tag=!solo] [{"translate":"game.HideNSeek.How.Main.2","color":"gray","with":[{"text":"-"}]}]
tellraw @a[tag=playing,tag=!solo] [{"translate":"game.HideNSeek.How.Main.3","color":"gray","with":[{"text":"-"}]}]
tellraw @a[tag=playing,tag=solo] [{"translate":"game.HideNSeek.How.Main.1","color":"gray","with":[{"text":"-"}]}]
tellraw @a[tag=playing,tag=solo] [{"translate":"game.HideNSeek.How.Main.2","color":"gray","with":[{"text":"-"}]}]
tellraw @a[tag=playing,tag=solo] [{"translate":"game.HideNSeek.How.Main.3","color":"gray","with":[{"text":"-"}]}]
tellraw @a[tag=playing] ""

#Change the coords
spreadplayers 13002 12970 2 8 true @a[tag=playing,tag=!solo]
tp @a[tag=solo] 13003 16 12776
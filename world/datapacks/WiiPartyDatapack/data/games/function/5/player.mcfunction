tag @s add currentPlayer

tag @s remove lookedAt

execute if score ingame= 5scores matches 2 anchored eyes positioned ^ ^ ^.5 run function games:5/raycast

title @s[tag=!lookedAt] actionbar ""
title @s[tag=lookedAt,team=blue] actionbar {"nbt":"colors.blue","storage":"minecraft:config","interpret":true,"extra":[{"bold":true,"translate":"game.LuckyLaunch.ToSelectFirework","with":[{"keybind":"key.use","underlined":true,"type":"keybind"}]}],"source":"storage","type":"nbt"}
title @s[tag=lookedAt,team=red] actionbar {"nbt":"colors.red","storage":"minecraft:config","interpret":true,"extra":[{"bold":true,"translate":"game.LuckyLaunch.ToSelectFirework","with":[{"keybind":"key.use","underlined":true,"type":"keybind"}]}],"source":"storage","type":"nbt"}
title @s[tag=lookedAt,team=green] actionbar {"nbt":"colors.green","storage":"minecraft:config","interpret":true,"extra":[{"bold":true,"translate":"game.LuckyLaunch.ToSelectFirework","with":[{"keybind":"key.use","underlined":true,"type":"keybind"}]}],"source":"storage","type":"nbt"}
title @s[tag=lookedAt,team=orange] actionbar {"nbt":"colors.orange","storage":"minecraft:config","interpret":true,"extra":[{"bold":true,"translate":"game.LuckyLaunch.ToSelectFirework","with":[{"keybind":"key.use","underlined":true,"type":"keybind"}]}],"source":"storage","type":"nbt"}

execute if score ingame= 5scores matches 3 anchored eyes positioned ^ ^ ^.5 run function games:5/villager_check

execute if score ingame= 5scores matches 4 as @e[type=minecraft:armor_stand,tag=specStart] if score @s 5id = @a[tag=currentPlayer,limit=1] 5id run spectate @s @a[tag=currentPlayer,limit=1]

scoreboard players reset @s 5detonate

tag @s remove currentPlayer

execute if score ingame= 5scores matches 2 if entity @s[y=15,dy=-10] run function games:5/back_to_platform
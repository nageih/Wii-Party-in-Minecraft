spreadplayers 5002 5017 2 2 under 12 true @a[tag=ingame]

tellraw @a[tag=playing,tag=!ingame] {"nbt":"colors.spectator","storage":"minecraft:config","interpret":true,"extra":[{"translate":"game.LuckyLaunch.ChosenFirework","bold":true},{"text":"\n\n","type":"text"},{"translate":"game.LuckyLaunch.RightClickToLight","bold":true,"with":[{"keybind":"key.use","type":"keybind"}]}],"source":"storage","type":"nbt"}
tellraw @a[tag=ingame,team=blue] {"nbt":"colors.blue","storage":"minecraft:config","interpret":true,"extra":[{"translate":"game.LuckyLaunch.ChosenFirework","bold":true},{"text":"\n\n","type":"text"},{"translate":"game.LuckyLaunch.RightClickToLight","bold":true,"with":[{"keybind":"key.use","type":"keybind"}]}],"source":"storage","type":"nbt"}
tellraw @a[tag=ingame,team=red] {"nbt":"colors.red","storage":"minecraft:config","interpret":true,"extra":[{"translate":"game.LuckyLaunch.ChosenFirework","bold":true},{"text":"\n\n","type":"text"},{"translate":"game.LuckyLaunch.RightClickToLight","bold":true,"with":[{"keybind":"key.use","type":"keybind"}]}],"source":"storage","type":"nbt"}
tellraw @a[tag=ingame,team=green] {"nbt":"colors.green","storage":"minecraft:config","interpret":true,"extra":[{"translate":"game.LuckyLaunch.ChosenFirework","bold":true},{"text":"\n\n","type":"text"},{"translate":"game.LuckyLaunch.RightClickToLight","bold":true,"with":[{"keybind":"key.use","type":"keybind"}]}],"source":"storage","type":"nbt"}
tellraw @a[tag=ingame,team=orange] {"nbt":"colors.orange","storage":"minecraft:config","interpret":true,"extra":[{"translate":"game.LuckyLaunch.ChosenFirework","bold":true},{"text":"\n\n","type":"text"},{"translate":"game.LuckyLaunch.RightClickToLight","bold":true,"with":[{"keybind":"key.use","type":"keybind"}]}],"source":"storage","type":"nbt"}

scoreboard players set ingame= 5scores 3

execute at @e[type=minecraft:item_frame,tag=detonator] run summon minecraft:villager ~-.5 ~-6 ~.25 {Tags:["detonator"],NoAI:1b,Silent:1b,Invulnerable:1b,active_effects:[{id:"minecraft:invisibility",duration:1000000,show_particles:0b}]}
execute at @e[type=minecraft:item_frame,tag=detonator] run summon minecraft:villager ~ ~-6 ~.25 {Tags:["detonator"],NoAI:1b,Silent:1b,Invulnerable:1b,active_effects:[{id:"minecraft:invisibility",duration:1000000,show_particles:0b}]}

execute as @e[type=minecraft:villager,tag=detonator] at @s run tp @s ~ ~5 ~

execute as @a[tag=playing] at @s run playsound minecraft:block.note_block.cow_bell master @s ~ ~ ~ 3 0.5

scoreboard players reset @s 5detonate
#function general:fade/main

schedule function games:26/start_title 5s

execute if score practice= practice matches 1 run scoreboard players set practice= 26scores 1

scoreboard players reset play= practice
scoreboard players reset practice= practice

# Removes the tutorial lecterns
schedule function games:26/remove_lecterns 1s

scoreboard players set ingame= 26scores 1

title @a[tag=playing] actionbar ""

# These tellraws explain the game, these will only display if you are playing with tutorials off.
tellraw @a[team=blue] {"nbt":"colors.blue","storage":"minecraft:config","interpret":true,"extra":[{"translate":"game.HammerHeads"}],"source":"storage","type":"nbt"}
tellraw @a[team=red] {"nbt":"colors.red","storage":"minecraft:config","interpret":true,"extra":[{"translate":"game.HammerHeads"}],"source":"storage","type":"nbt"}
tellraw @a[team=green] {"nbt":"colors.green","storage":"minecraft:config","interpret":true,"extra":[{"translate":"game.HammerHeads"}],"source":"storage","type":"nbt"}
tellraw @a[team=orange] {"nbt":"colors.orange","storage":"minecraft:config","interpret":true,"extra":[{"translate":"game.HammerHeads"}],"source":"storage","type":"nbt"}
tellraw @a[tag=playing,tag=!ingame] {"nbt":"colors.spectator","storage":"minecraft:config","interpret":true,"extra":[{"translate":"game.HammerHeads"}],"source":"storage","type":"nbt"}
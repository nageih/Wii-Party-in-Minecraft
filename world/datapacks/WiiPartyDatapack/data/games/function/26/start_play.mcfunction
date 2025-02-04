#function general:fade/main

schedule function games:26/start_title 5s

execute if score practice= practice matches 1 run scoreboard players set practice= 26scores 1

scoreboard players reset play= practice
scoreboard players reset practice= practice

# Removes the tutorial lecterns
schedule function games:26/remove_lecterns 1s

scoreboard players set ingame= 26scores 1

title @a[tag=playing] actionbar ""

# These tellraws explain the game
tellraw @a[tag=playing] ""
tellraw @a[team=blue] [{"translate":"game.HammerHeadsName","color":"#0088ff","bold":true,"underlined": true}]
tellraw @a[team=red] [{"translate":"game.HammerHeadsName","color":"red","bold":true,"underlined": true}]
tellraw @a[team=green] [{"translate":"game.HammerHeadsName","color":"green","bold":true,"underlined": true}]
tellraw @a[team=orange] [{"translate":"game.HammerHeadsName","color":"gold","bold":true,"underlined": true}]
tellraw @a[tag=playing,tag=!ingame] [{"translate":"game.HammerHeadsName","color":"light_purple","bold":true,"underlined": true}]
tellraw @a[tag=playing] ""
tellraw @a[tag=playing] [{"translate":"game.HowToPlay","color":"gray","bold":true}]
tellraw @a[tag=playing] [{"translate":"game.HammerHeads.How.1","color":"gray","with":[{"text":"-"}]}]
tellraw @a[tag=playing] [{"translate":"game.HammerHeads.How.2","color":"gray","with":[{"text":"-"}]}]
tellraw @a[tag=playing] [{"translate":"game.HammerHeads.How.3","color":"gray","with":[{"text":"-"}]}]
tellraw @a[tag=playing] [{"translate":"game.HammerHeads.How.4","color":"gray","with":[{"text":"-"}]}]
tellraw @a[tag=playing] ""
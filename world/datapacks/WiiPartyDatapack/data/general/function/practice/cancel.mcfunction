#   Author        =   @ T4Bl3rUs and JevinLevin
#   Description   =   Function triggerred if the game is cancelled (during the countdown for the normal games)
#   Called By     =   general:practice/main

title @a[tag=playing] title ""
title @a[tag=playing] actionbar ""

execute as @a[tag=playing] at @s run playsound minecraft:block.respawn_anchor.deplete master @s ~ ~ ~ 3

scoreboard players reset starting= practice
scoreboard players reset countdown= practice

scoreboard players reset @s play
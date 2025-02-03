#   Author        =   @ JevinLevin
#   Description   =   
#   Called By     =   general:practice/main + general:practice/end_play

title @a[tag=playing] title {"translate":"generic.Practice.GameStarting","color":"#40ff70"}
title @a[tag=playing] subtitle ""
title @a[tag=playing] actionbar ""

execute as @a[tag=playing] at @s run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 3 0.5

schedule function general:practice/end_play 3s
function general:tutorial/reset
#   Author        =   @ T4Bl3rUs
#   Description   =   Finish (individual players)
#   Called By     =   nothing atm

tag @s add finished
tag @s remove 24move

execute if entity @s[team=blue] run tag @a[tag=ingame,team=blue] add tempFinished
execute if entity @s[team=red] run tag @a[tag=ingame,team=red] add tempFinished
execute if entity @s[team=green] run tag @a[tag=ingame,team=green] add tempFinished
execute if entity @s[team=orange] run tag @a[tag=ingame,team=orange] add tempFinished
title @a[tag=playing] times 20 60 20


execute at @s run particle minecraft:firework ~ ~1 ~ 1.5 1.5 1.5 0.1 70 force

execute as @a[tag=tempFinished] at @s run playsound minecraft:ui.toast.challenge_complete master @s ~ ~ ~ 1 2

execute if entity @a[tag=1st] if entity @a[tag=2nd] unless entity @a[tag=3rd] run tag @a[tag=tempFinished] add 3rd
execute if entity @a[tag=1st] unless entity @a[tag=2nd] run tag @a[tag=tempFinished] add 2nd
execute unless entity @a[tag=1st] run tag @a[tag=tempFinished] add 1st

execute if entity @a[tag=tempFinished,tag=1st] run tag @s add 1st
execute if entity @a[tag=tempFinished,tag=2nd] run tag @s add 2nd
execute if entity @a[tag=tempFinished,tag=3rd] run tag @s add 3rd

execute as @a[tag=tempFinished] run function games:24/show_time

tag @a[tag=tempFinished] add finished
tag @a[tag=tempFinished] remove tempFinished

execute store result score left= 24scores if entity @a[tag=ingame,tag=!finished]
execute if score left= 24scores matches ..1 run function games:24/endrace

execute at @s run tp @s ~ ~ ~ 180 0 
execute at @s run tp @s ~ ~ ~ 180 0 
data merge entity @s {Pose:{Head:[-45f,0f,0f]}}
effect clear @s glowing

function games:24/display
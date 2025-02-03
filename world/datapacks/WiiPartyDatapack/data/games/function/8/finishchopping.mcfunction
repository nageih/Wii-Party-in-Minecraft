tag @s add finished
execute at @s run particle minecraft:firework ~ ~1 ~ 1.5 1.5 1.5 0.1 70 force
execute at @s run playsound minecraft:ui.toast.challenge_complete master @s ~ ~ ~ 1 2
execute if entity @s[tag=!1st,tag=!2nd,tag=!3rd] if entity @a[tag=1st] if entity @a[tag=2nd] if entity @a[tag=3rd] unless entity @a[tag=4th] run tag @s add 4th
execute if entity @s[tag=!1st,tag=!2nd] if entity @a[tag=1st] if entity @a[tag=2nd] unless entity @a[tag=3rd] run tag @s add 3rd
execute if entity @s[tag=!1st] if entity @a[tag=1st] unless entity @a[tag=2nd] run tag @s add 2nd
execute unless entity @a[tag=1st] run tag @s add 1st

tag @s add this
tellraw @a[tag=playing,tag=!this] {"color":"gray","translate":"game.ChopChops.Finish","with":[{"selector":"@s","type":"selector"}],"bold":false}
tellraw @s {"color":"gray","translate":"game.ChopChops.Finish","with":[{"selector":"@s","bold":true,"type":"selector"}],"bold":false}
tag @s remove this
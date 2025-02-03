tag @e[type=item_display,tag=36card,tag=36valid] add 36finish

execute at @s run particle minecraft:firework ~ ~1 ~ 1.5 1.5 1.5 0.1 70 force
execute as @a[tag=ingame] at @s run playsound minecraft:ui.toast.challenge_complete master @s ~ ~ ~ 1 2


tag @s add 36finished

execute if entity @a[tag=1st] if entity @a[tag=2nd] unless entity @a[tag=3rd] run tag @s add 3rd
execute if entity @a[tag=1st] unless entity @a[tag=2nd] run tag @s add 2nd
execute unless entity @a[tag=1st] run tag @s add 1st

execute store result score left= 36scores if entity @a[tag=ingame,tag=!36finished]
execute if score left= 36scores matches 2.. run schedule function games:36/new_turn 40t
# execute unless score left= 36scores matches 2.. run schedule function games:36/finish 40t

tellraw @a[tag=playing,tag=!36turn] {"nbt":"colors.base","storage":"minecraft:config","interpret":true,"extra":[{"translate":"game.FaceFlip.Finish","with":[{"selector":"@a[tag=36turn]"}]}],"source":"storage","type":"nbt"}
tellraw @a[tag=36turn] {"nbt":"colors.base","storage":"minecraft:config","interpret":true,"extra":[{"translate":"game.FaceFlip.Finish","with":[{"selector":"@a[tag=36turn]","bold":true}]}],"source":"storage","type":"nbt"}
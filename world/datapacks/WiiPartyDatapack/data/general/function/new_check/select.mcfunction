execute if score choice= newCheck matches 0 run tellraw @a[tag=new_check] [{"nbt":"colors.base","storage":"minecraft:config","interpret":true,"extra":[{"text":"Selected: ","type":"text"}],"source":"storage","type":"nbt"},{"text":" Yes","color":"green","bold":true,"type":"text"}]
execute if score choice= newCheck matches 1 run tellraw @a[tag=new_check] [{"nbt":"colors.base","storage":"minecraft:config","interpret":true,"extra":[{"text":"Selected: ","type":"text"}],"source":"storage","type":"nbt"},{"text":" No","color":"red","bold":true,"type":"text"}]
execute as @a[tag=new_check] at @s run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 3 2
execute if score choice= newCheck matches 0 run tag @a[tag=new_check] add notPlayed

title @a[tag=new_check] title ""
title @a[tag=new_check] subtitle ""

title @a[tag=new_check] times 20 60 20

tag @a remove new_check

scoreboard players set stage= newCheck 0
scoreboard players set choice= newCheck -1
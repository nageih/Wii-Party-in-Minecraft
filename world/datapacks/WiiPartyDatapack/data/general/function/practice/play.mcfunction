#   Author        =   @ JevinLevin
#   Description   =   
#   Called By     =   general:practice/main

scoreboard players set starting= practice 1

execute as @a[tag=playing] at @s run playsound minecraft:block.beacon.power_select master @s ~ ~ ~ 3

scoreboard players reset @s play

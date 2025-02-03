execute as @a[tag=currentP] at @s run playsound minecraft:block.note_block.hat master @s ~ ~ ~ 3 0.5


effect clear @s minecraft:glowing
tag @s remove selected
effect clear @e[type=minecraft:item_frame,tag=detonator,sort=nearest,limit=1] minecraft:glowing
tag @e[type=minecraft:item_frame,tag=detonator,sort=nearest,limit=1] remove selected

execute if entity @s[scores={5cMD=501..503}] run effect clear @e[type=minecraft:armor_stand,distance=..2,tag=double] minecraft:glowing
execute if entity @s[scores={5cMD=501..503}] run tag @e[type=minecraft:armor_stand,distance=..2,tag=double] remove selected

tag @a[tag=currentP] remove selected
scoreboard players reset @a[tag=currentP] rightClick
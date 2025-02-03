execute as @a[tag=currentP] at @s run playsound minecraft:block.note_block.hat master @s ~ ~ ~ 3 0.5

tag @a[tag=currentP] add selected

execute if entity @a[tag=currentP,team=blue] run tag @e[type=minecraft:armor_stand,tag=firework,tag=selected,team=blue] add tempRemove
execute if entity @a[tag=currentP,team=red] run tag @e[type=minecraft:armor_stand,tag=firework,tag=selected,team=red] add tempRemove
execute if entity @a[tag=currentP,team=green] run tag @e[type=minecraft:armor_stand,tag=firework,tag=selected,team=green] add tempRemove
execute if entity @a[tag=currentP,team=orange] run tag @e[type=minecraft:armor_stand,tag=firework,tag=selected,team=orange] add tempRemove

effect clear @e[type=minecraft:armor_stand,tag=tempRemove] minecraft:glowing
tag @e[type=minecraft:armor_stand,tag=firework,tag=tempRemove] remove selected


tag @s add selected
effect give @s minecraft:glowing infinite 1 true
tag @e[type=minecraft:item_frame,tag=detonator,sort=nearest,limit=1] add selected
effect give @e[type=minecraft:item_frame,tag=detonator,sort=nearest,limit=1] minecraft:glowing infinite 1 true

execute if entity @a[tag=currentP,limit=1,team=blue] run team join blue @s
execute if entity @a[tag=currentP,limit=1,team=red] run team join red @s
execute if entity @a[tag=currentP,limit=1,team=green] run team join green @s
execute if entity @a[tag=currentP,limit=1,team=orange] run team join orange @s
execute if entity @a[tag=currentP,limit=1,team=blue] run team join blue @e[type=minecraft:item_frame,tag=detonator,sort=nearest,limit=1]
execute if entity @a[tag=currentP,limit=1,team=red] run team join red @e[type=minecraft:item_frame,tag=detonator,sort=nearest,limit=1]
execute if entity @a[tag=currentP,limit=1,team=green] run team join green @e[type=minecraft:item_frame,tag=detonator,sort=nearest,limit=1]
execute if entity @a[tag=currentP,limit=1,team=orange] run team join orange @e[type=minecraft:item_frame,tag=detonator,sort=nearest,limit=1]

execute if entity @s[scores={5cMD=501..503}] run effect give @e[type=minecraft:armor_stand,distance=..2,tag=double] minecraft:glowing 1000000 1 true
execute if entity @s[scores={5cMD=501..503}] run tag @e[type=minecraft:armor_stand,distance=..2,tag=double] add selected

execute if entity @s[scores={5cMD=501..503},team=blue] run team join blue @e[type=minecraft:armor_stand,distance=..2,tag=double]
execute if entity @s[scores={5cMD=501..503},team=red] run team join red @e[type=minecraft:armor_stand,distance=..2,tag=double]
execute if entity @s[scores={5cMD=501..503},team=green] run team join green @e[type=minecraft:armor_stand,distance=..2,tag=double]
execute if entity @s[scores={5cMD=501..503},team=orange] run team join orange @e[type=minecraft:armor_stand,distance=..2,tag=double]

tag @e[type=minecraft:armor_stand,tag=firework] remove tempRemove

scoreboard players reset @a[tag=currentP] rightClick
summon minecraft:armor_stand ~ ~ ~ {Marker:1b,NoGravity:1b,Invisible:1b,Silent:1b,Tags:["firework","temp","double"],Invulnerable:1b,ArmorItems:[{},{},{},{id:"minecraft:leather_horse_armor",count:1}]}

scoreboard players operation @e[type=minecraft:armor_stand,distance=..3,tag=temp,limit=1] 5cMD = @s 5cMD

scoreboard players add @e[type=minecraft:armor_stand,distance=..3,tag=temp] 5cMD 3

execute as @e[type=minecraft:armor_stand,distance=..3,tag=temp] store result entity @s ArmorItems[3].components."minecraft:custom_model_data" double 1 run scoreboard players get @s 5cMD

data modify entity @e[type=minecraft:armor_stand,distance=..3,tag=temp,limit=1] ArmorItems[3].components."minecraft:dyed_color".rgb set from entity @s ArmorItems[3].components."minecraft:dyed_color".rgb

tag @e[type=minecraft:armor_stand,distance=..3,tag=temp] remove temp
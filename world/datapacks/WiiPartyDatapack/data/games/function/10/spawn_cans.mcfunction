execute if entity @a[team=blue] run summon marker 10986 13 10988 {Tags:["10marker","blue"]}
execute if entity @a[team=red] run summon marker 10986 13 10990 {Tags:["10marker","red"]}
execute if entity @a[team=green] run summon marker 10986 13 10992 {Tags:["10marker","green"]}
execute if entity @a[team=orange] run summon marker 10986 13 10994 {Tags:["10marker","orange"]}
execute at @e[type=marker,tag=10marker,tag=blue] positioned ~12. ~ ~ run summon armor_stand ~ ~ ~ {Invulnerable:1b,Small:0b,Tags:["10can","blue"],Invisible:1b,attributes:[{id:"minecraft:generic.gravity",base:0.05}]}
execute at @e[type=marker,tag=10marker,tag=red] positioned ~12. ~ ~ run summon armor_stand ~ ~ ~ {Invulnerable:1b,Small:0b,Tags:["10can","red"],Invisible:1b,attributes:[{id:"minecraft:generic.gravity",base:0.05}]}
execute at @e[type=marker,tag=10marker,tag=green] positioned ~12. ~ ~ run summon armor_stand ~ ~ ~ {Invulnerable:1b,Small:0b,Tags:["10can","green"],Invisible:1b,attributes:[{id:"minecraft:generic.gravity",base:0.05}]}
execute at @e[type=marker,tag=10marker,tag=orange] positioned ~12. ~ ~ run summon armor_stand ~ ~ ~ {Invulnerable:1b,Small:0b,Tags:["10can","orange"],Invisible:1b,attributes:[{id:"minecraft:generic.gravity",base:0.05}]}
execute as @e[type=armor_stand,tag=10can,tag=blue] at @s run function games:10/setup_can
execute as @e[type=armor_stand,tag=10can,tag=red] at @s run function games:10/setup_can
execute as @e[type=armor_stand,tag=10can,tag=green] at @s run function games:10/setup_can
execute as @e[type=armor_stand,tag=10can,tag=orange] at @s run function games:10/setup_can
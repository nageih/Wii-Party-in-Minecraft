scoreboard players set check= 18scores 0
kill @e[type=minecraft:marker,tag=game18,tag=checkpos]
execute at @s run summon minecraft:marker ~ ~ ~ {Tags:["game18","checkpos"]}

execute as @e[type=minecraft:armor_stand,tag=game18,tag=piece_1_1,tag=orange] at @s rotated as @s as @e[type=minecraft:marker,tag=game18,tag=checkpos] run tp ^-1 ^ ^-1
execute as @e[type=minecraft:armor_stand,tag=game18,tag=piece_1_2,tag=orange] at @s rotated as @s if entity @e[type=minecraft:marker,distance=..0.2,tag=game18,tag=checkpos] as @e[type=minecraft:marker,tag=game18,tag=checkpos,limit=1] run tp ^2 ^ ^-0.5
execute as @e[type=minecraft:armor_stand,tag=game18,tag=piece_1_3,tag=orange] at @s rotated as @s if entity @e[type=minecraft:marker,distance=..0.2,tag=game18,tag=checkpos] as @e[type=minecraft:marker,tag=game18,tag=checkpos,limit=1] run tp ^-1.5 ^ ^-1
execute as @e[type=minecraft:armor_stand,tag=game18,tag=piece_1_4,tag=orange] at @s rotated as @s if entity @e[type=minecraft:marker,distance=..0.2,tag=game18,tag=checkpos] as @e[type=minecraft:marker,tag=game18,tag=checkpos,limit=1] run tp ^-0.5 ^ ^2.5
execute as @e[type=minecraft:armor_stand,tag=game18,tag=piece_1_5,tag=orange] at @s rotated as @s if entity @e[type=minecraft:marker,distance=..0.2,tag=game18,tag=checkpos] as @e[type=minecraft:marker,tag=game18,tag=checkpos,limit=1] run tp ^2.5 ^ ^
execute as @e[type=minecraft:armor_stand,tag=game18,tag=piece_1_6,tag=orange] at @s rotated as @s if entity @e[type=minecraft:marker,distance=..0.2,tag=game18,tag=checkpos] as @e[type=minecraft:marker,tag=game18,tag=checkpos,limit=1] run tp ^-1.5 ^ ^
execute as @e[type=minecraft:armor_stand,tag=game18,tag=piece_1_1,tag=orange] at @s if entity @e[type=minecraft:marker,distance=..0.2,tag=game18,tag=checkpos] as @e[type=minecraft:marker,tag=game18,tag=checkpos,limit=1] run scoreboard players set check= 18scores 1

execute as @e[type=minecraft:armor_stand,tag=game18,tag=piece_2_1,tag=orange] at @s rotated as @s as @e[type=minecraft:marker,tag=game18,tag=checkpos] run tp ^0.5 ^ ^-2
execute as @e[type=minecraft:armor_stand,tag=game18,tag=piece_2_2,tag=orange] at @s rotated as @s if entity @e[type=minecraft:marker,distance=..0.2,tag=game18,tag=checkpos] as @e[type=minecraft:marker,tag=game18,tag=checkpos,limit=1] run tp ^-1 ^ ^1
execute as @e[type=minecraft:armor_stand,tag=game18,tag=piece_2_3,tag=orange] at @s rotated as @s if entity @e[type=minecraft:marker,distance=..0.2,tag=game18,tag=checkpos] as @e[type=minecraft:marker,tag=game18,tag=checkpos,limit=1] run tp ^-1 ^ ^1
execute as @e[type=minecraft:armor_stand,tag=game18,tag=piece_2_4,tag=orange] at @s rotated as @s if entity @e[type=minecraft:marker,distance=..0.2,tag=game18,tag=checkpos] as @e[type=minecraft:marker,tag=game18,tag=checkpos,limit=1] run tp ^0.5 ^ ^-2
execute as @e[type=minecraft:armor_stand,tag=game18,tag=piece_2_5,tag=orange] at @s rotated as @s if entity @e[type=minecraft:marker,distance=..0.2,tag=game18,tag=checkpos] as @e[type=minecraft:marker,tag=game18,tag=checkpos,limit=1] run tp ^0.5 ^ ^-0.5
execute as @e[type=minecraft:armor_stand,tag=game18,tag=piece_2_6,tag=orange] at @s rotated as @s if entity @e[type=minecraft:marker,distance=..0.2,tag=game18,tag=checkpos] as @e[type=minecraft:marker,tag=game18,tag=checkpos,limit=1] run tp ^0.5 ^ ^2.5
execute as @e[type=minecraft:armor_stand,tag=game18,tag=piece_2_1,tag=orange] at @s if entity @e[type=minecraft:marker,distance=..0.2,tag=game18,tag=checkpos] as @e[type=minecraft:marker,tag=game18,tag=checkpos,limit=1] run scoreboard players set check= 18scores 1

execute as @e[type=minecraft:armor_stand,tag=game18,tag=piece_3_1,tag=orange] at @s rotated as @s as @e[type=minecraft:marker,tag=game18,tag=checkpos] run tp ^-2 ^ ^
execute as @e[type=minecraft:armor_stand,tag=game18,tag=piece_3_2,tag=orange] at @s rotated as @s if entity @e[type=minecraft:marker,distance=..0.2,tag=game18,tag=checkpos] as @e[type=minecraft:marker,tag=game18,tag=checkpos,limit=1] run tp ^1 ^ ^-0.5
execute as @e[type=minecraft:armor_stand,tag=game18,tag=piece_3_3,tag=orange] at @s rotated as @s if entity @e[type=minecraft:marker,distance=..0.2,tag=game18,tag=checkpos] as @e[type=minecraft:marker,tag=game18,tag=checkpos,limit=1] run tp ^1 ^ ^-1
execute as @e[type=minecraft:armor_stand,tag=game18,tag=piece_3_4,tag=orange] at @s rotated as @s if entity @e[type=minecraft:marker,distance=..0.2,tag=game18,tag=checkpos] as @e[type=minecraft:marker,tag=game18,tag=checkpos,limit=1] run tp ^-1.5 ^ ^0.5
execute as @e[type=minecraft:armor_stand,tag=game18,tag=piece_3_5,tag=orange] at @s rotated as @s if entity @e[type=minecraft:marker,distance=..0.2,tag=game18,tag=checkpos] as @e[type=minecraft:marker,tag=game18,tag=checkpos,limit=1] run tp ^-1 ^ ^-0.5
execute as @e[type=minecraft:armor_stand,tag=game18,tag=piece_3_6,tag=orange] at @s rotated as @s if entity @e[type=minecraft:marker,distance=..0.2,tag=game18,tag=checkpos] as @e[type=minecraft:marker,tag=game18,tag=checkpos,limit=1] run tp ^2.5 ^ ^1.5
execute as @e[type=minecraft:armor_stand,tag=game18,tag=piece_3_1,tag=orange] at @s if entity @e[type=minecraft:marker,distance=..0.2,tag=game18,tag=checkpos] as @e[type=minecraft:marker,tag=game18,tag=checkpos,limit=1] run scoreboard players set check= 18scores 1

execute as @e[type=minecraft:armor_stand,tag=game18,tag=piece_4_1,tag=orange] at @s rotated as @s as @e[type=minecraft:marker,tag=game18,tag=checkpos] run tp ^-0.5 ^ ^
execute as @e[type=minecraft:armor_stand,tag=game18,tag=piece_4_2,tag=orange] at @s rotated as @s if entity @e[type=minecraft:marker,distance=..0.2,tag=game18,tag=checkpos] as @e[type=minecraft:marker,tag=game18,tag=checkpos,limit=1] run tp ^ ^ ^-1.5
execute as @e[type=minecraft:armor_stand,tag=game18,tag=piece_4_3,tag=orange] at @s rotated as @s if entity @e[type=minecraft:marker,distance=..0.2,tag=game18,tag=checkpos] as @e[type=minecraft:marker,tag=game18,tag=checkpos,limit=1] run tp ^-1.5 ^ ^1.5
execute as @e[type=minecraft:armor_stand,tag=game18,tag=piece_4_4,tag=orange] at @s rotated as @s if entity @e[type=minecraft:marker,distance=..0.2,tag=game18,tag=checkpos] as @e[type=minecraft:marker,tag=game18,tag=checkpos,limit=1] run tp ^-0.5 ^ ^-1.5
execute as @e[type=minecraft:armor_stand,tag=game18,tag=piece_4_5,tag=orange] at @s rotated as @s if entity @e[type=minecraft:marker,distance=..0.2,tag=game18,tag=checkpos] as @e[type=minecraft:marker,tag=game18,tag=checkpos,limit=1] run tp ^-0.5 ^ ^1.5
execute as @e[type=minecraft:armor_stand,tag=game18,tag=piece_4_6,tag=orange] at @s rotated as @s if entity @e[type=minecraft:marker,distance=..0.2,tag=game18,tag=checkpos] as @e[type=minecraft:marker,tag=game18,tag=checkpos,limit=1] run tp ^3 ^ ^
execute as @e[type=minecraft:armor_stand,tag=game18,tag=piece_4_1,tag=orange] at @s if entity @e[type=minecraft:marker,distance=..0.2,tag=game18,tag=checkpos] as @e[type=minecraft:marker,tag=game18,tag=checkpos,limit=1] run scoreboard players set check= 18scores 1

execute as @e[type=minecraft:armor_stand,tag=game18,tag=piece_5_1,tag=orange] at @s rotated as @s as @e[type=minecraft:marker,tag=game18,tag=checkpos] run tp ^ ^ ^-2
execute as @e[type=minecraft:armor_stand,tag=game18,tag=piece_5_2,tag=orange] at @s rotated as @s if entity @e[type=minecraft:marker,distance=..0.2,tag=game18,tag=checkpos] as @e[type=minecraft:marker,tag=game18,tag=checkpos,limit=1] run tp ^-1.5 ^ ^2.5
execute as @e[type=minecraft:armor_stand,tag=game18,tag=piece_5_3,tag=orange] at @s rotated as @s if entity @e[type=minecraft:marker,distance=..0.2,tag=game18,tag=checkpos] as @e[type=minecraft:marker,tag=game18,tag=checkpos,limit=1] run tp ^0.5 ^ ^-3
execute as @e[type=minecraft:armor_stand,tag=game18,tag=piece_5_4,tag=orange] at @s rotated as @s if entity @e[type=minecraft:marker,distance=..0.2,tag=game18,tag=checkpos] as @e[type=minecraft:marker,tag=game18,tag=checkpos,limit=1] run tp ^-0.5 ^ ^1.5
execute as @e[type=minecraft:armor_stand,tag=game18,tag=piece_5_5,tag=orange] at @s rotated as @s if entity @e[type=minecraft:marker,distance=..0.2,tag=game18,tag=checkpos] as @e[type=minecraft:marker,tag=game18,tag=checkpos,limit=1] run tp ^-1 ^ ^1
execute as @e[type=minecraft:armor_stand,tag=game18,tag=piece_5_6,tag=orange] at @s rotated as @s if entity @e[type=minecraft:marker,distance=..0.2,tag=game18,tag=checkpos] as @e[type=minecraft:marker,tag=game18,tag=checkpos,limit=1] run tp ^2.5 ^ ^
execute as @e[type=minecraft:armor_stand,tag=game18,tag=piece_5_1,tag=orange] at @s if entity @e[type=minecraft:marker,distance=..0.2,tag=game18,tag=checkpos] as @e[type=minecraft:marker,tag=game18,tag=checkpos,limit=1] run scoreboard players set check= 18scores 1

kill @e[type=minecraft:marker,tag=game18,tag=checkpos]
execute if score check= 18scores matches 1 as @a[team=orange] run function games:18/finish
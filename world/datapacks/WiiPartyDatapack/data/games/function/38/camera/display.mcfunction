clear @a[tag=ingame]
execute as @e[tag=38id] run data modify entity @s NoAI set value 1b
effect clear @e[tag=game38] minecraft:glowing

data modify storage minecraft:game38 temp set value []
scoreboard players set count= 38scores 1
execute as @e[tag=38id] if score @s 38scores = count= 38scores run function games:38/camera/capture2
data remove storage minecraft:game38 temp2

# kill @e[type=minecraft:armor_stand,tag=38cam]
# execute as @e[type=minecraft:armor_stand,tag=38cam] run tp @a[tag=ingame] @s
execute unless entity @e[type=minecraft:armor_stand,tag=38cam] run summon minecraft:armor_stand 37970 19 37986 {Invisible:1b,Tags:["38cam"],NoGravity:1b,Silent:1b}
gamemode spectator @a[tag=ingame]
execute as @e[type=minecraft:armor_stand,tag=38cam] run data modify entity @s Pos set from storage minecraft:game38 display[0][0]
execute as @e[type=minecraft:armor_stand,tag=38cam] run data modify entity @s Rotation set from storage minecraft:game38 display[0][1]
execute as @e[type=minecraft:armor_stand,tag=38cam] run tp @a[tag=ingame] @s
execute as @a[tag=ingame] run spectate @e[type=minecraft:armor_stand,tag=38cam,limit=1]
data remove storage minecraft:game38 display[0]
scoreboard players set count= 38scores 1
execute as @e[tag=38id] if score @s 38scores = count= 38scores run function games:38/camera/display2
# data remove storage minecraft:game38 display

execute as @a[tag=ingame] at @s if score entity= 38mods matches 1 run function games:38/get_entity/dog
execute as @a[tag=ingame] at @s if score entity= 38mods matches 2 run function games:38/get_entity/cat
execute as @a[tag=ingame] at @s if score entity= 38mods matches 3 run function games:38/get_entity/fox
team join redTint @e[tag=game38]
execute if score hit= 38scores >= min= 38scores run effect give @e[tag=game38] minecraft:glowing infinite 255 true
execute as @e[tag=38id] run data modify entity @s NoAI set value 0b
execute as @a[tag=ingame] run spectate @e[type=minecraft:armor_stand,tag=38cam,limit=1]
data modify storage minecraft:game38 display set from storage minecraft:game38 temp
scoreboard players set count= 38scores 1
execute as @e[tag=38id] if score @s 38scores = count= 38scores run function games:38/camera/display2
data remove storage minecraft:game38 display
data remove storage minecraft:game38 temp
effect clear @e[tag=game38] minecraft:glowing
gamemode adventure @a[tag=ingame]
kill @e[type=minecraft:armor_stand,tag=38cam]
schedule function games:38/end_game 0.5s
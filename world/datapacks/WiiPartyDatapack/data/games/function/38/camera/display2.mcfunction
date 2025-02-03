data modify entity @s Pos set from storage minecraft:game38 display[0][0]
data modify entity @s Rotation set from storage minecraft:game38 display[0][1]
data modify entity @s Sitting set from storage minecraft:game38 display[0][2][0]
execute as @s[type=minecraft:fox] run data modify entity @s Sleeping set from storage minecraft:game38 display[0][3][0]
data remove storage minecraft:game38 display[0]
scoreboard players add count= 38scores 1
execute as @e[tag=38id] if score @s 38scores = count= 38scores run function games:38/camera/display2
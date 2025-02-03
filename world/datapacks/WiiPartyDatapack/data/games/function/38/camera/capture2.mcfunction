data modify storage minecraft:game38 temp2 set value []
data modify storage minecraft:game38 temp2 append from entity @s Pos
data modify storage minecraft:game38 temp2 append from entity @s Rotation
execute as @s[nbt={Sitting:1b}] run data modify storage minecraft:game38 temp2 append value [1b]
execute as @s[nbt={Sitting:0b}] run data modify storage minecraft:game38 temp2 append value [0b]
execute as @s[type=minecraft:fox,nbt={Sleeping:1b}] run data modify storage minecraft:game38 temp2 append value [1b]
execute as @s[type=minecraft:fox,nbt={Sleeping:0b}] run data modify storage minecraft:game38 temp2 append value [0b]
data modify storage minecraft:game38 temp append from storage minecraft:game38 temp2
scoreboard players add count= 38scores 1
execute as @e[tag=38id] if score @s 38scores = count= 38scores run function games:38/camera/capture2
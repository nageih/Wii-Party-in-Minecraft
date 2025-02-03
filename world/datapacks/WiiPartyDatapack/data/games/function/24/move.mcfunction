

#0.141421356 = cos(45)/5 = sin(45)/5 = sqrt(2)/10
execute if predicate games:in_minecart run function general:wasd/calc/main_mount


# Minecart copy player rotation
#data modify entity @e[type=minecart,tag=tempCart,limit=1] Rotation[0] set from entity @s Rotation[0]

#execute if entity @s[tag=local.wasd_w] run say local.wasd_w
#execute if entity @s[tag=local.wasd_s] run say local.wasd_s
#execute if entity @s[tag=local.wasd_a] run say local.wasd_a
#execute if entity @s[tag=local.wasd_d] run say local.wasd_d

## Move minecarts
##W
#execute as @s[tag=local.wasd_w,tag=!local.wasd_a,tag=!local.wasd_d] as @e[type=minecart,tag=tempCart] at @s if block ^0.25 ^ ^ minecraft:air run tp @s ^0.2 ^ ^
##S
#execute as @s[tag=local.wasd_s,tag=!local.wasd_a,tag=!local.wasd_d] as @e[type=minecart,tag=tempCart] at @s if block ^-0.25 ^ ^ minecraft:air run tp @s ^-0.2 ^ ^
##A
#execute as @s[tag=local.wasd_a,tag=!local.wasd_w,tag=!local.wasd_s] as @e[type=minecart,tag=tempCart] at @s if block ^ ^ ^-0.25 minecraft:air run tp @s ^ ^ ^-0.2
##D
#execute as @s[tag=local.wasd_d,tag=!local.wasd_w,tag=!local.wasd_s] as @e[type=minecart,tag=tempCart] at @s if block ^ ^ ^0.25 minecraft:air run tp @s ^ ^ ^0.2
##WD
#execute as @s[tag=local.wasd_w,tag=local.wasd_d] as @e[type=minecart,tag=tempCart] at @s if block ^0.25 ^ ^0.25 minecraft:air run tp @s ^.14 ^ ^.14
##WA
#execute as @s[tag=local.wasd_w,tag=local.wasd_a] as @e[type=minecart,tag=tempCart] at @s if block ^0.25 ^ ^-0.25 minecraft:air run tp @s ^.14 ^ ^-.14
##SD
#execute as @s[tag=local.wasd_s,tag=local.wasd_d] as @e[type=minecart,tag=tempCart] at @s if block ^-0.25 ^ ^0.25 minecraft:air run tp @s ^-.14 ^ ^.14
##SA
#execute as @s[tag=local.wasd_s,tag=local.wasd_a] as @e[type=minecart,tag=tempCart] at @s if block ^-0.25 ^ ^-0.25 minecraft:air run tp @s ^-.14 ^ ^-.14

# Tag linked armor stand
execute if entity @s[team=blue] run tag @e[type=armor_stand,tag=24player,team=blue] add tempPlayer
execute if entity @s[team=red] run tag @e[type=armor_stand,tag=24player,team=red] add tempPlayer
execute if entity @s[team=green] run tag @e[type=armor_stand,tag=24player,team=green] add tempPlayer
execute if entity @s[team=orange] run tag @e[type=armor_stand,tag=24player,team=orange] add tempPlayer


scoreboard players set @s 24dir -1
execute as @s[tag=local.wasd_w,tag=!local.wasd_a,tag=!local.wasd_d] run scoreboard players set @s 24dir 0
execute as @s[tag=local.wasd_d,tag=!local.wasd_w,tag=!local.wasd_s] run scoreboard players set @s 24dir 2
execute as @s[tag=local.wasd_s,tag=!local.wasd_a,tag=!local.wasd_d] run scoreboard players set @s 24dir 4
execute as @s[tag=local.wasd_a,tag=!local.wasd_w,tag=!local.wasd_s] run scoreboard players set @s 24dir 6

execute as @s[tag=local.wasd_w,tag=local.wasd_a] run scoreboard players set @s 24dir 7
execute as @s[tag=local.wasd_w,tag=local.wasd_d] run scoreboard players set @s 24dir 1
execute as @s[tag=local.wasd_s,tag=local.wasd_a] run scoreboard players set @s 24dir 5
execute as @s[tag=local.wasd_s,tag=local.wasd_d] run scoreboard players set @s 24dir 3

execute if score @s 24dir matches 0.. run scoreboard players operation @s 24dir += @s 24offset
execute if score @s 24dir matches 0.. run scoreboard players operation @s 24dir %= 8 Numbers


# Move Armor stand
#W
execute if score @s 24dir matches 0 as @e[type=armor_stand,tag=tempPlayer] at @s if block ~ ~ ~.4 minecraft:air run tp @s ~ ~ ~.25
#D
execute if score @s 24dir matches 2 as @e[type=armor_stand,tag=tempPlayer] at @s if block ~-.4 ~ ~ minecraft:air run tp @s ~-.25 ~ ~
#S
execute if score @s 24dir matches 4 as @e[type=armor_stand,tag=tempPlayer] at @s if block ~ ~ ~-.4 minecraft:air run tp @s ~ ~ ~-.25
#A
execute if score @s 24dir matches 6 as @e[type=armor_stand,tag=tempPlayer] at @s if block ~.4 ~ ~ minecraft:air run tp @s ~.25 ~ ~
#WA
execute if score @s 24dir matches 7 as @e[type=armor_stand,tag=tempPlayer] at @s if block ~0.4 ~ ~0.4 minecraft:air run tp @s ~.176776695 ~ ~.176776695
#WD
execute if score @s 24dir matches 1 as @e[type=armor_stand,tag=tempPlayer] at @s if block ~-0.4 ~ ~0.4 minecraft:air run tp @s ~-.176776695 ~ ~.176776695
#SA
execute if score @s 24dir matches 5 as @e[type=armor_stand,tag=tempPlayer] at @s if block ~0.4 ~ ~-0.4 minecraft:air run tp @s ~.176776695 ~ ~-.176776695
#SD
execute if score @s 24dir matches 3 as @e[type=armor_stand,tag=tempPlayer] at @s if block ~-0.4 ~ ~-0.4 minecraft:air run tp @s ~-.176776695 ~ ~-.176776695
# Face direction even regardless of if its clear
# Move Armor stand
#W
execute if score @s 24dir matches 0 as @e[type=armor_stand,tag=tempPlayer] at @s run tp @s ~ ~ ~ facing ~ ~ ~1
#D
execute if score @s 24dir matches 2 as @e[type=armor_stand,tag=tempPlayer] at @s run tp @s ~ ~ ~ facing ~-1 ~ ~
#S
execute if score @s 24dir matches 4 as @e[type=armor_stand,tag=tempPlayer] at @s run tp @s ~ ~ ~ facing ~ ~ ~-1
#A
execute if score @s 24dir matches 6 as @e[type=armor_stand,tag=tempPlayer] at @s run tp @s ~ ~ ~ facing ~1 ~ ~
#WA
execute if score @s 24dir matches 7 as @e[type=armor_stand,tag=tempPlayer] at @s run tp @s ~ ~ ~ facing ~1 ~ ~1
#WD
execute if score @s 24dir matches 1 as @e[type=armor_stand,tag=tempPlayer] at @s run tp @s ~ ~ ~ facing ~-1 ~ ~1
#SA
execute if score @s 24dir matches 5 as @e[type=armor_stand,tag=tempPlayer] at @s run tp @s ~ ~ ~ facing ~1 ~ ~-1
#SD
execute if score @s 24dir matches 3 as @e[type=armor_stand,tag=tempPlayer] at @s run tp @s ~ ~ ~ facing ~-1 ~ ~-1

tag @s remove local.wasd_w
tag @s remove local.wasd_s
tag @s remove local.wasd_a
tag @s remove local.wasd_d

tag @e[type=armor_stand,tag=tempPlayer] remove tempPlayer


# # Move minecart
# # Calculate  offset
# execute positioned 0.0 0 0.0 run summon marker ^ ^ ^-4 {Tags:["tempDirection"]}
# data modify storage games:24 Pos.x set from entity @e[type=marker,tag=tempDirection,limit=1] Pos[0]
# data modify storage games:24 Pos.y set value 4
# data modify storage games:24 Pos.z set from entity @e[type=marker,tag=tempDirection,limit=1] Pos[2]
# execute if entity @s[team=blue] as @e[type=minecart,tag=maze,tag=blue,limit=1] at @e[type=armor_stand,tag=24player,team=blue] run function games:24/offset_cart with storage games:24 Pos
# kill @e[tag=tempDirection]
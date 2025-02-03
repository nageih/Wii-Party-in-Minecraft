execute unless score volcanoBoostTimer= tiles matches 87 run scoreboard players add volcanoBoostTimer= tiles 1
execute if score volcanoBoostTimer= tiles matches 88.. run scoreboard players add volcanoBoostTimer= tiles 1

execute if score volcanoBoostTimer= tiles matches 20 as @e[type=minecraft:area_effect_cloud,tag=volcanoFake] if score @s volcanoOrder = volcanoTotal= tiles run function board:tiles/volcano/errupt
execute if score volcanoBoostTimer= tiles matches 31 as @e[type=minecraft:area_effect_cloud,tag=volcanoFake] if score @s volcanoOrder = volcanoTotal= tiles run function board:tiles/volcano/errupt
execute if score volcanoBoostTimer= tiles matches 42 as @e[type=minecraft:area_effect_cloud,tag=volcanoFake] if score @s volcanoOrder = volcanoTotal= tiles run function board:tiles/volcano/errupt
execute if score volcanoBoostTimer= tiles matches 53 as @e[type=minecraft:area_effect_cloud,tag=volcanoFake] if score @s volcanoOrder = volcanoTotal= tiles run function board:tiles/volcano/errupt
execute if score volcanoBoostTimer= tiles matches 64 as @e[type=minecraft:area_effect_cloud,tag=volcanoFake] if score @s volcanoOrder = volcanoTotal= tiles run function board:tiles/volcano/errupt
execute if score volcanoBoostTimer= tiles matches 75 as @e[type=minecraft:area_effect_cloud,tag=volcanoFake] if score @s volcanoOrder = volcanoTotal= tiles run function board:tiles/volcano/errupt
execute if score volcanoBoostTimer= tiles matches 86 at @e[type=minecraft:area_effect_cloud,tag=volcanoTile] facing entity @e[type=minecraft:area_effect_cloud,tag=volcanoBoostEnd] feet run playsound minecraft:entity.ender_dragon.shoot master @a[tag=playing] ^ ^80 ^-100 30 0.75

execute as @e[type=minecraft:armor_stand,tag=meteor] at @s run function board:tiles/volcano/travel

execute at @e[type=minecraft:armor_stand,tag=meteor] run particle minecraft:flame ~ ~1 ~ 0.5 0.5 0.5 0.2 3 force @a[tag=!lowDetail]
execute at @e[type=minecraft:armor_stand,tag=meteor] run particle minecraft:large_smoke ~ ~1 ~ 0.5 0.5 0.5 0.1 5 force @a[tag=!lowDetail]
execute at @e[type=minecraft:armor_stand,tag=meteor] run particle minecraft:lava ~ ~1 ~ 0.7 0.7 0.7 0.1 3 force @a[tag=!lowDetail]

execute as @e[type=minecraft:armor_stand,tag=meteor] at @s run function board:tiles/volcano/landed/check_hit

execute unless score volcanoBoostTimer= tiles matches 88.. at @e[type=minecraft:area_effect_cloud,tag=volcanoTile] run tp @a[tag=turn] ~ ~ ~
#execute if score volcanoBoostTimer= tiles matches 88.. at @e[type=minecraft:turtle,tag=boostStand] run tp @a[tag=turn] ~ ~ ~
execute if score volcanoBoostTimer= tiles matches 88.. as @e[type=minecraft:turtle,tag=boostStand] run ride @a[tag=turn,limit=1] mount @s

execute if score volcanoBoostTimer= tiles matches 88.. at @a[tag=turn] run particle minecraft:large_smoke ~ ~1 ~ 0 0 0 0.1 3 force @a[tag=turn]
execute if score volcanoBoostTimer= tiles matches 88.. at @e[type=minecraft:area_effect_cloud,tag=particleTrail,nbt={Age:2}] run particle minecraft:large_smoke ~ ~1 ~ 0 0 0 0.1 3 force @a[tag=turn]

# Moves the turtle towards the end point and creates the trajectory
execute if score volcanoBoostTimer= tiles matches 88.. as @e[type=minecraft:turtle,tag=boostStand] at @s run tp @s ~ ~1 ~
execute if score volcanoBoostTimer= tiles matches 88.. unless entity @e[type=minecraft:area_effect_cloud,distance=..1,tag=volcanoBoostEnd] as @e[type=minecraft:turtle,tag=boostStand] at @s facing entity @e[type=minecraft:area_effect_cloud,tag=volcanoBoostEnd] feet run tp @s ^ ^ ^2
# Slower when in range
execute if score volcanoBoostTimer= tiles matches 88.. if entity @e[type=minecraft:area_effect_cloud,distance=..1,tag=volcanoBoostEnd] as @e[type=minecraft:turtle,tag=boostStand] at @s facing entity @e[type=minecraft:area_effect_cloud,tag=volcanoBoostEnd] feet run tp @s ^ ^ ^.4

# Summons trail AECs at the flying player for the particles
summon minecraft:area_effect_cloud ~ ~ ~ {Duration:3,Tags:["particleTrail"]}

# If the player gets close to the end point, then it runs the end function
execute as @a[tag=turn] at @s if entity @e[type=minecraft:area_effect_cloud,distance=...5,tag=volcanoBoostEnd] run function board:tiles/volcano/landed/end
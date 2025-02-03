function board:dice_roll/tile_clouds

tag @e[type=minecraft:area_effect_cloud,tag=tileCloud] add volcanoTile
tag @e[type=minecraft:area_effect_cloud,tag=tileCloud] remove tileCloud

scoreboard players remove @s boardPos 4

execute if score @s boardPos matches ..-1 run scoreboard players set @s boardPos 0
function board:dice_roll/tile_clouds

tag @e[type=minecraft:area_effect_cloud,tag=tileCloud] add volcanoBoostEnd
tag @e[type=minecraft:area_effect_cloud,tag=tileCloud] remove tileCloud

scoreboard players add @s[scores={boardPos=1..}] boardPos 4
scoreboard players add @s[scores={boardPos=0}] boardPos 1


# Summons a turtle to be teleported along the trajectory
execute at @e[type=minecraft:area_effect_cloud,tag=volcanoTile] run summon minecraft:turtle ~ 0 ~ {Invulnerable:1b,Silent:1b,Age:-100000,Tags:["boostStand"],NoAI:1b}
execute at @e[type=minecraft:area_effect_cloud,tag=volcanoTile] run tp @e[type=minecraft:turtle,tag=boostStand] ~ ~1 ~

# Joins the turtle to the noCollision team so that it doesnt nudge around the player
team join noCollision @e[type=minecraft:turtle,tag=boostStand]

# Gives the turtle invisibility so you cant see it
effect give @e[type=minecraft:turtle,tag=boostStand] minecraft:invisibility 1000000 1 true

# Teleports the player to their tile
tp @a[tag=turn] @e[type=minecraft:turtle,tag=boostStand,limit=1]

# Sets their boardPos to be the same as the tile they just moved to, their newBoard Pos
scoreboard players operation @s boardPos = @s newBoardPos
# Teleports all spectators to the player
execute as @a[tag=turn] run function board:dice_roll/spectator_tp

# Summons 5 area effect clouds for the fake meteors to hit
execute at @e[type=minecraft:area_effect_cloud,tag=volcanoTile] run summon minecraft:area_effect_cloud ~ ~ ~ {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["volcanoFake"]}
execute at @e[type=minecraft:area_effect_cloud,tag=volcanoTile] run summon minecraft:area_effect_cloud ~ ~ ~ {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["volcanoFake"]}
execute at @e[type=minecraft:area_effect_cloud,tag=volcanoTile] run summon minecraft:area_effect_cloud ~ ~ ~ {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["volcanoFake"]}
execute at @e[type=minecraft:area_effect_cloud,tag=volcanoTile] run summon minecraft:area_effect_cloud ~ ~ ~ {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["volcanoFake"]}
execute at @e[type=minecraft:area_effect_cloud,tag=volcanoTile] run summon minecraft:area_effect_cloud ~ ~ ~ {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["volcanoFake"]}
# Gives them each a unique score
scoreboard players set @e[type=minecraft:area_effect_cloud,tag=volcanoFake] volcanoOrder 0
scoreboard players set @e[type=minecraft:area_effect_cloud,tag=volcanoFake,scores={volcanoOrder=0},sort=random,limit=1] volcanoOrder 2
scoreboard players set @e[type=minecraft:area_effect_cloud,tag=volcanoFake,scores={volcanoOrder=0},sort=random,limit=1] volcanoOrder 3
scoreboard players set @e[type=minecraft:area_effect_cloud,tag=volcanoFake,scores={volcanoOrder=0},sort=random,limit=1] volcanoOrder 4
scoreboard players set @e[type=minecraft:area_effect_cloud,tag=volcanoFake,scores={volcanoOrder=0},sort=random,limit=1] volcanoOrder 5
scoreboard players set @e[type=minecraft:area_effect_cloud,tag=volcanoFake,scores={volcanoOrder=0},sort=random,limit=1] volcanoOrder 6
# Runs the set_others function as these new fake AECs to put them into a unique position
execute store result score yPos= tiles run data get entity @e[type=minecraft:area_effect_cloud,tag=volcanoTile,limit=1] Pos[1]
scoreboard players remove yPos= tiles 1
execute as @e[type=minecraft:area_effect_cloud,tag=volcanoFake] at @e[type=minecraft:area_effect_cloud,tag=volcanoTile] run function board:tiles/volcano/landed/set_others
# Spawns the final one
execute at @e[type=minecraft:area_effect_cloud,tag=volcanoTile] run summon minecraft:area_effect_cloud ~ ~ ~ {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["volcanoFake","finalMeteor"]}
scoreboard players set @e[type=minecraft:area_effect_cloud,tag=volcanoFake,tag=finalMeteor] volcanoOrder 1


# Replaces the barriers in the area around the end and start point with structure voids so that the player doesnt take damage when they go through it
execute at @e[type=minecraft:area_effect_cloud,tag=volcanoTile] run fill ~-21 ~-8 ~-21 ~21 ~8 ~21 minecraft:structure_void replace minecraft:barrier
execute at @e[type=minecraft:area_effect_cloud,tag=volcanoBoostEnd] run fill ~-21 ~-8 ~-21 ~21 ~8 ~21 minecraft:structure_void replace minecraft:barrier

scoreboard players set volcanoBoostTimer= tiles 0
scoreboard players set volcanoTotal= tiles 6

attribute @s minecraft:generic.gravity base set 0

playsound minecraft:entity.zombie_villager.cure master @s -214 93 56 30 0.75

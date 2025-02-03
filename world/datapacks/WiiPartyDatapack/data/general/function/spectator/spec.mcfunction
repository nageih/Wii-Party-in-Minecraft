#   Author        =   @ T4Bl3rUs
#   Description   =   Checks if spectators get into blocks
#   Called By     =   general:spectator/main

# Create the aec if your gamemode just changed
execute unless score @s specCheck matches 1.. run scoreboard players add count= specCheck 1
execute unless score @s specCheck matches 1.. run summon minecraft:area_effect_cloud ~ ~ ~ {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["new","speccheck"]}
execute unless score @s specCheck matches 1.. run scoreboard players operation @e[type=minecraft:area_effect_cloud,tag=new,tag=speccheck] specCheck = count= specCheck
execute unless score @s specCheck matches 1.. run tag @e[type=minecraft:area_effect_cloud,tag=new,tag=speccheck] remove new
execute unless score @s specCheck matches 1.. run scoreboard players operation @s specCheck = count= specCheck

# Add tags to the player and the aec
tag @s add this
execute as @e[type=minecraft:area_effect_cloud,tag=speccheck] if score @s specCheck = @a[tag=this,limit=1] specCheck run tag @s add this2

# Get max distance (^2)
scoreboard players operation #dist specOptions = rad= specOptions
scoreboard players operation #dist specOptions *= rad= specOptions

# Get distances (only look at x and z to make it a cylinder)
execute store result score #tempX= specOptions run data get entity @s Pos[0]
execute store result score #tempY= specOptions run data get entity @s Pos[1]
execute store result score #tempZ= specOptions run data get entity @s Pos[2]
scoreboard players operation #tempX= specOptions -= x= specOptions
scoreboard players operation #tempZ= specOptions -= z= specOptions
scoreboard players operation #tempX= specOptions *= #tempX= specOptions
scoreboard players operation #tempZ= specOptions *= #tempZ= specOptions
scoreboard players operation #dist= specOptions = #tempX= specOptions
scoreboard players operation #dist= specOptions += #tempZ= specOptions

# Tps the aec and the player (if necessary) (barriers and lights can't get tags for some reason)
scoreboard players set #success specOptions 0
execute if block ~ ~1 ~ #board:spec_proof if block ~ ~2 ~ #board:spec_proof if score #dist= specOptions <= #dist specOptions if score #tempY= specOptions >= miny= specOptions if score #tempY= specOptions <= maxy= specOptions run scoreboard players set #success specOptions 1
execute if block ~ ~1 ~ minecraft:light if block ~ ~2 ~ #board:spec_proof if score #dist= specOptions <= #dist specOptions if score #tempY= specOptions >= miny= specOptions if score #tempY= specOptions <= maxy= specOptions run scoreboard players set #success specOptions 1
execute if block ~ ~1 ~ #board:spec_proof if block ~ ~2 ~ minecraft:light if score #dist= specOptions <= #dist specOptions if score #tempY= specOptions >= miny= specOptions if score #tempY= specOptions <= maxy= specOptions run scoreboard players set #success specOptions 1
execute if block ~ ~1 ~ minecraft:light if block ~ ~2 ~ minecraft:light if score #dist= specOptions <= #dist specOptions if score #tempY= specOptions >= miny= specOptions if score #tempY= specOptions <= maxy= specOptions run scoreboard players set #success specOptions 1
execute if block ~ ~1 ~ minecraft:barrier if block ~ ~2 ~ #board:spec_proof if score #dist= specOptions <= #dist specOptions if score #tempY= specOptions >= miny= specOptions if score #tempY= specOptions <= maxy= specOptions run scoreboard players set #success specOptions 1
execute if block ~ ~1 ~ #board:spec_proof if block ~ ~2 ~ minecraft:barrier if score #dist= specOptions <= #dist specOptions if score #tempY= specOptions >= miny= specOptions if score #tempY= specOptions <= maxy= specOptions run scoreboard players set #success specOptions 1
execute if block ~ ~1 ~ minecraft:barrier if block ~ ~2 ~ minecraft:barrier if score #dist= specOptions <= #dist specOptions if score #tempY= specOptions >= miny= specOptions if score #tempY= specOptions <= maxy= specOptions run scoreboard players set #success specOptions 1
execute if block ~ ~1 ~ minecraft:barrier if block ~ ~2 ~ minecraft:light if score #dist= specOptions <= #dist specOptions if score #tempY= specOptions >= miny= specOptions if score #tempY= specOptions <= maxy= specOptions run scoreboard players set #success specOptions 1
execute if block ~ ~1 ~ minecraft:light if block ~ ~2 ~ minecraft:barrier if score #dist= specOptions <= #dist specOptions if score #tempY= specOptions >= miny= specOptions if score #tempY= specOptions <= maxy= specOptions run scoreboard players set #success specOptions 1
# Can @s (aligned to the player) or ~ ~ ~ (aligned to the block)
execute if score #success specOptions matches 1 run tp @e[type=minecraft:area_effect_cloud,tag=this2,limit=1] @s

execute if score #success specOptions matches 0 at @e[type=minecraft:area_effect_cloud,tag=this2,limit=1] run tp @s ~ ~ ~
# Reduces most of the motion
execute if score #success specOptions matches 0 run gamemode adventure
execute if score #success specOptions matches 0 run gamemode spectator
#execute unless block ~ ~1 ~ #board:spec_proof unless block ~ ~2 ~ #board:spec_proof unless score #dist= specOptions <= #dist specOptions run execute at @e[type=area_effect_cloud,tag=this2,limit=1] run tp @s ~ ~ ~
#execute if block ~ ~1 ~ #board:spec_proof unless block ~ ~2 ~ #board:spec_proof unless score #dist= specOptions <= #dist specOptions run execute at @e[type=area_effect_cloud,tag=this2,limit=1] run tp @s ~ ~ ~
#execute unless block ~ ~1 ~ #board:spec_proof if block ~ ~2 ~ #board:spec_proof unless score #dist= specOptions <= #dist specOptions run execute at @e[type=area_effect_cloud,tag=this2,limit=1] run tp @s ~ ~ ~
#execute if block ~ ~1 ~ #board:spec_proof if block ~ ~2 ~ #board:spec_proof unless score #dist= specOptions <= #dist specOptions run execute at @e[type=area_effect_cloud,tag=this2,limit=1] run tp @s ~ ~ ~
#execute unless block ~ ~1 ~ #board:spec_proof unless block ~ ~2 ~ #board:spec_proof if score #dist= specOptions <= #dist specOptions run execute at @e[type=area_effect_cloud,tag=this2,limit=1] run tp @s ~ ~ ~
#execute unless block ~ ~1 ~ #board:spec_proof if block ~ ~2 ~ #board:spec_proof if score #dist= specOptions <= #dist specOptions run execute at @e[type=area_effect_cloud,tag=this2,limit=1] run tp @s ~ ~ ~
#execute if block ~ ~1 ~ #board:spec_proof unless block ~ ~2 ~ #board:spec_proof if score #dist= specOptions <= #dist specOptions run execute at @e[type=area_effect_cloud,tag=this2,limit=1] run tp @s ~ ~ ~

# Remove the tags
tag @s remove this
tag @e[type=minecraft:area_effect_cloud,tag=this2] remove this2
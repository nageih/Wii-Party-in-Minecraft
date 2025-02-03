function lobby:main

function general:wasd/base/loop

function games:repeat

function board:movetiles
function board:repeating

function general:new_check/main

#creates random number
#execute store result score %num rng run loot spawn ~ ~ ~ loot board:normaldice


execute if score yeet tiles matches 2 as @e[type=minecraft:armor_stand,tag=yeet1] at @s facing entity @e[type=minecraft:area_effect_cloud,tag=yeetend1,sort=nearest,limit=1] feet run tp @s ^ ^ ^3
execute if score yeet tiles matches 2 as @e[type=minecraft:armor_stand,tag=yeet2] at @s facing entity @e[type=minecraft:area_effect_cloud,tag=yeetend1,sort=nearest,limit=1] feet run tp @s ^ ^ ^3
execute if score yeet tiles matches 1.. at @e[type=minecraft:armor_stand,tag=yeet1,limit=1] run tp @a[tag=turn] ~ ~ ~
execute if score yeet tiles matches 1.. at @e[type=minecraft:armor_stand,tag=yeet2,limit=1] run tp @a[tag=turn] ~ ~ ~

function general:resets/grass_paths

### # Plots
### gamemode creative @a[tag=!plots]
### tp @a[tag=!plots] -2000.0 56 -2000.0
### tag @a[tag=!plots] add plots

# Tester tag
# Given to anyone who joins before the official release
tag @a add beta-player

#Event advancements
advancement grant @a[scores={eventClueCount=4..}] only advancements:island/zphil
advancement grant @a[scores={eventClueCount=7}] only advancements:island/zmatt

execute as @a if score @s rprefresh matches 1.. unless score @s rp matches 1.. run function general:rp
scoreboard players set @a[scores={rprefresh=1..}] rprefresh 0
scoreboard players set @a[scores={rp=1..}] rp 1

effect give @a saturation infinite 255 true
effect give @a regeneration infinite 255 true
# ?????? why the fuck is this here
effect clear @a mining_fatigue

scoreboard players reset @a rightClick

# STOP VILDER FROM DROPPING HIS FUCKING DICE
execute at @e[type=minecraft:item] run data merge entity @e[type=item,limit=1,sort=nearest,nbt={Item:{components:{"minecraft:custom_data":{dice:1b}}}}] {PickupDelay:0s}
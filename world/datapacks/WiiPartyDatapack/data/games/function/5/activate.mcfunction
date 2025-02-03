tag @e[type=minecraft:armor_stand,tag=firework,tag=!double,sort=nearest,limit=1] add primed

playsound minecraft:block.piston.extend master @a ~ ~ ~ 3

data modify entity @e[type=minecraft:item_frame,tag=detonator,sort=nearest,limit=1] Item.components."minecraft:custom_model_data" set value 5002

tp @s ~ ~-70 ~

scoreboard players set currentRay= 5scores 30

tp @e[type=minecraft:villager,distance=..2,tag=detonator] ~ -70 ~
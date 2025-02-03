data merge entity @e[type=glow_item_frame,tag=23rail,distance=..0.25,limit=1] {ItemRotation:6b,Item:{id:"minecraft:rail",count:1,components:{"minecraft:custom_model_data":9}}}

execute positioned ~ ~ ~1 run kill @e[type=glow_item_frame,tag=23rail,distance=..0.25]
execute positioned ~1 ~ ~1 run kill @e[type=glow_item_frame,tag=23rail,distance=..0.25]
execute positioned ~1 ~ ~2 run kill @e[type=glow_item_frame,tag=23rail,distance=..0.25]
execute positioned ~2 ~ ~2 run kill @e[type=glow_item_frame,tag=23rail,distance=..0.25]

execute positioned ~3 ~ ~1 run clone 24011 27 23990 24010 28 23988 ~ ~ ~

execute positioned ~3 ~ ~2 run summon marker ~ ~ ~ {Tags:["23crash"]}

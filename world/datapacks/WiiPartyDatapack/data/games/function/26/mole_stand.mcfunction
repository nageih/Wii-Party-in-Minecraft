data merge entity @s {Fire:20s}
execute at @e[type=minecraft:slime,tag=mole,sort=nearest,limit=1] run tp @s ~ ~ ~
data merge entity @s[tag=!golden,tag=!sus] {ArmorItems:[{},{},{},{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_model_data":26010},count:1}]}
data merge entity @s[tag=golden] {ArmorItems:[{},{},{},{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_model_data":26011},count:1}]}
data merge entity @s[tag=sus] {ArmorItems:[{},{},{},{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_model_data":26012},count:1}]}
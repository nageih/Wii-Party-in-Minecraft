execute if entity @s[tag=!blue,tag=!red,tag=!green,tag=!orange] unless entity @e[type=item_display,tag=!36set,tag=36card,tag=blue] run tag @s add blue
execute if entity @s[tag=!blue,tag=!red,tag=!green,tag=!orange] unless entity @e[type=item_display,tag=!36set,tag=36card,tag=red] run tag @s add red
execute if entity @s[tag=!blue,tag=!red,tag=!green,tag=!orange] unless entity @e[type=item_display,tag=!36set,tag=36card,tag=green] run tag @s add green
execute if entity @s[tag=!blue,tag=!red,tag=!green,tag=!orange] unless entity @e[type=item_display,tag=!36set,tag=36card,tag=orange] run tag @s add orange


data modify entity @s[tag=blue] item.components."minecraft:custom_model_data" set value 36001
data modify entity @s[tag=red] item.components."minecraft:custom_model_data" set value 36002
data modify entity @s[tag=green] item.components."minecraft:custom_model_data" set value 36003
data modify entity @s[tag=orange] item.components."minecraft:custom_model_data" set value 36004
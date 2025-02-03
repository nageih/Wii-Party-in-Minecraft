
execute as @a[team=blue] as @e[type=minecraft:item_display,tag=4cart,tag=blue] run tag @s add tempCart
execute as @a[team=red] as @e[type=minecraft:item_display,tag=4cart,tag=red] run tag @s add tempCart
execute as @a[team=green] as @e[type=minecraft:item_display,tag=4cart,tag=green] run tag @s add tempCart
execute as @a[team=orange] as @e[type=minecraft:item_display,tag=4cart,tag=orange] run tag @s add tempCart

tag @s remove 4super
tag @n[tag=tempCart] remove 4super
data modify entity @n[tag=tempCart,tag=blue] item.components.minecraft:custom_model_data set value 4002
data modify entity @n[tag=tempCart,tag=red] item.components.minecraft:custom_model_data set value 4003
data modify entity @n[tag=tempCart,tag=green] item.components.minecraft:custom_model_data set value 4004
data modify entity @n[tag=tempCart,tag=orange] item.components.minecraft:custom_model_data set value 4005

playsound minecraft:block.beacon.deactivate master @a ~ ~ ~ 1 2

tag @e remove tempCart
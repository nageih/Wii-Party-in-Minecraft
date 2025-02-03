execute unless score choosing= 23scores matches 1 run tp @s ~-.2 ~ ~
execute unless score choosing= 23scores matches 1 align y positioned ~-.5 ~ ~ if entity @e[type=glow_item_frame,tag=23rail,dx=0,dy=0,dz=0,nbt={Item:{id:"minecraft:rail",count:1,components:{"minecraft:custom_model_data":8}}}] at @s run tp @s ~ ~.25 ~
execute if score choosing= 23scores matches 1 run tp @s ~-.125 ~ ~
execute if score choosing= 23scores matches 1 align y positioned ~-.5 ~ ~ if entity @e[type=glow_item_frame,tag=23rail,dx=0,dy=0,dz=0,nbt={Item:{id:"minecraft:rail",count:1,components:{"minecraft:custom_model_data":8}}}] at @s run tp @s ~ ~.25 ~

# If encounter split while turning the direction
tag @p[tag=ingame] add 23player
execute if entity @a[tag=23player,tag=23left] positioned ~-.5 ~ ~ if entity @e[type=glow_item_frame,tag=23rail,dx=0,dy=0,dz=0,nbt={ItemRotation:0b,Item:{id:"minecraft:rail",count:1,components:{"minecraft:custom_model_data":7}}}] run tag @s add 23moveleft
execute if entity @a[tag=23player,tag=23right] positioned ~-.5 ~ ~ if entity @e[type=glow_item_frame,tag=23rail,dx=0,dy=0,dz=0,nbt={ItemRotation:0b,Item:{id:"minecraft:rail",count:1,components:{"minecraft:custom_model_data":7}}}] run tag @s add 23moveright
tag @a remove 23player
# Turn back after split
execute if block ~ ~-2 ~ oak_planks run tag @s add 23moveright
execute if block ~ ~-2 ~ birch_planks run tag @s add 23moveleft

execute if entity @s[tag=blue] run tp @e[type=item_display,tag=23cart,tag=blue] ~.4 ~.6 ~
execute if entity @s[tag=red] run tp @e[type=item_display,tag=23cart,tag=red] ~.4 ~.6 ~
execute if entity @s[tag=green] run tp @e[type=item_display,tag=23cart,tag=green] ~.4 ~.6 ~
execute if entity @s[tag=orange] run tp @e[type=item_display,tag=23cart,tag=orange] ~.4 ~.6 ~
execute if entity @s[tag=blue] run ride @a[team=blue,limit=1] mount @s
execute if entity @s[tag=red] run ride @a[team=red,limit=1] mount @s
execute if entity @s[tag=green] run ride @a[team=green,limit=1] mount @s
execute if entity @s[tag=orange] run ride @a[team=orange,limit=1] mount @s

execute as @e[type=item_display,tag=23cart] store result entity @s Air double 1 run time query gametime


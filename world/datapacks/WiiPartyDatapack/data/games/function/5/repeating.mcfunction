#   Author        =   @ JevinLevin
#   Description   =   Main tick function for the minigame
#   Called By     =   games:repeat

execute if score ingame= 5scores matches 2 run team leave @e[type=minecraft:armor_stand,tag=firework,tag=!selected]
execute if score ingame= 5scores matches 2 run team leave @e[type=minecraft:item_frame,tag=detonator,tag=!selected]

execute if score ingame= 5scores matches 2 unless entity @a[tag=ingame,tag=!selected] run function games:5/start_light

execute if score ingame= 5scores matches 1.. as @a[tag=ingame] at @s run function games:5/player

execute if score ingame= 5scores matches 3 unless entity @e[type=minecraft:armor_stand,tag=firework,tag=!double,tag=!primed] run function games:5/start_launch

execute if score ingame= 5scores matches 4..6 run function games:5/launching

execute as @e[type=minecraft:area_effect_cloud,tag=finalFirework] at @s positioned ~ ~1 ~ run function games:5/final_animation


# Handles the hidden carrot on a stick in the players offhand
    # If the player removes the carrot on a stick from their offhand, it clears it so they cant put it anywhere else
execute if score ingame= 5scores matches 1..2 as @a[tag=ingame] unless predicate games:5coas run clear @s minecraft:carrot_on_a_stick[minecraft:custom_data={5pointer:1b}]
    # If the player has no carrot on a stick then it gives a new one in their offhand
execute if score ingame= 5scores matches 1..2 as @a[tag=ingame] unless predicate games:5coas run item replace entity @s weapon.offhand with minecraft:carrot_on_a_stick[minecraft:custom_model_data=1,minecraft:custom_name='{"text":"","type":"text"}',minecraft:custom_data={5pointer:1b}]
    # Kills all carrot on a stick items with the tpointer:1b tag
kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{5pointer:1b}}}}]
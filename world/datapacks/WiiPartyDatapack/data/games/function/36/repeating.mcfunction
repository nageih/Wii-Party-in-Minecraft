# Offhand stick for right click detection
clear @a[tag=ingame] minecraft:carrot_on_a_stick[minecraft:custom_data={36click:1b}]
kill @e[type=item,nbt={Item:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{36click:1b}}}}]
execute if score ingame= 36scores matches 1.. run item replace entity @a[tag=ingame] weapon.offhand with carrot_on_a_stick[unbreakable={},custom_model_data=1,custom_data={36click:1b},hide_tooltip={},hide_additional_tooltip={}] 1


# Raycast
execute as @a[tag=36turn] at @s run function games:36/raycast_init

# On click
execute as @a[tag=ingame,tag=36turn] if score @s rightClick matches 1.. as @e[type=item_display,tag=36card,tag=36select,tag=!36valid,tag=36active,tag=!36finish] run function games:36/select

# STAY IN BOX
execute as @a[tag=ingame] unless entity @s[x=35987,y=28,z=35989,dx=22,dy=5,dz=22] run tp @s 35997 32 35999

execute store result score left= 36scores if entity @a[tag=ingame,tag=!36finished]
execute if score ingame= 36scores matches 1.. unless score left= 36scores matches 2.. run schedule function games:36/finish 20t append
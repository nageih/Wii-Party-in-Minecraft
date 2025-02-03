tag @a[tag=ingame] add new_check

title @a[tag=new_check] times 0 100 0

scoreboard players set stage= newCheck 1
scoreboard players set choice= newCheck 0

item replace entity @a[tag=new_check] weapon.offhand with minecraft:carrot_on_a_stick[minecraft:custom_model_data=1,minecraft:custom_name='{"text":"","type":"text"}']

execute as @a[tag=new_check] at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 3 1
kill @e[type=spectral_arrow]

execute if score ingame= 16scores matches 2 as @a[tag=ingame,tag=!16dead,tag=!16punched,tag=16charged] unless predicate games:16punch run function games:16/give_punch
execute if score ingame= 16scores matches 2 as @a[tag=ingame,tag=!16dead,tag=!16punched,tag=16charged] if predicate games:16punch unless data entity @s SelectedItem.components.minecraft:charged_projectiles run function games:16/give_punch

# Charge logic
scoreboard players remove @a[tag=ingame,scores={16cooldown=1..}] 16cooldown 1
scoreboard players add @a[tag=16charging] 16charge 1
execute as @a[scores={16charge=18},tag=!16charged] at @s run function games:16/charged
# execute as @a[scores={16charge=20..}] at @s run function games:16/punch
scoreboard players reset @a[tag=!16charging] 16charge
tag @a remove 16charging

# Use Punch
# execute if score ingame= 16scores matches 2 as @a[tag=ingame,tag=16charged] at @s anchored eyes if predicate games:16punched unless score @s 16cooldown matches 1.. run function games:16/punch

# Give/Kill items
execute if score ingame= 16scores matches 2 as @a[tag=ingame,tag=!16dead,tag=!16punched,tag=!16charged] unless predicate games:16crossbow run function games:16/give_crossbow
execute if score ingame= 16scores matches 2 as @a[tag=ingame,tag=!16dead,tag=!16charged] unless score @s 16cooldown matches 1.. unless predicate games:16arrow run function games:16/give_arrow
kill @e[type=item,nbt={Item:{id:"minecraft:crossbow",count:1,components:{"minecraft:custom_data":{16punch:1b}}}}]
kill @e[type=item,nbt={Item:{id:"minecraft:carrot_on_a_stick",count:1,components:{"minecraft:custom_data":{16temp:1b}}}}]
kill @e[type=item,nbt={Item:{id:"minecraft:arrow",count:1,components:{"minecraft:custom_data":{16punch:1b}}}}]

# Kill arrows
execute as @e[type=arrow,tag=16arrow] run scoreboard players add @s 16arrow 1
kill @e[type=arrow,tag=16arrow,scores={16arrow=2..}]
kill @e[type=arrow,tag=16arrow,nbt={inGround:1b}]


# Death detection
execute if score ingame= 16scores matches 2 as @a[tag=ingame,tag=!16dead] at @s if entity @s[y=13,dy=-10] run function games:16/die

# End logic
execute store result score alive= 16scores if entity @a[tag=ingame,tag=!16dead]
execute if score ingame= 16scores matches 2 if score alive= 16scores matches ..1 run function games:16/finish

# Tp interactions
execute as @a[tag=ingame,team=blue,tag=16charged] at @s anchored eyes positioned ^ ^ ^0.5 run tp @e[type=interaction,tag=blue,tag=16interact] ~ ~-0.5 ~
execute as @a[tag=ingame,team=red,tag=16charged] at @s anchored eyes positioned ^ ^ ^0.5 run tp @e[type=interaction,tag=red,tag=16interact] ~ ~-0.5 ~
execute as @a[tag=ingame,team=green,tag=16charged] at @s anchored eyes positioned ^ ^ ^0.5 run tp @e[type=interaction,tag=green,tag=16interact] ~ ~-0.5 ~
execute as @a[tag=ingame,team=orange,tag=16charged] at @s anchored eyes positioned ^ ^ ^0.5 run tp @e[type=interaction,tag=orange,tag=16interact] ~ ~-0.5 ~
execute as @a[tag=ingame,team=blue,scores={16charge=1..}] at @s anchored eyes positioned ^ ^ ^0.5 run tp @e[type=interaction,tag=blue,tag=16interact] ~ ~-0.5 ~
execute as @a[tag=ingame,team=red,scores={16charge=1..}] at @s anchored eyes positioned ^ ^ ^0.5 run tp @e[type=interaction,tag=red,tag=16interact] ~ ~-0.5 ~
execute as @a[tag=ingame,team=green,scores={16charge=1..}] at @s anchored eyes positioned ^ ^ ^0.5 run tp @e[type=interaction,tag=green,tag=16interact] ~ ~-0.5 ~
execute as @a[tag=ingame,team=orange,scores={16charge=1..}] at @s anchored eyes positioned ^ ^ ^0.5 run tp @e[type=interaction,tag=orange,tag=16interact] ~ ~-0.5 ~
execute as @a[tag=ingame,team=blue,tag=!16charged] unless score @s 16charge matches 1.. at @s anchored eyes run tp @e[type=interaction,tag=blue,tag=16interact] ~ ~-10 ~
execute as @a[tag=ingame,team=red,tag=!16charged] unless score @s 16charge matches 1.. at @s anchored eyes run tp @e[type=interaction,tag=red,tag=16interact] ~ ~-10 ~
execute as @a[tag=ingame,team=green,tag=!16charged] unless score @s 16charge matches 1.. at @s anchored eyes run tp @e[type=interaction,tag=green,tag=16interact] ~ ~-10 ~
execute as @a[tag=ingame,team=orange,tag=!16charged] unless score @s 16charge matches 1.. at @s anchored eyes run tp @e[type=interaction,tag=orange,tag=16interact] ~ ~-10 ~
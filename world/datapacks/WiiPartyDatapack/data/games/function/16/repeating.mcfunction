
# Charge logic
scoreboard players add @a[tag=16charging] 16charge 1
execute as @a[scores={16charge=26}] at @s run function games:16/charged
execute as @a[tag=!16charging,scores={16charge=26..}] at @s run function games:16/punch
scoreboard players reset @a[tag=!16charging] 16charge
tag @a remove 16charging

# Give/Kill items
execute if score ingame= 16scores matches 2 as @a[tag=ingame,tag=!16charged,tag=!16dead] unless predicate games:16crossbow run function games:16/give_crossbow
execute if score ingame= 16scores matches 2 as @a[tag=ingame,tag=!16charged,tag=!16dead] unless predicate games:16arrow run function games:16/give_arrow
kill @e[type=item,nbt={Item:{id:"minecraft:crossbow",count:1,components:{"minecraft:custom_data":{16punch:1b}}}}]
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
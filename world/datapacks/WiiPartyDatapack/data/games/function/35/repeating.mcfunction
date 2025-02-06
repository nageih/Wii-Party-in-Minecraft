# Init
execute if score ingame= 35scores matches -1 if loaded 35088 68 35024 if loaded 35118 80 35024 run function games:35/init

# End logic
execute store result score unfinished= 35scores if entity @a[tag=ingame,tag=!35finished]
execute if score ingame= 35scores matches 2 if score unfinished= 35scores matches ..1 run function games:35/finish

# Step prevention
execute as @e[type=marker,tag=35step] at @s run function games:35/step_prevention_f
execute as @e[type=marker,tag=35step] at @s unless score travel= 35scores matches 1 run function games:35/step_prevention_b

# Give items
execute as @a[tag=ingame] unless score show= 35scores matches 1 run function games:35/give_choose
execute as @a[tag=ingame] if score show= 35scores matches 1 if score @s 35num matches 1..5 unless predicate games:35show run function games:35/give_show
kill @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{35step:1b}}}}]


# Countdown
execute if score countdown= 35scores matches 1 run function games:35/countdown
execute if score countdown= 35scores matches 1 as @a[tag=ingame,scores={rightClick=1..}] run function games:35/lock

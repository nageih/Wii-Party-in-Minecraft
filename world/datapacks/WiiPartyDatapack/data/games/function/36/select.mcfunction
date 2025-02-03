data merge entity @s {start_interpolation:-1,interpolation_duration:6,transformation:[-0.001f,-0f,1f,0f,0.002f,-1f,0f,-0.37f,1f,0.002f,0.001f,0f,0f,0f,0f,1f]}

tag @s add 36selected

scoreboard players set valid= 36scores 1

execute if entity @a[tag=36turn,team=blue] if entity @s[tag=blue] run scoreboard players set valid= 36scores 2
execute if entity @a[tag=36turn,team=red] if entity @s[tag=red] run scoreboard players set valid= 36scores 2
execute if entity @a[tag=36turn,team=green] if entity @s[tag=green] run scoreboard players set valid= 36scores 2
execute if entity @a[tag=36turn,team=orange] if entity @s[tag=orange] run scoreboard players set valid= 36scores 2

execute if score valid= 36scores matches 2 run tag @e[type=item_display,tag=36card,tag=36selected] add 36valid

tag @e[type=item_display,tag=36selected] remove 36selected

# Prevent more cards being picked up
tag @e[type=item_display,tag=36card] remove 36active 

execute if score valid= 36scores matches 2 run schedule function games:36/pick_valid 6t
execute if score valid= 36scores matches 1 run schedule function games:36/pick_invalid 10t

execute at @s run playsound minecraft:item.book.page_turn master @a ~ ~ ~ 3 1.5
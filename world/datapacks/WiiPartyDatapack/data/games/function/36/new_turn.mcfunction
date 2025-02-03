scoreboard players add cur= 36order 1

tag @a[tag=ingame] remove 36turn

execute as @e[type=item_display,tag=36card,tag=36finish] run data merge entity @s {Glowing:0b}

execute as @a[tag=ingame,tag=!36finished] if score @s 36order = cur= 36order run tag @s add 36turn

execute if entity @a[tag=36turn] run tellraw @a[tag=playing,tag=!36turn] {"nbt":"colors.base","storage":"minecraft:config","interpret":true,"extra":[{"translate":"game.FaceFlip.NewTurn","with":[{"selector":"@a[tag=36turn]"}]}],"source":"storage","type":"nbt"}
execute if entity @a[tag=36turn] run tellraw @a[tag=36turn] {"nbt":"colors.base","storage":"minecraft:config","interpret":true,"extra":[{"translate":"game.FaceFlip.NewTurn","with":[{"selector":"@a[tag=36turn]","bold":true}]}],"source":"storage","type":"nbt"}

execute if entity @a[tag=36turn] as @a[tag=playing] at @s run playsound block.note_block.pling master @s

# Loop back to first player
execute if score cur= 36order = max= 36order run scoreboard players set cur= 36order 0

# execute if entity @a[tag=ingame,tag=36turn,team=blue] run team join blue @e[type=item_display,tag=36card]
# execute if entity @a[tag=ingame,tag=36turn,team=red] run team join red @e[type=item_display,tag=36card]
# execute if entity @a[tag=ingame,tag=36turn,team=green] run team join green @e[type=item_display,tag=36card]
# execute if entity @a[tag=ingame,tag=36turn,team=orange] run team join orange @e[type=item_display,tag=36card]


scoreboard players set phase= 36scores 1
tag @e[type=item_display,tag=36card,tag=phase1] add 36active 
execute as @e[type=item_display,tag=36card] run data merge entity @s {Glowing:0b}
execute as @e[type=item_display,tag=36card,tag=phase1,tag=!36finish] run data merge entity @s {Glowing:1b}

# Failsafe incase player leaves just repeat function
execute unless entity @a[tag=36turn] run function games:36/new_turn

# If there are no more players end
execute store result score 36scores playersleft if entity @a[tag=ingame,tag=!36finished]
execute if score playersleft 36scores matches ..1 run function games:36/finish
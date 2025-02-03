#   Author        =   @ JevinLevin
#   Description   =   Ran every tick
#   Called By     =   general:mainrepeating

# If the player rolling leave
execute if score rolling= dice matches 1 unless entity @a[tag=turn] run function board:dice_roll/end_go

# Runs the main_throw function as all throw armor stands
execute as @e[type=minecraft:armor_stand,tag=throw] at @s run function board:dice_roll/main_throw

# If the player right clicks and is holding a dice, runs the main_player function
execute as @a[scores={rightClick=1..}] if predicate board:dice at @s run function board:dice_roll/main_player

# Runs the main_dice function as all dice, both the moving one and the model one
execute as @e[type=minecraft:armor_stand,tag=diceroll] at @s run function board:dice_roll/main_dice

# Runs the check_bounce function as all dice, first as the armor stand with the model, then as the one that moves
execute as @e[type=minecraft:armor_stand,tag=throwdisplay,tag=!stopbouncing] run function board:dice_roll/check_bounce
execute as @e[type=minecraft:armor_stand,tag=throw,tag=!stopbouncing] run function board:dice_roll/check_bounce

# When the player is moving, runs the tiles function that checks if the player reaches a tile
execute if score moving= dice matches 1 as @a[tag=turn] run function board:dice_roll/tiles

# If any dice is settled, runs the function that handles movement and despawn timer
execute if entity @e[type=minecraft:chicken,tag=diceroll] run function board:dice_roll/main_settled

# Runs the spectator_prevention function as all spectators. This will prevent them from being able to go inside walls
execute if score testing options matches 0 run function general:spectator/main

# Teleports the player back to their tile if they go out of bounds
execute if score rolling= dice matches 1 as @a[tag=turn] at @s if block ~ ~1 ~ minecraft:void_air at @e[type=minecraft:area_effect_cloud,tag=tileCloud] run function board:dice_roll/prevent/out_of_bounds

execute unless score dino= tiles matches 1.. unless score ufo= tiles matches 1.. unless score eventRoll= tiles matches 1.. if score rolling= dice matches 1 unless score moving= dice matches 1 unless score double= dice matches 1 if entity @a[tag=turn,tag=1st] run title @a[tag=playing] actionbar [{"color":"white","score":{"name":"normal=","objective":"dice"}},{"text":"-","color":"gray"},{"color":"#E0BF7D","score":{"name":"golden=","objective":"dice"}}]
execute unless score dino= tiles matches 1.. unless score ufo= tiles matches 1.. unless score eventRoll= tiles matches 1.. if score rolling= dice matches 1 unless score moving= dice matches 1 unless score double= dice matches 1 if entity @a[tag=turn,tag=2nd] run title @a[tag=playing] actionbar [{"color":"white","score":{"name":"normal=","objective":"dice"}},{"text":"-","color":"gray"},{"color":"#AFD0DB","score":{"name":"silver=","objective":"dice"}}]
execute unless score dino= tiles matches 1.. unless score ufo= tiles matches 1.. unless score eventRoll= tiles matches 1.. if score rolling= dice matches 1 unless score moving= dice matches 1 unless score double= dice matches 1 if entity @a[tag=turn,tag=3rd] run title @a[tag=playing] actionbar [{"color":"white","score":{"name":"normal=","objective":"dice"}},{"text":"-","color":"gray"},{"color":"#B87050","score":{"name":"bronze=","objective":"dice"}}]

execute unless score dino= tiles matches 1.. unless score ufo= tiles matches 1.. unless score eventRoll= tiles matches 1.. if score rolling= dice matches 1 unless score moving= dice matches 1 if score double= dice matches 1 if entity @a[tag=turn,tag=1st] run title @a[tag=playing] actionbar [{"color":"white","score":{"name":"normal=","objective":"dice"}},{"text":"-","color":"gray"},{"color":"#E0BF7D","score":{"name":"golden=","objective":"dice"}},{"text":"-","color":"gray"},{"color":"white","score":{"name":"doubleroll=","objective":"dice"}}]
execute unless score dino= tiles matches 1.. unless score ufo= tiles matches 1.. unless score eventRoll= tiles matches 1.. if score rolling= dice matches 1 unless score moving= dice matches 1 if score double= dice matches 1 if entity @a[tag=turn,tag=2nd] run title @a[tag=playing] actionbar [{"color":"white","score":{"name":"normal=","objective":"dice"}},{"text":"-","color":"gray"},{"color":"#AFD0DB","score":{"name":"silver=","objective":"dice"}},{"text":"-","color":"gray"},{"color":"white","score":{"name":"doubleroll=","objective":"dice"}}]
execute unless score dino= tiles matches 1.. unless score ufo= tiles matches 1.. unless score eventRoll= tiles matches 1.. if score rolling= dice matches 1 unless score moving= dice matches 1 if score double= dice matches 1 if entity @a[tag=turn,tag=3rd] run title @a[tag=playing] actionbar [{"color":"white","score":{"name":"normal=","objective":"dice"}},{"text":"-","color":"gray"},{"color":"#B87050","score":{"name":"bronze=","objective":"dice"}},{"text":"-","color":"gray"},{"color":"white","score":{"name":"doubleroll=","objective":"dice"}}]

execute unless score dino= tiles matches 1.. unless score ufo= tiles matches 1.. unless score eventRoll= tiles matches 1.. if score rolling= dice matches 1 unless score moving= dice matches 1 if entity @a[tag=turn,tag=4th] run title @a[tag=playing] actionbar [{"color":"white","score":{"name":"normal=","objective":"dice"}}]

execute as @e[type=minecraft:area_effect_cloud,tag=diceText] at @s run tp @s ~ ~.075 ~
execute as @e[type=minecraft:area_effect_cloud,tag=diceText] store result entity @s Air double 1 run time query gametime
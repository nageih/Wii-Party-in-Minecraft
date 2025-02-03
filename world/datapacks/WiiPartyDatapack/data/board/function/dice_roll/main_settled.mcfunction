#   Author        =   @ T4Bl3rUs
#   Description   =   Ran every tick if at least 1 dice is settled
#   Called By     =   board:dice_roll/main

effect clear @a[tag=turn] weakness

# Reduce the countdown for every dice by 1 each tick
scoreboard players operation @e[type=minecraft:chicken,tag=dicex] diceDespawn += -1 Numbers

# Remove most of the dice's friction to make it go further
execute as @e[type=minecraft:chicken,tag=dicex] run data modify entity @s Motion[1] set value 0.0d

# Check if the dice has been moved and adjust the new position
execute as @e[type=minecraft:chicken,tag=dicex] at @s run function board:dice_roll/move

# Delete dices if their countdown reaches 0
execute as @e[type=minecraft:chicken,tag=dicex,scores={diceDespawn=..0}] run function board:dice_roll/despawn

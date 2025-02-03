#   Author        =   @ T4Bl3rUs
#   Description   =   Kills the dice and summons particles
#   Called By     =   board:dice_roll/main_settled

# Add tags to make it easier to track the dice
tag @s add this
execute as @e[type=minecraft:armor_stand,tag=throwdisplay] if score @s diceId = @e[type=minecraft:chicken,tag=this,limit=1] diceId run tag @s add this2

# Create the particles corresponding to the dice
execute as @e[type=minecraft:armor_stand,tag=this2,tag=normal] at @s run function board:dice_roll/particles/cubes/normal
execute as @e[type=minecraft:armor_stand,tag=this2,tag=normal] at @s if score @s diceRoll matches 1 run function board:dice_roll/particles/numbers/1
execute as @e[type=minecraft:armor_stand,tag=this2,tag=normal] at @s if score @s diceRoll matches 2 run function board:dice_roll/particles/numbers/2
execute as @e[type=minecraft:armor_stand,tag=this2,tag=normal] at @s if score @s diceRoll matches 3 run function board:dice_roll/particles/numbers/3
execute as @e[type=minecraft:armor_stand,tag=this2,tag=normal] at @s if score @s diceRoll matches 4 run function board:dice_roll/particles/numbers/4
execute as @e[type=minecraft:armor_stand,tag=this2,tag=normal] at @s if score @s diceRoll matches 5 run function board:dice_roll/particles/numbers/5
execute as @e[type=minecraft:armor_stand,tag=this2,tag=normal] at @s if score @s diceRoll matches 6 run function board:dice_roll/particles/numbers/6

execute as @e[type=minecraft:armor_stand,tag=this2,tag=golden] at @s run function board:dice_roll/particles/cubes/golden
execute as @e[type=minecraft:armor_stand,tag=this2,tag=golden] at @s if score @s diceRoll matches 1 run function board:dice_roll/particles/numbers/1
execute as @e[type=minecraft:armor_stand,tag=this2,tag=golden] at @s if score @s diceRoll matches 2 run function board:dice_roll/particles/numbers/2
execute as @e[type=minecraft:armor_stand,tag=this2,tag=golden] at @s if score @s diceRoll matches 3 run function board:dice_roll/particles/numbers/3
execute as @e[type=minecraft:armor_stand,tag=this2,tag=golden] at @s if score @s diceRoll matches 4 run function board:dice_roll/particles/numbers/4
execute as @e[type=minecraft:armor_stand,tag=this2,tag=golden] at @s if score @s diceRoll matches 5 run function board:dice_roll/particles/numbers/5
execute as @e[type=minecraft:armor_stand,tag=this2,tag=golden] at @s if score @s diceRoll matches 6 run function board:dice_roll/particles/numbers/6

execute as @e[type=minecraft:armor_stand,tag=this2,tag=silver] at @s run function board:dice_roll/particles/cubes/silver
execute as @e[type=minecraft:armor_stand,tag=this2,tag=silver] at @s if score @s diceRoll matches 1 run function board:dice_roll/particles/numbers/1
execute as @e[type=minecraft:armor_stand,tag=this2,tag=silver] at @s if score @s diceRoll matches 2 run function board:dice_roll/particles/numbers/2
execute as @e[type=minecraft:armor_stand,tag=this2,tag=silver] at @s if score @s diceRoll matches 3 run function board:dice_roll/particles/numbers/3
execute as @e[type=minecraft:armor_stand,tag=this2,tag=silver] at @s if score @s diceRoll matches 4 run function board:dice_roll/particles/numbers/4
execute as @e[type=minecraft:armor_stand,tag=this2,tag=silver] at @s if score @s diceRoll matches 5 run function board:dice_roll/particles/numbers/5
execute as @e[type=minecraft:armor_stand,tag=this2,tag=silver] at @s if score @s diceRoll matches 6 run function board:dice_roll/particles/numbers/6

execute as @e[type=minecraft:armor_stand,tag=this2,tag=bronze] at @s run function board:dice_roll/particles/cubes/bronze
execute as @e[type=minecraft:armor_stand,tag=this2,tag=bronze] at @s if score @s diceRoll matches 1 run function board:dice_roll/particles/numbers/1
execute as @e[type=minecraft:armor_stand,tag=this2,tag=bronze] at @s if score @s diceRoll matches 2 run function board:dice_roll/particles/numbers/2
execute as @e[type=minecraft:armor_stand,tag=this2,tag=bronze] at @s if score @s diceRoll matches 3 run function board:dice_roll/particles/numbers/3
execute as @e[type=minecraft:armor_stand,tag=this2,tag=bronze] at @s if score @s diceRoll matches 4 run function board:dice_roll/particles/numbers/4
execute as @e[type=minecraft:armor_stand,tag=this2,tag=bronze] at @s if score @s diceRoll matches 5 run function board:dice_roll/particles/numbers/5
execute as @e[type=minecraft:armor_stand,tag=this2,tag=bronze] at @s if score @s diceRoll matches 6 run function board:dice_roll/particles/numbers/6

# Play sounds
playsound minecraft:entity.firework_rocket.blast master @a ~ ~ ~ 10000000

# Kill the dice on the boid so no particles appear
execute as @e[tag=diceroll] at @s if score @s diceId = @e[type=minecraft:chicken,tag=this,limit=1] diceId run tp @s ~ -100 ~
execute as @e[tag=diceroll] if score @s diceId = @e[type=minecraft:chicken,tag=this,limit=1] diceId run kill @s

# Remove the "this" tag
tag @s remove this
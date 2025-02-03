#   Author        =   @ T4Bl3rUs
#   Description   =   Adjusts the dice position
#   Called By     =   board:dice_roll/main_settled

# Add exclusive tags to make the selector operations simpler
tag @s add this
execute as @e[type=minecraft:turtle,tag=diceh] if score @s diceId = @e[type=minecraft:chicken,tag=this,limit=1] diceId run tag @s add this2

# Stop clipping through floor through grass paths
execute if block ~ ~ ~ grass_block align y run tp @s ~ ~1 ~
execute if block ~ ~ ~ gravel align y run tp @s ~ ~1 ~
execute if block ~ ~ ~ coarse_dirt align y run tp @s ~ ~1 ~
execute if block ~ ~ ~ dirt align y run tp @s ~ ~1 ~
execute if block ~ ~ ~ podzol align y run tp @s ~ ~1 ~

# Copy the turtle's x and z values from the chicken
data modify entity @e[type=minecraft:turtle,tag=this2,limit=1] Pos[0] set from entity @s Pos[0]
data modify entity @e[type=minecraft:turtle,tag=this2,limit=1] Pos[2] set from entity @s Pos[2]

# Copy the chicken's y from the turtle only if its falling (else it would add friction again)
execute if entity @e[type=minecraft:turtle,tag=this2,limit=1,nbt=!{FallDistance:0.0f}] run data modify entity @s Pos[1] set from entity @e[type=minecraft:turtle,tag=this2,limit=1,nbt=!{FallDistance:0.0f}] Pos[1]

# Remove the turtle's tag
tag @e[type=minecraft:turtle,tag=this2] remove this2

# Tp the dice to the chicken
execute as @e[type=minecraft:armor_stand,tag=diceroll,tag=!diceh] if score @s diceId = @e[type=minecraft:chicken,tag=this,limit=1] diceId run tp @s @e[type=minecraft:chicken,tag=this,limit=1]
# Tp the dice .5 blocks down to align it with the floor
execute as @e[type=minecraft:armor_stand,tag=throwdisplay] at @s if score @s diceId = @e[type=minecraft:chicken,tag=this,limit=1] diceId run tp @s ~ ~-.5 ~

# Remove the chicken's tag
tag @s remove this
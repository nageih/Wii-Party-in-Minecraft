execute if score @s 4inputCooldown matches 1.. run return 0


tag @s remove 4tryLeft
tag @s remove 4tryRight

# Runs the WASD detection to check which direction the player is moving
execute if predicate games:4cart run function general:wasd/calc/main_mount
tag @s[tag=local.wasd_a] add 4tryLeft
tag @s[tag=local.wasd_d] add 4tryRight

# Skip if pressing same input
execute if entity @s[tag=4left,tag=4tryLeft] run return 0
execute if entity @s[tag=4right,tag=4tryRight] run return 0

# If the player is on the outside and scrolls the opposite direction to the direction they are turning, it runs the reset function
execute at @s[tag=4left,tag=4tryRight] if block ~ 17 ~ minecraft:light_blue_concrete run function games:4/choose_turn_reset
execute at @s[tag=4right,tag=4tryLeft] if block ~ 17 ~ minecraft:light_blue_concrete run function games:4/choose_turn_reset

# Dont turn if on outside
execute at @s[tag=4tryLeft] if score @s 4direction matches 1 if block ~ 14 ~ minecraft:yellow_concrete run return 0
execute at @s[tag=4tryRight] if score @s 4direction matches 1 if block ~ 14 ~ minecraft:blue_concrete run return 0
execute at @s[tag=4tryRight] if score @s 4direction matches 3 if block ~ 14 ~ minecraft:yellow_concrete run return 0
execute at @s[tag=4tryLeft] if score @s 4direction matches 3 if block ~ 14 ~ minecraft:blue_concrete run return 0

execute at @s[tag=4tryLeft] if score @s 4direction matches 2 if block ~ 14 ~ minecraft:white_concrete run return 0
execute at @s[tag=4tryRight] if score @s 4direction matches 2 if block ~ 14 ~ minecraft:black_concrete run return 0
execute at @s[tag=4tryRight] if score @s 4direction matches 4 if block ~ 14 ~ minecraft:white_concrete run return 0
execute at @s[tag=4tryLeft] if score @s 4direction matches 4 if block ~ 14 ~ minecraft:black_concrete run return 0


execute as @s[tag=4tryLeft] run function games:4/choose_turn {"dir":"left"}
execute as @s[tag=4tryRight] run function games:4/choose_turn {"dir":"right"}

tag @s remove 4tryLeft
tag @s remove 4tryRight
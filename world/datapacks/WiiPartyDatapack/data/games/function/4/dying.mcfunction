#   Author        =   @ JevinLevin
#   Description   =   Runs the dying animation, then the final die animation at the ened
#   Called By     =   games:4/repeating


# Increments the players 4deathTimer by 1 every tick to time things
scoreboard players add @s 4deathTimer 1

# Displays smoke at the players feet
particle minecraft:large_smoke ~ ~.3 ~ 0.7 0.3 0.7 0.001 5 force

execute as @s[team=blue] as @e[type=minecraft:item_display,tag=blue] at @s run tp @s ~ ~.75 ~ ~30 ~
execute as @s[team=red] as @e[type=minecraft:item_display,tag=red] at @s run tp @s ~ ~.75 ~ ~30 ~
execute as @s[team=green] as @e[type=minecraft:item_display,tag=green] at @s run tp @s ~ ~.75 ~ ~30 ~
execute as @s[team=orange] as @e[type=minecraft:item_display,tag=orange] at @s run tp @s ~ ~.75 ~ ~30 ~


# After 15 ticks it runs the die function
execute if score @s 4deathTimer matches 15 run function games:4/die
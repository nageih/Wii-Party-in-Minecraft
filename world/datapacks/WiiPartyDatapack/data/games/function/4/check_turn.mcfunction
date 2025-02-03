# Auto turn if at corner
execute at @s[tag=!4right] if score @s 4direction matches 1 if block ~0.6 18 ~ minecraft:red_concrete if block ~ 18 ~-0.6 red_concrete run function games:4/auto_turn {"dir":"right"}
execute at @s[tag=!4left] if score @s 4direction matches 1 if block ~0.6 18 ~ minecraft:red_concrete if block ~ 18 ~0.6 red_concrete run function games:4/auto_turn {"dir":"left"}
execute at @s[tag=!4right] if score @s 4direction matches 3 if block ~-0.6 18 ~ minecraft:red_concrete if block ~ 18 ~0.6 red_concrete run function games:4/auto_turn {"dir":"right"}
execute at @s[tag=!4left] if score @s 4direction matches 3 if block ~-0.6 18 ~ minecraft:red_concrete if block ~ 18 ~-0.6 red_concrete run function games:4/auto_turn {"dir":"left"}

execute at @s[tag=!4right] if score @s 4direction matches 2 if block ~ 18 ~0.6 minecraft:red_concrete if block ~0.6 18 ~ red_concrete run function games:4/auto_turn {"dir":"right"}
execute at @s[tag=!4left] if score @s 4direction matches 2 if block ~ 18 ~0.6 minecraft:red_concrete if block ~-0.6 18 ~ red_concrete run function games:4/auto_turn {"dir":"left"}
execute at @s[tag=!4right] if score @s 4direction matches 4 if block ~ 18 ~-0.6 minecraft:red_concrete if block ~-0.6 18 ~ red_concrete run function games:4/auto_turn {"dir":"right"}
execute at @s[tag=!4left] if score @s 4direction matches 4 if block ~ 18 ~-0.6 minecraft:red_concrete if block ~0.6 18 ~ red_concrete run function games:4/auto_turn {"dir":"left"}

execute if score @s 4turnCooldown matches 1.. run return 0


# Dont turn if turning int0 red concrete
execute if score @s[tag=4left] 4direction matches 2 if block ~1 18 ~ minecraft:red_concrete run return 0
execute if score @s[tag=4right] 4direction matches 2 if block ~-1 18 ~ minecraft:red_concrete run return 0
execute if score @s[tag=4right] 4direction matches 4 if block ~1 18 ~ minecraft:red_concrete run return 0
execute if score @s[tag=4left] 4direction matches 4 if block ~-1 18 ~ minecraft:red_concrete run return 0

# If the block behind them isnt red (end of the track)(prevent them turning 180 degrees at a corner)
execute if block ~-.4 13 ~ orange_concrete if block ~ 13 ~ orange_concrete at @s[scores={4direction=1},tag=4left] unless block ~-1 18 ~ red_concrete run function games:4/turn
execute if block ~-.4 13 ~ orange_concrete if block ~ 13 ~ orange_concrete at @s[scores={4direction=1},tag=4right] unless block ~-1 18 ~ red_concrete run function games:4/turn

execute if block ~.4 13 ~ orange_concrete if block ~ 13 ~ orange_concrete at @s[scores={4direction=3},tag=4left] unless block ~1 18 ~ red_concrete run function games:4/turn
execute if block ~.4 13 ~ orange_concrete if block ~ 13 ~ orange_concrete at @s[scores={4direction=3},tag=4right] unless block ~1 18 ~ red_concrete run function games:4/turn

execute if block ~ 13 ~-.4 orange_concrete if block ~ 13 ~ orange_concrete at @s[scores={4direction=2},tag=4left] unless block ~ 18 ~-1 red_concrete run function games:4/turn
execute if block ~ 13 ~-.4 orange_concrete if block ~ 13 ~ orange_concrete at @s[scores={4direction=2},tag=4right] unless block ~ 18 ~-1 red_concrete run function games:4/turn

execute if block ~ 13 ~.4 orange_concrete if block ~ 13 ~ orange_concrete at @s[scores={4direction=4},tag=4left] unless block ~ 18 ~1 red_concrete run function games:4/turn
execute if block ~ 13 ~.4 orange_concrete if block ~ 13 ~ orange_concrete at @s[scores={4direction=4},tag=4right] unless block ~ 18 ~1 red_concrete run function games:4/turn
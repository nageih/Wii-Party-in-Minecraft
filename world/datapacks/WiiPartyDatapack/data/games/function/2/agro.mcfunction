#   Author        =   @ JevinLevin
#   Description   =   Ticking function that handles the zombies switching their agro to different players
#   Called By     =   games:2/repeating


# Kills any zombies from the last tick who should be killed
    # Tps them to the void
tp @e[type=minecraft:zombie,tag=2kill] ~ ~-70 ~
    # Kills them
kill @e[type=minecraft:zombie,tag=2kill]

# Increments a score timer to know when to summon a new zombie
scoreboard players add @s 2agro_timer 1

# After 5 ticks it spawns a new zombie
execute if score @s 2agro_timer matches 20 run function games:2/newzombie

# Teleports the invisible zombie to the visible zombie every tick
execute if score @s 2agro_timer matches 20.. run function games:2/zombietp

# After 4 seconds, it will check if the nearest player has changed from the last 4 seconds. If so, it will change who it is targeting
execute if score @s 2agro_timer matches 80.. unless score @p[tag=ingame] 2id = @s 2id run function games:2/change_agro

# After 4 seconds it will set the id of the zombie to the id of the nearest player
execute if score @s 2agro_timer matches 80.. run scoreboard players operation @s 2id = @p[tag=ingame] 2id
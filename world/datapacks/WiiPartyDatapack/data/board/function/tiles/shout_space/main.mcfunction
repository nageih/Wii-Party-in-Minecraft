#   Author        =   @ JevinLevin
#   Description   =   Runs the shout space animation every tick
#   Called By     =   board:tiles/main


# Increases the shoutTimer= score by 1 every tick
scoreboard players add shoutTimer= tiles 1

# Forceloads the chunk that the tile is at
forceload add ~ ~ ~ ~

# Forceloads the chunk at the end tile
execute at @e[type=area_effect_cloud,tag=shoutEnd] run forceload add ~ ~ ~ ~

# For first 1.5 seconds tp the player to the tile
execute if score shoutTimer= tiles matches 1..29 at @s run tp @a[tag=turn] ~ ~ ~

# Spawn particles for half a second after a second
execute if score shoutTimer= tiles matches 20..30 rotated ~ -90 run function board:tiles/shout_space/particles

# At 3 seconds begin to fade to white
execute if score shoutTimer= tiles matches 28 run function general:fade/main_white

# At 2 seconds
    # Tp the player to the end destination
    execute if score shoutTimer= tiles matches 40 at @e[type=area_effect_cloud,tag=shoutEnd] positioned ~ ~ ~ run tp @a[tag=turn] ~ ~ ~
    # Depending on the tile they end up on alter their rotation to face the right direction
    execute if score shoutTimer= tiles matches 40 as @a[tag=turn] at @s if score @s skullReturnTile matches 33 run tp @s ~ ~ ~ 45 0
    execute if score shoutTimer= tiles matches 40 as @a[tag=turn] at @s if score @s skullReturnTile matches 84 run tp @s ~ ~ ~ 15 15
    execute if score shoutTimer= tiles matches 40 as @a[tag=turn] at @s if score @s skullReturnTile matches 44 run tp @s ~ ~ ~ -140 10
    # Tps the spectators around the end tile
    execute if score shoutTimer= tiles matches 41 at @a[tag=turn] run spreadplayers ~ ~ 5 5 false @a[tag=!turn,tag=playing]
    execute if score shoutTimer= tiles matches 41 if score @s skullReturnTile matches 44 as @a[tag=!turn,tag=playing] at @s run tp @s ~ 35 ~
    # Changes the spectators rotation to be looking at the player
    execute if score shoutTimer= tiles matches 41 as @a[tag=!turn,tag=playing] at @s run tp @s ~ ~ ~ facing entity @a[tag=turn,limit=1]

# Plays whoosh sound as the player is teleported
execute if score shoutTimer= tiles matches 25 run playsound minecraft:entity.illusioner.prepare_mirror master @a ~ ~ ~ 300000000000000000 1

# After 3 seconds it runs the end function
execute if score shoutTimer= tiles matches 60 run function board:tiles/shout_space/end
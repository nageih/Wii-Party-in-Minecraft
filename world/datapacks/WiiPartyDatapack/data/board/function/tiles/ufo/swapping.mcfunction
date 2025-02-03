#   Author        =   @ JevinLevin
#   Description   =   Runs every tick, handles the swapping animation
#   Called By     =   board:tiles/ufo/main


# Increments the ufotimer= by 1 every tick to time things
scoreboard players add ufotimer= tiles 1


# Ufo fly down
execute if score ufotimer= tiles matches 0..18 as @e[type=item_display,tag=ufo] at @s run tp @s ~ ~-1.5 ~
execute if score ufotimer= tiles matches 19..23 as @e[type=item_display,tag=ufo] at @s run tp @s ~ ~-0.75 ~
execute if score ufotimer= tiles matches 24..27 as @e[type=item_display,tag=ufo] at @s run tp @s ~ ~-0.5 ~
execute if score ufotimer= tiles matches 28..30 as @e[type=item_display,tag=ufo] at @s run tp @s ~ ~-0.2 ~
execute if score ufotimer= tiles matches 31..33 as @e[type=item_display,tag=ufo] at @s run tp @s ~ ~-0.1 ~

# During 40..70 ticks then it tps the first player to their tile
execute if score ufotimer= tiles matches 40..70 at @e[type=area_effect_cloud,tag=ufoOrigin] run tp @a[tag=turn] ~ ~ ~

# After 2 seconds
    # Places barriers around the tiles so that players cant escape while they start levitating
    execute if score ufotimer= tiles matches 40 at @e[type=area_effect_cloud,tag=ufoOrigin] run fill ~1 ~ ~1 ~-1 ~20 ~-1 barrier replace air
    execute if score ufotimer= tiles matches 40 at @e[type=area_effect_cloud,tag=ufoOrigin] run fill ~ ~ ~ ~ ~20 ~ air replace barrier
    execute if score ufotimer= tiles matches 40 at @e[type=area_effect_cloud,tag=ufoEndPoint] run fill ~1 ~ ~1 ~-1 ~20 ~-1 barrier replace air
    execute if score ufotimer= tiles matches 40 at @e[type=area_effect_cloud,tag=ufoEndPoint] run fill ~ ~ ~ ~ ~20 ~ air replace barrier
    # Teleports all spectators around the players tile
    execute if score ufotimer= tiles matches 40 as @a[tag=turn] run function board:dice_roll/spectator_tp
    # Teleports the spectators to face the current player
    execute if score ufotimer= tiles matches 40 as @a[tag=playing,tag=!turn] at @s facing entity @a[tag=turn] eyes run tp @s ~ ~ ~ ~ ~
    # Plays pling sound for everyone
    execute if score ufotimer= tiles matches 40 as @a[tag=playing] at @s run playsound block.note_block.pling master @s ~ ~ ~ 3

execute if score ufotimer= tiles matches 40 run scoreboard players add ufotimer= tiles 25


# After 3.5 seconds, the player starts floating
    # Plays fancy whoosh sound
    execute if score ufotimer= tiles matches 70 at @a[tag=turn] run playsound minecraft:block.beacon.power_select master @a ~ ~ ~ 3 0
    # Gives the player levitation so they start floating
    execute if score ufotimer= tiles matches 70 run effect give @a[tag=turn] levitation infinite 3 true

    execute if score ufotimer= tiles matches 70..119 at @e[type=item_display,tag=ufo] run summon marker ~ ~ ~ {Tags:["ufo"],Rotation:[0F,90F]}
    execute if score ufotimer= tiles matches 70..119 as @e[type=marker,tag=ufo] at @s run function board:tiles/ufo/particles
    execute if score ufotimer= tiles matches 70..119 as @e[type=marker,tag=ufo] at @s run tp @s ~ ~ ~ ~25 ~
    execute if score ufotimer= tiles matches 119 as @e[type=marker,tag=ufo] run kill @s


# After 6 seconds, the player disappears
    # Puts the player into spectator
    execute if score ufotimer= tiles matches 120 run gamemode spectator @a[tag=turn]
    # Gets rid of the players levitation
    execute if score ufotimer= tiles matches 120 run effect clear @a[tag=turn] levitation
    # Plays whoosh sound
    execute if score ufotimer= tiles matches 120 at @a[tag=turn] run playsound minecraft:entity.illusioner.cast_spell master @a ~ ~ ~ 3 1

    execute if score ufotimer= tiles matches 118 as @e[type=item_display,tag=ufo] run function board:tiles/ufo/ufostartscale


    execute if score ufotimer= tiles matches 149 as @e[type=item_display,tag=ufo] run function board:tiles/ufo/ufostartscale
# After 7.5 seconds, moves the second player to the tile
    # Teleports the player to 4 blocks above their tile 
    execute if score ufotimer= tiles matches 149..150 at @e[type=area_effect_cloud,tag=ufoOrigin] run tp @a[tag=chosen] ~ ~4 ~
    # Puts the player into adventure
    execute if score ufotimer= tiles matches 150 run gamemode adventure @a[tag=chosen]
    # Plays whoosh sound
    execute if score ufotimer= tiles matches 150 at @a[tag=chosen] run playsound minecraft:entity.illusioner.cast_spell master @a ~ ~ ~ 3 1

# Ran while the second player is falling onto the first tile. Runs these 2 lines once the player hits the ground
    # Spawns boat above the player to force them into a lying down position
    execute if score ufotimer= tiles matches 155.. as @a[tag=chosen,tag=!onGround,nbt={OnGround:1b}] at @s run summon boat ~ ~1 ~ {Type:"acacia",Tags:["ufoBoat"],Passengers:[{id:"minecraft:area_effect_cloud",Duration:390000,Tags:["ufoBoat"]},{id:"minecraft:area_effect_cloud",Duration:390000,Tags:["ufoBoat"]}]}
    # Gives the player the onGround tag so that it doesnt keep spawning boats
    execute if score ufotimer= tiles matches 155.. as @a[tag=chosen,tag=!onGround,nbt={OnGround:1b}] run tag @s add onGround

# After 10 seconds
    # Puts the second player back into spectator
    execute if score ufotimer= tiles matches 200 run gamemode spectator @a[tag=playing]
    # Kills the boat that forced the player to lie down
    execute if score ufotimer= tiles matches 200 run kill @e[tag=ufoBoat]
    # Teleports all spectators around the second tile
    execute if score ufotimer= tiles matches 200 run tag @a[tag=chosen] add dontIngore
    execute if score ufotimer= tiles matches 200 as @a[tag=chosen] run function board:dice_roll/spectator_tp
    execute if score ufotimer= tiles matches 200 run tag @a[tag=chosen] remove dontIngore
    # Teleports the next player to be swapped above the second tile
    execute if score ufotimer= tiles matches 200 at @e[type=area_effect_cloud,tag=ufoEndPoint] run tp @a[tag=turn] ~ ~4 ~
    # Forces the spectators to face the player who is about to be swapped
    execute if score ufotimer= tiles matches 200 as @a[tag=playing,tag=!turn] at @s facing entity @a[tag=turn] feet run tp @s ~ ~ ~ ~ ~
    execute if score ufotimer= tiles matches 200 as @e[type=item_display,tag=ufo] at @e[type=area_effect_cloud,tag=ufoEndPoint] run tp @s ~ ~11.35 ~

# After 11.5 seconds
    # Teleports the player to 4 blocks above their tile 
    execute if score ufotimer= tiles matches 229..230 at @e[type=area_effect_cloud,tag=ufoEndPoint] run tp @a[tag=turn] ~ ~4 ~
    # Puts the player into adventure
    execute if score ufotimer= tiles matches 230 run gamemode adventure @a[tag=turn]
    # Plays whoosh sound
    execute if score ufotimer= tiles matches 230 at @a[tag=turn] run playsound minecraft:entity.illusioner.cast_spell master @a ~ ~ ~ 3 1
    execute if score ufotimer= tiles matches 229 as @e[type=item_display,tag=ufo] run function board:tiles/ufo/ufostartscale


# Ran while the first player is falling onto the second tile. Runs these 2 lines once the player hits the ground
    # Spawns boat above the player to force them into a lying down position
    execute if score ufotimer= tiles matches 235.. as @a[tag=turn,tag=!onGround,nbt={OnGround:1b}] at @s run summon boat ~ ~1 ~ {Type:"acacia",Tags:["ufoBoat"],Passengers:[{id:"minecraft:area_effect_cloud",Duration:390000,Tags:["ufoBoat"]},{id:"minecraft:area_effect_cloud",Duration:390000,Tags:["ufoBoat"]}]}
    # Gives the player the onGround tag so that it doesnt keep spawning boats
    execute if score ufotimer= tiles matches 235.. as @a[tag=turn,tag=!onGround,nbt={OnGround:1b}] run tag @s add onGround

# After 14 seconds, runs the end function
execute if score ufotimer= tiles matches 280.. run function board:tiles/ufo/end
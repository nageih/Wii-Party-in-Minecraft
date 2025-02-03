#   Author        =   @ JevinLevin
#   Description   =   Runs every tick to transport the player to the volcano
#   Called By     =   board:tiles/main


# Increases the skullTimer= score by 1 every tick
scoreboard players add skullTimer= tiles 1

# Forceloads the chunk that the tile is at
forceload add ~ ~ ~ ~

# For the first 3 seconds it tps the player to the tile
execute if score skullTimer= tiles matches 1..59 run tp @a[tag=turn] ~ ~ ~

# Plays error sound at the player
execute if score skullTimer= tiles matches 1 at @a[tag=turn] run playsound block.note_block.didgeridoo master @a ~ ~ ~ 3 0.75

# Sets the spectators rotation to be looking at the player
execute if score skullTimer= tiles matches 1 as @a[tag=!turn,tag=playing] at @s facing entity @a[tag=turn] feet run tp @s ~ ~ ~ ~ ~

# Summons particles at the tile
execute if score skullTimer= tiles matches 20.. run particle portal ~ ~ ~ 1 0 1 0 30 force
execute if score skullTimer= tiles matches 30.. run particle dust{color:[0.800,0.000,1.000],scale:1} ~ ~ ~ 1 0 1 0 30 force

# After 2 seconds
    # Give the player max slow falling so they float
    execute if score skullTimer= tiles matches 40 as @a[tag=turn] run attribute @s minecraft:generic.gravity base set 0
    # Plays whoosh sound
    execute if score skullTimer= tiles matches 40 run playsound entity.illusioner.cast_spell master @a[tag=playing] ~ ~ ~ 30000000000 0 1
# 2-3 Seconds
    # Rotate the player
    execute if score skullTimer= tiles matches 40..59 as @a[tag=turn] at @s run tp @s ~ ~ ~ ~15 ~
    # Teleports the player down
    execute if score skullTimer= tiles matches 40..59 run tp @s ~ ~-.1 ~

# After 3.5 seconds
    # Gets rid of the players slow falling
    execute if score skullTimer= tiles matches 70 as @a[tag=turn] run attribute @s minecraft:generic.gravity base set 0.08
    # Teleports them to the volcano
    execute if score skullTimer= tiles matches 70 run tp @a[tag=turn] -689 84 -674
    # Teleports spectators to the volcano
    execute if score skullTimer= tiles matches 71 run tp @a[tag=!turn,tag=playing] -684 64 -663 157 -21
    # Teleports the spectators to the right Y level
    execute if score skullTimer= tiles matches 71 as @a[tag=!turn,tag=playing] at @s facing -689 64 -674 run tp @s ~ 64 ~ ~ ~

# Fades the screen to black for smooth transition
execute if score skullTimer= tiles matches 58 run function general:fade/main

# Ran while the second player is falling onto the first tile. Runs these 2 lines once the player hits the ground
    # Spawns boat above the player to force them into a lying down position
    execute if score skullTimer= tiles matches 75.. as @a[tag=turn,tag=onGround,tag=!onGround2,nbt={OnGround:1b}] at @s run summon boat ~ ~1 ~ {Type:"acacia",Tags:["skullBoat"],Passengers:[{id:"minecraft:area_effect_cloud",Duration:390000,Tags:["skullBoat"]},{id:"minecraft:area_effect_cloud",Duration:390000,Tags:["skullBoat"]}]}
    # Gives the player slowness so they cant escape from under the boat
    execute if score skullTimer= tiles matches 75.. run effect give @a[tag=turn,tag=!onGround,nbt={OnGround:1b}] slowness infinite 255 true
    # Gives the player the onGround2 tag if they have the onGround tag. This is basically just a super scuffed way of making is spawnt the boat a tick after
    execute if score skullTimer= tiles matches 75.. as @a[tag=turn,tag=onGround,nbt={OnGround:1b}] run tag @s add onGround2
    # Gives the player the onGround tag so that it doesnt keep spawning boats
    execute if score skullTimer= tiles matches 75.. as @a[tag=turn,tag=!onGround,nbt={OnGround:1b}] run tag @s add onGround

# After 6 seconds runs the end function
execute if score skullTimer= tiles matches 120.. run function board:tiles/skull/end
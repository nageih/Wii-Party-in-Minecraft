#   Author        =   @ JevinLevin
#   Description   =   Runs every tick if the player gets boosted by a spring thingy
#   Called By     =   board:tiles/main


# Increments the boostTimer= score by 1 every tick
scoreboard players add boostTimer= tiles 1

# Plays whoosh sound once the player starts getting yeeted
execute if score boostTimer= tiles matches 40 run playsound entity.illusioner.cast_spell master @a[tag=playing] ~ ~ ~ 100 1.5

# Spawns particles around the player when they get yeeted, the type of particle depends on which type of boost they are on
execute if score boostTimer= tiles matches 40 if score boostType= tiles matches 1 at @e[type=area_effect_cloud,tag=boostStart] run particle minecraft:poof ~ ~1 ~ 1 .2 1 0.01 30 force
execute if score boostTimer= tiles matches 40 if score boostType= tiles matches 0 at @e[type=area_effect_cloud,tag=boostStart] run particle minecraft:large_smoke ~ ~1 ~ 1 .2 1 0.01 30 force

# Moves the turtle towards the end point and creates the trajectory
execute if score boostTimer= tiles matches 40.. run tp @s ~ ~1 ~
execute if score boostTimer= tiles matches 40.. at @s unless entity @e[type=area_effect_cloud,tag=boostEnd,distance=..1] facing entity @e[type=area_effect_cloud,tag=boostEnd] feet run tp @s ^ ^ ^2
# If in range tp slower
execute if score boostTimer= tiles matches 40.. at @s if entity @e[type=area_effect_cloud,tag=boostEnd,distance=..1] facing entity @e[type=area_effect_cloud,tag=boostEnd] feet run tp @s ^ ^ ^.4

# Teleports the player to the turtle
execute if score boostTimer= tiles matches 1..39 at @s run tp @a[tag=turn] ~ ~ ~
execute if score boostTimer= tiles matches 40.. at @s run ride @a[tag=turn,limit=1] mount @s

# Puts the spring down
execute if score boostTimer= tiles matches 21 run data merge entity @e[type=shulker,tag=boostSpring,limit=1] {Peek:0b}

# Yeets it up
execute if score boostTimer= tiles matches 39.. run data merge entity @e[type=shulker,tag=boostSpring,limit=1] {Peek:35b}

# Start animation for the player
    # Bobs the player down
    execute if score boostTimer= tiles matches 21..25 run tp @s ~ ~-.055 ~
    # Plays extend sound
    execute if score boostTimer= tiles matches 21 at @e[type=area_effect_cloud,tag=boostStart] run playsound minecraft:block.piston.extend master @a ~ ~ ~ 3 0

# Particles at the players feet while they are flying. Does it in different positions since the player flying and spectators will see different things
    ### # Displays particles at the player being yeeted, for that player
    ### execute if score boostTimer= tiles matches 40.. if score boostType= tiles matches 1 at @a[tag=turn] run particle minecraft:spit ~ ~1 ~ 0 0 0 0.1 3 force @a[tag=turn]
    ### execute if score boostTimer= tiles matches 40.. if score boostType= tiles matches 0 at @a[tag=turn] run particle minecraft:large_smoke ~ ~1 ~ 0 0 0 0.1 3 force @a[tag=turn]
    # Displays particles slightly behind the flying player to account for lag
    execute if score boostTimer= tiles matches 40.. if score boostType= tiles matches 1 at @e[type=area_effect_cloud,tag=particleTrail,nbt={Age:2}] run particle minecraft:spit ~ ~1 ~ 0 0 0 0.1 3 force
    execute if score boostTimer= tiles matches 40.. if score boostType= tiles matches 0 at @e[type=area_effect_cloud,tag=particleTrail,nbt={Age:2}] run particle minecraft:large_smoke ~ ~1 ~ 0 0 0 0.1 3 force

# Summons trail AECs at the flying player for the particles
summon area_effect_cloud ~ ~ ~ {Duration:3,Tags:["particleTrail"]}

# If the player gets close to the end point, then it runs the end function
execute at @s if entity @e[type=area_effect_cloud,tag=boostEnd,distance=...5] run schedule function board:tiles/boost/end_context 5t append

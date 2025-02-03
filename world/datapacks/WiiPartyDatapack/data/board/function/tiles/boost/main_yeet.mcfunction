#   Author        =   @ JevinLevin
#   Description   =   Runs every tick if the player gets thrown by a yeeter
#   Called By     =   board:tiles/main


# Increments the yeetTimer= score by 1 every tick
scoreboard players add yeetTimer= tiles 1

# Plays whoosh sound once the player starts getting yeeted
execute if score yeetTimer= tiles matches 40 run playsound entity.illusioner.cast_spell master @a[tag=playing] ~ ~ ~ 100 1.5


# Moves the armor stand towards the end point and creates the trajectory. The values will change depending on how long they have been yeeted for to create a higher peak
execute if score yeetTimer= tiles matches 40..44 run tp @s ~ ~4 ~
execute if score yeetTimer= tiles matches 40..44 at @s facing entity @e[type=area_effect_cloud,tag=boostEnd] feet run tp @s ^ ^ ^1
execute if score yeetTimer= tiles matches 45..49 run tp @s ~ ~3.75 ~
execute if score yeetTimer= tiles matches 45..49 at @s facing entity @e[type=area_effect_cloud,tag=boostEnd] feet run tp @s ^ ^ ^1.25
execute if score yeetTimer= tiles matches 50..54 run tp @s ~ ~3.5 ~
execute if score yeetTimer= tiles matches 50..54 at @s facing entity @e[type=area_effect_cloud,tag=boostEnd] feet run tp @s ^ ^ ^1.5
execute if score yeetTimer= tiles matches 55..59 run tp @s ~ ~3.25 ~
execute if score yeetTimer= tiles matches 55..59 at @s facing entity @e[type=area_effect_cloud,tag=boostEnd] feet run tp @s ^ ^ ^1.75
execute if score yeetTimer= tiles matches 60..64 run tp @s ~ ~3 ~
execute if score yeetTimer= tiles matches 60..64 at @s facing entity @e[type=area_effect_cloud,tag=boostEnd] feet run tp @s ^ ^ ^2
execute if score yeetTimer= tiles matches 65..69 run tp @s ~ ~2.75 ~
execute if score yeetTimer= tiles matches 65..69 at @s facing entity @e[type=area_effect_cloud,tag=boostEnd] feet run tp @s ^ ^ ^2.25
execute if score yeetTimer= tiles matches 70..74 run tp @s ~ ~2.5 ~
execute if score yeetTimer= tiles matches 70..74 at @s facing entity @e[type=area_effect_cloud,tag=boostEnd] feet run tp @s ^ ^ ^2.25
execute if score yeetTimer= tiles matches 75..79 run tp @s ~ ~2.25 ~
execute if score yeetTimer= tiles matches 75..79 at @s facing entity @e[type=area_effect_cloud,tag=boostEnd] feet run tp @s ^ ^ ^2.5
execute if score yeetTimer= tiles matches 80..84 run tp @s ~ ~2 ~
execute if score yeetTimer= tiles matches 80..84 at @s facing entity @e[type=area_effect_cloud,tag=boostEnd] feet run tp @s ^ ^ ^2.5
execute if score yeetTimer= tiles matches 85..89 run tp @s ~ ~1.75 ~
execute if score yeetTimer= tiles matches 85..89 at @s facing entity @e[type=area_effect_cloud,tag=boostEnd] feet run tp @s ^ ^ ^2.75
execute if score yeetTimer= tiles matches 90..94 run tp @s ~ ~1.5 ~
execute if score yeetTimer= tiles matches 90..94 at @s facing entity @e[type=area_effect_cloud,tag=boostEnd] feet run tp @s ^ ^ ^2.75
execute if score yeetTimer= tiles matches 95..99 run tp @s ~ ~1.25 ~
execute if score yeetTimer= tiles matches 95..99 at @s facing entity @e[type=area_effect_cloud,tag=boostEnd] feet run tp @s ^ ^ ^3
execute if score yeetTimer= tiles matches 100..104 run tp @s ~ ~1 ~
execute if score yeetTimer= tiles matches 100..104 at @s facing entity @e[type=area_effect_cloud,tag=boostEnd] feet run tp @s ^ ^ ^3.25
execute if score yeetTimer= tiles matches 105..109 run tp @s ~ ~1 ~
execute if score yeetTimer= tiles matches 105..109 at @s facing entity @e[type=area_effect_cloud,tag=boostEnd] feet run tp @s ^ ^ ^3.5
execute if score yeetTimer= tiles matches 110..114 run tp @s ~ ~1 ~
execute if score yeetTimer= tiles matches 110..114 at @s facing entity @e[type=area_effect_cloud,tag=boostEnd] feet run tp @s ^ ^ ^3.75
execute if score yeetTimer= tiles matches 115.. run tp @s ~ ~1 ~
execute if score yeetTimer= tiles matches 115.. at @s facing entity @e[type=area_effect_cloud,tag=boostEnd] feet run tp @s ^ ^ ^4

# Teleports the player to the turtle
execute if score yeetTimer= tiles matches 1..39 at @s run tp @a[tag=turn] ~ ~ ~
execute if score yeetTimer= tiles matches 40.. at @s run ride @a[tag=turn,limit=1] mount @s


# Teleports the player to the tile at the start and plays an animation
    # Bobs the player down
    execute if score yeetTimer= tiles matches 21..25 run tp @s ~ ~-.125 ~
    # Plays piston sound
    execute if score yeetTimer= tiles matches 21 at @e[type=area_effect_cloud,tag=boostStart] run playsound minecraft:block.piston.extend master @a ~ ~ ~ 3 0

# Particles at the players feet while they are flying. Does it in different positions since the player flying and spectators will see different things
    ### # Displays particles at the player being yeeted, for that player
    ### execute if score yeetTimer= tiles matches 40.. if score boostType= tiles matches 1 at @a[tag=turn] run particle minecraft:spit ~ ~ ~ 0 0 0 0.1 3 force @a[tag=turn]
    ### execute if score yeetTimer= tiles matches 40.. if score boostType= tiles matches 0 at @a[tag=turn] run particle minecraft:large_smoke ~ ~ ~ 0 0 0 0.1 3 force @a[tag=turn]
    # Displays particles slightly behind the flying player to account for serverside lag for spectators
    execute if score yeetTimer= tiles matches 40.. if score boostType= tiles matches 1 at @e[type=area_effect_cloud,tag=particleTrail,nbt={Age:2}] run particle minecraft:spit ~ ~ ~ 0 0 0 0.1 3 force
    execute if score yeetTimer= tiles matches 40.. if score boostType= tiles matches 0 at @e[type=area_effect_cloud,tag=particleTrail,nbt={Age:2}] run particle minecraft:large_smoke ~ ~ ~ 0 0 0 0.1 3 force

# Summons trail AECs at the flying player for the particles
summon area_effect_cloud ~ ~ ~ {Duration:3,Tags:["particleTrail"]}

# If the player gets close to the end point, then it runs the end function
execute at @s if entity @e[type=area_effect_cloud,tag=boostEnd,distance=..1.5] as @a[tag=turn] at @s run schedule function board:tiles/boost/end_context 4t append
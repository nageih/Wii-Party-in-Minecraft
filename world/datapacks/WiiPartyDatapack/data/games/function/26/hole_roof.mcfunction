#   Author        =   @ JevinLevin
#   Description   =   Stops the player from being able to jump ontop of a hole when they are near it
#   Called By     =   games:26/repeating

# Checks if the player is in a box area around the entity. If so, run the spawn_boats function to summon boats
execute positioned ~-2.5 ~ ~-2.5 if entity @a[dx=4,dy=4,dz=4,tag=ingame] positioned ~2.5 ~2.5 ~2.5 unless entity @e[type=minecraft:boat,distance=..2,tag=26boat] run function games:26/spawn_boats

# If there is no player in the area, but there are boats still there, it kills the boat as well as the area effect clouds inside them.
    # AECs
execute positioned ~-2.5 ~ ~-2.5 unless entity @a[dx=4,dy=4,dz=4,tag=ingame] positioned ~2.5 ~2.5 ~2.5 if entity @e[type=minecraft:boat,distance=..2,tag=26boat] run kill @e[type=minecraft:area_effect_cloud,distance=..2,tag=26boat]
    # Boats
execute positioned ~-2.5 ~ ~-2.5 unless entity @a[dx=4,dy=4,dz=4,tag=ingame] positioned ~2.5 ~2.5 ~2.5 if entity @e[type=minecraft:boat,distance=..2,tag=26boat] run kill @e[type=minecraft:boat,distance=..2,tag=26boat]
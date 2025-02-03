#   Author        =   @ JevinLevin
#   Description   =   Sets the barrels and chains for the first position when the game starts
#   Called By     =   games:3/start


# Sets all the blocks for the barrels and chains
# Checks if the correct player is present first so that it doesnt add chains for booths with no players
    # Chains
execute if entity @a[tag=ingame,team=blue] run fill 3006 37 3003 3006 18 3003 minecraft:chain
execute if entity @a[tag=ingame,team=red] run fill 3002 37 3003 3002 18 3003 minecraft:chain
execute if entity @a[tag=ingame,team=green] run fill 2998 37 3003 2998 18 3003 minecraft:chain
execute if entity @a[tag=ingame,team=orange] run fill 2994 37 3003 2994 18 3003 minecraft:chain
execute if entity @a[tag=ingame,team=blue] run fill 3006 37 2982 3006 18 2982 minecraft:chain
execute if entity @a[tag=ingame,team=red] run fill 3002 37 2982 3002 18 2982 minecraft:chain
execute if entity @a[tag=ingame,team=green] run fill 2998 37 2982 2998 18 2982 minecraft:chain
execute if entity @a[tag=ingame,team=orange] run fill 2994 37 2982 2994 18 2982 minecraft:chain
    # Barrels
execute if entity @a[tag=ingame,team=blue] run setblock 3006 17 3003 minecraft:barrel[facing=up]{Lock:"no"}
execute if entity @a[tag=ingame,team=red] run setblock 3002 17 3003 minecraft:barrel[facing=up]{Lock:"no"}
execute if entity @a[tag=ingame,team=green] run setblock 2998 17 3003 minecraft:barrel[facing=up]{Lock:"no"}
execute if entity @a[tag=ingame,team=orange] run setblock 2994 17 3003 minecraft:barrel[facing=up]{Lock:"no"}
execute if entity @a[tag=ingame,team=blue] run setblock 3006 17 2982 minecraft:barrel[facing=up]{Lock:"no"}
execute if entity @a[tag=ingame,team=red] run setblock 3002 17 2982 minecraft:barrel[facing=up]{Lock:"no"}
execute if entity @a[tag=ingame,team=green] run setblock 2998 17 2982 minecraft:barrel[facing=up]{Lock:"no"}
execute if entity @a[tag=ingame,team=orange] run setblock 2994 17 2982 minecraft:barrel[facing=up]{Lock:"no"}
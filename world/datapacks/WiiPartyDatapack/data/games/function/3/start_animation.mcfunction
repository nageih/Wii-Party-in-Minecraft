#   Author        =   @ JevinLevin
#   Description   =   Handles the animation for the barrels rising up at the start
#   Called By     =   games:3/repeating


# Adds 1 to the start= score which tracks how many ticks its been for the timer
scoreboard players add start= 3scores 1

# Depending on the start= score it will remove chains and set barrels in the correct positions
    # Stage 1
execute if score start= 3scores matches 1 run fill 2994 18 3003 3006 18 3003 minecraft:barrel[facing=up]{Lock:"no"} replace minecraft:chain
execute if score start= 3scores matches 1 run fill 2994 18 2982 3006 18 2982 minecraft:barrel[facing=up]{Lock:"no"} replace minecraft:chain
execute if score start= 3scores matches 1 run fill 2994 17 3003 3006 17 2982 minecraft:air replace minecraft:barrel
execute if score start= 3scores matches 1 as @a[tag=playing] at @s run playsound minecraft:entity.blaze.hurt master @s ~ ~ ~ 0.7 0.5
    # Stage 2
execute if score start= 3scores matches 4 run fill 2994 19 3003 3006 19 3003 minecraft:barrel[facing=up]{Lock:"no"} replace minecraft:chain
execute if score start= 3scores matches 4 run fill 2994 19 2982 3006 19 2982 minecraft:barrel[facing=up]{Lock:"no"} replace minecraft:chain
execute if score start= 3scores matches 4 run fill 2994 18 3003 3006 18 2982 minecraft:air replace minecraft:barrel
execute if score start= 3scores matches 4 as @a[tag=playing] at @s run playsound minecraft:entity.blaze.hurt master @s ~ ~ ~ 0.7 0.55
    # Stage 3
execute if score start= 3scores matches 7 run fill 2994 20 3003 3006 20 3003 minecraft:barrel[facing=up]{Lock:"no"} replace minecraft:chain
execute if score start= 3scores matches 7 run fill 2994 20 2982 3006 20 2982 minecraft:barrel[facing=up]{Lock:"no"} replace minecraft:chain
execute if score start= 3scores matches 7 run fill 2994 19 3003 3006 19 2982 minecraft:air replace minecraft:barrel
execute if score start= 3scores matches 7 as @a[tag=playing] at @s run playsound minecraft:entity.blaze.hurt master @s ~ ~ ~ 0.7 0.6
    # Stage 4
execute if score start= 3scores matches 10 run fill 2994 21 3003 3006 21 3003 minecraft:barrel[facing=up]{Lock:"no"} replace minecraft:chain
execute if score start= 3scores matches 10 run fill 2994 21 2982 3006 21 2982 minecraft:barrel[facing=up]{Lock:"no"} replace minecraft:chain
execute if score start= 3scores matches 10 run fill 2994 20 3003 3006 20 2982 minecraft:air replace minecraft:barrel
execute if score start= 3scores matches 10 as @a[tag=playing] at @s run playsound minecraft:entity.blaze.hurt master @s ~ ~ ~ 0.7 0.65
    # Stage 5
execute if score start= 3scores matches 13 run fill 2994 22 3003 3006 22 3003 minecraft:barrel[facing=up]{Lock:"no"} replace minecraft:chain
execute if score start= 3scores matches 13 run fill 2994 22 2982 3006 22 2982 minecraft:barrel[facing=up]{Lock:"no"} replace minecraft:chain
execute if score start= 3scores matches 13 run fill 2994 21 3003 3006 21 2982 minecraft:air replace minecraft:barrel
execute if score start= 3scores matches 13 as @a[tag=playing] at @s run playsound minecraft:entity.blaze.hurt master @s ~ ~ ~ 0.7 0.75
    # Stage 6
execute if score start= 3scores matches 16 run fill 2994 23 3003 3006 23 3003 minecraft:barrel[facing=up]{Lock:"no"} replace minecraft:chain
execute if score start= 3scores matches 16 run fill 2994 23 2982 3006 23 2982 minecraft:barrel[facing=up]{Lock:"no"} replace minecraft:chain
execute if score start= 3scores matches 16 run fill 2994 22 3003 3006 22 2982 minecraft:air replace minecraft:barrel
execute if score start= 3scores matches 16 as @a[tag=playing] at @s run playsound minecraft:entity.blaze.hurt master @s ~ ~ ~ 0.7 0.8
    # Stage 7
execute if score start= 3scores matches 19 run fill 2994 24 3003 3006 24 3003 minecraft:barrel[facing=up]{Lock:"no"} replace minecraft:chain
execute if score start= 3scores matches 19 run fill 2994 24 2982 3006 24 2982 minecraft:barrel[facing=up]{Lock:"no"} replace minecraft:chain
execute if score start= 3scores matches 19 run fill 2994 23 3003 3006 23 2982 minecraft:air replace minecraft:barrel
execute if score start= 3scores matches 19 as @a[tag=playing] at @s run playsound minecraft:entity.blaze.hurt master @s ~ ~ ~ 0.7 0.85
    # Stage 8
execute if score start= 3scores matches 22 run fill 2994 25 3003 3006 25 3003 minecraft:barrel[facing=up]{Lock:"no"} replace minecraft:chain
execute if score start= 3scores matches 22 run fill 2994 25 2982 3006 25 2982 minecraft:barrel[facing=up]{Lock:"no"} replace minecraft:chain
execute if score start= 3scores matches 22 run fill 2994 24 3003 3006 24 2982 minecraft:air replace minecraft:barrel
execute if score start= 3scores matches 22 as @a[tag=playing] at @s run playsound minecraft:entity.blaze.hurt master @s ~ ~ ~ 0.7 0.9
    # Stage 9
execute if score start= 3scores matches 25 run fill 2994 26 3003 3006 26 3003 minecraft:barrel[facing=up]{Lock:"no"} replace minecraft:chain
execute if score start= 3scores matches 25 run fill 2994 26 2982 3006 26 2982 minecraft:barrel[facing=up]{Lock:"no"} replace minecraft:chain
execute if score start= 3scores matches 25 run fill 2994 25 3003 3006 25 2982 minecraft:air replace minecraft:barrel
execute if score start= 3scores matches 25 as @a[tag=playing] at @s run playsound minecraft:entity.blaze.hurt master @s ~ ~ ~ 0.7 0.95
    # Stage 10
execute if score start= 3scores matches 28 run fill 2994 27 3003 3006 27 3003 minecraft:barrel[facing=up]{Lock:"no"} replace minecraft:chain
execute if score start= 3scores matches 28 run fill 2994 27 2982 3006 27 2982 minecraft:barrel[facing=up]{Lock:"no"} replace minecraft:chain
execute if score start= 3scores matches 28 run fill 2994 26 3003 3006 26 2982 minecraft:air replace minecraft:barrel
execute if score start= 3scores matches 28 as @a[tag=playing] at @s run playsound minecraft:entity.blaze.hurt master @s ~ ~ ~ 0.7 1
    # Stage 11
execute if score start= 3scores matches 31 run fill 2994 28 3003 3006 28 3003 minecraft:barrel[facing=up]{Lock:"no"} replace minecraft:chain
execute if score start= 3scores matches 31 run fill 2994 28 2982 3006 28 2982 minecraft:barrel[facing=up]{Lock:"no"} replace minecraft:chain
execute if score start= 3scores matches 31 run fill 2994 27 3003 3006 27 2982 minecraft:air replace minecraft:barrel
execute if score start= 3scores matches 31 as @a[tag=playing] at @s run playsound minecraft:entity.blaze.hurt master @s ~ ~ ~ 0.7 1.05
    # Stage 12
execute if score start= 3scores matches 34 run fill 2994 29 3003 3006 29 3003 minecraft:barrel[facing=up]{Lock:"no"} replace minecraft:chain
execute if score start= 3scores matches 34 run fill 2994 29 2982 3006 29 2982 minecraft:barrel[facing=up]{Lock:"no"} replace minecraft:chain
execute if score start= 3scores matches 34 run fill 2994 28 3003 3006 28 2982 minecraft:air replace minecraft:barrel
execute if score start= 3scores matches 34 as @a[tag=playing] at @s run playsound minecraft:entity.blaze.hurt master @s ~ ~ ~ 0.7 1.1
    # Stage 13
execute if score start= 3scores matches 37 run fill 2994 30 3003 3006 30 3003 minecraft:barrel[facing=up]{Lock:"no"} replace minecraft:chain
execute if score start= 3scores matches 37 run fill 2994 30 2982 3006 30 2982 minecraft:barrel[facing=up]{Lock:"no"} replace minecraft:chain
execute if score start= 3scores matches 37 run fill 2994 29 3003 3006 29 2982 minecraft:air replace minecraft:barrel
execute if score start= 3scores matches 37 as @a[tag=playing] at @s run playsound minecraft:entity.blaze.hurt master @s ~ ~ ~ 0.7 1.15
    # Stage 14
execute if score start= 3scores matches 40 run fill 2994 31 3003 3006 31 3003 minecraft:barrel[facing=up]{Lock:"no"} replace minecraft:chain
execute if score start= 3scores matches 40 run fill 2994 31 2982 3006 31 2982 minecraft:barrel[facing=up]{Lock:"no"} replace minecraft:chain
execute if score start= 3scores matches 40 run fill 2994 30 3003 3006 30 2982 minecraft:air replace minecraft:barrel
execute if score start= 3scores matches 40 as @a[tag=playing] at @s run playsound minecraft:entity.blaze.hurt master @s ~ ~ ~ 0.7 1.2
    # Stage 15
execute if score start= 3scores matches 43 run fill 2994 32 3003 3006 32 3003 minecraft:barrel[facing=up]{Lock:"no"} replace minecraft:chain
execute if score start= 3scores matches 43 run fill 2994 32 2982 3006 32 2982 minecraft:barrel[facing=up]{Lock:"no"} replace minecraft:chain
execute if score start= 3scores matches 43 run fill 2994 31 3003 3006 31 2982 minecraft:air replace minecraft:barrel
execute if score start= 3scores matches 43 as @a[tag=playing] at @s run playsound minecraft:entity.blaze.hurt master @s ~ ~ ~ 0.7 1.25
    # Stage 16
execute if score start= 3scores matches 46 run fill 2994 33 3003 3006 33 3003 minecraft:barrel[facing=up]{Lock:"no"} replace minecraft:chain
execute if score start= 3scores matches 46 run fill 2994 33 2982 3006 33 2982 minecraft:barrel[facing=up]{Lock:"no"} replace minecraft:chain
execute if score start= 3scores matches 46 run fill 2994 32 3003 3006 32 2982 minecraft:air replace minecraft:barrel
execute if score start= 3scores matches 46 as @a[tag=playing] at @s run playsound minecraft:entity.blaze.hurt master @s ~ ~ ~ 0.7 1.3
    # Stage 17
execute if score start= 3scores matches 49 run fill 2994 34 3003 3006 34 3003 minecraft:barrel[facing=up]{Lock:"no"} replace minecraft:chain
execute if score start= 3scores matches 49 run fill 2994 34 2982 3006 34 2982 minecraft:barrel[facing=up]{Lock:"no"} replace minecraft:chain
execute if score start= 3scores matches 49 run fill 2994 33 3003 3006 33 2982 minecraft:air replace minecraft:barrel
execute if score start= 3scores matches 49 as @a[tag=playing] at @s run playsound minecraft:entity.blaze.hurt master @s ~ ~ ~ 0.7 1.35

# At 49 ticks (once all the barrels hit the top) schedules 2 functions
    # Runs the title function in 30 ticks
execute if score start= 3scores matches 49 run schedule function games:3/droptitle 30t
    # Runs the function to start the drop is 4 seconds
execute if score start= 3scores matches 49 run schedule function games:3/drop 4s
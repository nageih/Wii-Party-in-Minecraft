#   Author        =   @ JevinLevin
#   Description   =   Chooses where to spawn a new mole, and when to spawn the next
#   Called By     =   games:26/begin + games:26/new_mole


# Runs the spawn_mole function at a random empty hole
execute as @e[type=minecraft:area_effect_cloud,tag=hole,tag=!moled,sort=random,limit=1] at @s run function games:26/spawn_mole

# Increases the loop= score every time the function is ran. This makes sure that the code below only runs the first time the function is ran
scoreboard players add loop= 26scores 1
# Generates a random number between 1-8
execute if score loop= 26scores matches 1 store result score multiple= 26scores run loot spawn ~ -70 ~ loot games:26multiple
# If that number lands on 1-5 then nothing extra happens.
# If it lands on 6 or 7 then it repeats this function to spawn another mole
execute if score loop= 26scores matches 1 if score multiple= 26scores matches 6..7 run function games:26/new_mole
# If it lands on 8, then it runs this function 2 more times to spawn 2 more moles
execute if score loop= 26scores matches 1 if score multiple= 26scores matches 8 run function games:26/new_mole
execute if score loop= 26scores matches 1 if score multiple= 26scores matches 8 run function games:26/new_mole

# Generates a random number between 1 and 100
execute store result score random= 26scores run loot spawn ~ -70 ~ loot games:26random_time

# The number that is generated will determine how long until the next mole is spawned. The middle time is most likely, with it getting more unlikely the longer/shorter it takes
execute if score random= 26scores matches ..4 run schedule function games:26/new_mole 15t
execute if score random= 26scores matches 5..9 run schedule function games:26/new_mole 20t
execute if score random= 26scores matches 10..19 run schedule function games:26/new_mole 25t
execute if score random= 26scores matches 20..29 run schedule function games:26/new_mole 30t
execute if score random= 26scores matches 30..49 run schedule function games:26/new_mole 35t
execute if score random= 26scores matches 50..69 run schedule function games:26/new_mole 40t
execute if score random= 26scores matches 70..79 run schedule function games:26/new_mole 45t
execute if score random= 26scores matches 80..89 run schedule function games:26/new_mole 50t
execute if score random= 26scores matches 90..95 run schedule function games:26/new_mole 55t
execute if score random= 26scores matches 95.. run schedule function games:26/new_mole 60t

# Resets the temp scores used for these so it works next time its ran
scoreboard players reset loop= 26scores
scoreboard players reset multiple= 26scores
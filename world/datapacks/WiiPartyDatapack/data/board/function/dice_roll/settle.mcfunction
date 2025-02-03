#   Author        =   @ T4Bl3rUs
#   Description   =   Summons the entities to handle movement and starts the despawn timer
#   Called By     =   board:dice_roll/stop_bouncing

# Create the chicken on y = 0 (it has similar hitbox to the dice) (slimes were buggy)
summon minecraft:chicken ~ 0 ~ {Silent:1b,PersistenceRequired:1b,Tags:["newdice","dicex","diceroll","temp"],EggLayTime:1000000000,active_effects:[{id:"minecraft:slowness",amplifier:127,duration:1000000,show_particles:0b}]}

# Add the effects to the chicken
effect give @e[type=minecraft:chicken,tag=newdice] minecraft:slowness 1000000 127 true
effect give @e[type=minecraft:chicken,tag=newdice] minecraft:invisibility 1000000 127 true
effect give @e[type=minecraft:chicken,tag=newdice] minecraft:instant_health 1000000 6 true
# Tp the chicken to the dice
tp @e[type=minecraft:chicken,tag=temp,tag=newdice] ~ ~ ~
# Remove the "temp" tag
tag @e[type=minecraft:chicken,tag=temp] remove temp

# Summons the turtle on y = 0 (they have the smallest hittboxes)
summon minecraft:turtle ~ 0 ~ {Age:-100000,Silent:1b,Invulnerable:1b,Tags:["newdice","diceh","diceroll"]}

# Add the effects to the turtle
effect give @e[type=minecraft:turtle,tag=newdice] minecraft:slowness 1000000 127 true
effect give @e[type=minecraft:turtle,tag=newdice] minecraft:invisibility 1000000 127 true
effect give @e[type=minecraft:turtle,tag=newdice] minecraft:instant_health 1000000 6 true
effect give @e[type=minecraft:turtle,tag=newdice] minecraft:resistance 1000000 6 true

# Remove collisions
team join game18_slimes @e[type=minecraft:turtle,tag=newdice]
# Tp the turtle .1 blocks over the dice (avoids glitching through)
tp @e[type=minecraft:turtle,tag=newdice] ~ ~.1 ~

# Add the same id for both entities
scoreboard players operation @e[tag=newdice,sort=nearest,limit=2] diceId = @s diceId

# Set the timer to a high value (in case both die havent landed)
scoreboard players set @e[type=minecraft:chicken,tag=newdice] diceDespawn 10000000

# If both are on the floor set the timer to "duration=" (default is 50)
execute unless score rolling= dice matches 1 unless score rolling= draw matches 1 run scoreboard players operation @e[type=minecraft:chicken,tag=newdice] diceDespawn = duration= diceDespawn

# Remove the "newdice" tag and kill the previous motion armorstand
tag @e[tag=newdice] remove newdice
kill @s

# Increases the number of dice the player has rolled by 1
execute if score rolling= dice matches 1 run scoreboard players add total= dice 1

execute if score tornado= tiles matches 1 run scoreboard players add tornadoTotal= tiles 1

# If rolling for these tiles then skip this next check
execute if score ufo= tiles matches 1 run return 1
execute if score tornado= tiles matches 1 run return 1
execute if score dino= tiles matches 1 run return 1

# Checks if the player has throw all their dice. If so, it schedules the next function in 1 second
    # For players who get 2 dice
execute unless score eventRoll= tiles matches 1.. if score rolling= dice matches 1 unless score double= dice matches 1 if entity @a[tag=turn,tag=!4th] if score total= dice matches 2 run schedule function board:dice_roll/next 1s
execute unless score eventRoll= tiles matches 1.. if score rolling= dice matches 1 if score double= dice matches 1 if entity @a[tag=turn,tag=!4th] if score total= dice matches 2 run schedule function board:dice_roll/double 1s
    # If the player gets 1 dice (4th place)
execute unless score eventRoll= tiles matches 1.. if score rolling= dice matches 1 if entity @a[tag=turn,tag=4th] if score total= dice matches 1 run schedule function board:dice_roll/next 1s
    # Once the player has got a double and rolled it
execute unless score eventRoll= tiles matches 1.. if score rolling= dice matches 1 if score total= dice matches 3 run schedule function board:dice_roll/next 1s
    # If they are rolling for the rope swing event
execute if score ropeswing= tiles matches 1.. run function board:tiles/ropeswing/startrelease
    # If they are rolling for the dragonwall event
execute if score dragonwall= tiles matches 1.. if score eventRoll= diceRoll matches 4.. run schedule function board:tiles/dragonwall/win 10t
execute if score dragonwall= tiles matches 1.. if score eventRoll= diceRoll matches ..3 run schedule function board:tiles/dragonwall/fail 10t
    # If they are rolling for the spikeball event
execute if score spikeball= tiles matches 1.. if score eventRoll= diceRoll >= spikeRoll= tiles run schedule function board:tiles/spikeball/win 10t
execute if score spikeball= tiles matches 1.. if score eventRoll= diceRoll < spikeRoll= tiles run schedule function board:tiles/spikeball/fail 20t
    # If they are rolling for the final event
execute if score final= tiles matches 1.. if entity @a[tag=turn,tag=!startFinal] if score eventRoll= diceRoll matches 6.. run schedule function board:tiles/final/win 10t
execute if score final= tiles matches 1.. if entity @a[tag=turn,tag=!startFinal] if score eventRoll= diceRoll matches ..5 run schedule function board:tiles/final/fail 10t
execute if score final= tiles matches 1.. if entity @a[tag=turn,tag=startFinal,tag=4th] if score eventRoll= diceRoll matches 6.. run schedule function board:tiles/final/win 10t
execute if score final= tiles matches 1.. if entity @a[tag=turn,tag=startFinal,tag=4th] if score eventRoll= diceRoll matches ..5 run schedule function board:tiles/final/fail 10t
execute if score final= tiles matches 1.. if entity @a[tag=turn,tag=startFinal,tag=!4th] if score total= dice matches 2 unless score double= dice matches 1 if score eventRoll= diceRoll matches 6.. run schedule function board:tiles/final/win 10t
execute if score final= tiles matches 1.. if entity @a[tag=turn,tag=startFinal,tag=!4th] if score total= dice matches 2 unless score double= dice matches 1 if score eventRoll= diceRoll matches ..5 run schedule function board:tiles/final/fail 10t
execute if score final= tiles matches 1.. if entity @a[tag=turn,tag=startFinal,tag=!4th] if score total= dice matches 2 if score double= dice matches 1 run schedule function board:dice_roll/double 1s
execute if score final= tiles matches 1.. if entity @a[tag=turn,tag=startFinal,tag=!4th] if score total= dice matches 3 if score eventRoll= diceRoll matches 6.. run schedule function board:tiles/final/win 10t
execute if score final= tiles matches 1.. if entity @a[tag=turn,tag=startFinal,tag=!4th] if score total= dice matches 3 if score eventRoll= diceRoll matches ..5 run schedule function board:tiles/final/fail 10t
    # If rolling for draw position
execute if score drawRoll= tiles matches 1.. run schedule function board:draw/rolled 5t
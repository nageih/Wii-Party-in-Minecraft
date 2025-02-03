# Increments the players 1damaged score, used as a timer in for the function
scoreboard players add @s 1damaged 1

# Runs once, first time the function is run (as the player hits the cloud)
    # Increases the players 1damage score by 1, used to represent how many times the player has hit a cloud in the game
execute if score @s 1damaged matches 1 run scoreboard players add @s 1damage 1
    # Reloads the scoreboard display to update the player losing a life
execute if score @s 1damaged matches 1 run function games:1/display
    # Changes the title times for the player so that the red tint fades in and out correctly
execute if score @s 1damaged matches 1 run title @s times 20 10 20
    # This unicode value is an image of a red tinted border, represnts the player taking damage
execute if score @s 1damaged matches 1 run title @s title {"text":"c","font":"minecraft:fade"}
    # Clears the subtitle for the player as there was an issue where the subtitle from the countdown would still be on the screen, causing visual issues with the red tint title
execute if score @s 1damaged matches 1 run title @s subtitle {"text":"","type":"text"}
    # Gives the player the max value of levitation which causes the player to smoothly float
execute if score @s 1damaged matches 1 run effect give @s minecraft:levitation infinite 255 true
    # Gives the player the max value of resistance so that they don't take damage to the lightning bolts that are summoned on them
execute if score @s 1damaged matches 1 run effect give @s minecraft:resistance infinite 255 true

# Summons a lightning bolts at the player at random hardcoded intervals
execute if score @s 1damaged matches 1 run summon minecraft:lightning_bolt
execute if score @s 1damaged matches 8 run summon minecraft:lightning_bolt
execute if score @s 1damaged matches 19 run summon minecraft:lightning_bolt
execute if score @s 1damaged matches 27 run summon minecraft:lightning_bolt

# Clears the levitation from the player one tick before the end
execute if score @s 1damaged matches 27 run effect clear @s minecraft:levitation

# These run at the final tick
    # Clears the resistance from the player as there are no more lightning bolts to damage the player
execute if score @s 1damaged matches 28 run effect clear @s minecraft:resistance
    # Removes the 1damaged tag from the player so that this function stops running as the player
execute if score @s 1damaged matches 28 run tag @s remove 1damaged
    # Adds the 1beenDamaged tag to the player, this stops the player getting the 1damaged tag again so that this function isnt run again
execute if score @s 1damaged matches 28 run tag @s add 1beenDamaged
    # If this is the second time the player hits a cloud, it runs the die function which kills them
execute if score @s 1damaged matches 28 if score @s 1damage matches 2 run function games:1/die
    # Resets the players 1damaged score so that the function doesnt break if they hit another cloud as it will be back at 0
execute if score @s 1damaged matches 28 run scoreboard players reset @s 1damaged

# There is a super annoying bug when players have high values of levitation where for some reason when they take damage they yeet up into the air
# The easiest way i could find to fix this was by constantly tping the player to themself which removes all motion
execute if score @s 1damaged matches 1..28 run tp @s @s

# Advancement
execute if score level= 1scores matches 1 run scoreboard players set @s advancements 1
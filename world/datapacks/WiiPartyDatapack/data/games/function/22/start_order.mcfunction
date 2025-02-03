# Resets all scores in the 22order so that it can all be run again
scoreboard players reset * 22order

# Sets the current= score to 0 to show that no one has an ID
scoreboard players set current= 22order 0

# Runs the give_order function as all players ingame to give them a unique scoreboard value
execute as @a[tag=ingame] run function games:22/give_order

# Removes all the players id tag as its no longer needed anymore
tag @a[tag=ingame] remove id
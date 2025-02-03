#   Author        =   @ JevinLevin
#   Description   =   Swaps out the new zombie with the old zombie in order to change the zombies agro target
#   Called By     =   games:2/agro


# Clears the invis from the zombie so they can be seen again
effect clear @e[type=minecraft:zombie,tag=newzombie,sort=nearest,limit=1] minecraft:invisibility

# Adds the 2kill tag to the player so that the scheduled function can kill them cos /schedule doesnt keep context
tag @s add 2kill

# Sets the new zombies id to the current closest players id 
scoreboard players operation @e[type=minecraft:zombie,tag=newzombie,sort=nearest,limit=1] 2id = @p[tag=ingame] 2id

# Removes the new zombie's newzombie tag as it has now become the main zombie
tag @e[type=minecraft:zombie,tag=newzombie,sort=nearest,limit=1] remove newzombie
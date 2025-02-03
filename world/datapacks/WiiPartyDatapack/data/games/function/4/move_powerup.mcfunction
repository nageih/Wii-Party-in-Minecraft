#   Author        =   @ JevinLevin
#   Description   =   Makes sure the powerup is in a correct position on the track
#   Called By     =   games:4/new_powerup


# Spreadplayers around the centre of the map to place the armor stand in a random location
# Has to run at the location of an area effect cloud as i kept getting a weird bug when i used specific coords
execute at @e[type=minecraft:area_effect_cloud,tag=4temp] run spreadplayers ~ ~ 10 10 false @s

# Underneath the map is lime concrete marking out the track. If the armor stand isnt above it, or its too close to a player then it repeats the function to find a new position
execute at @s unless block ~ 16 ~ minecraft:lime_concrete unless entity @a[distance=...5,tag=ingame,tag=!4dead] run function games:4/move_powerup

# Teleports that powerup to the correct y coord
execute at @s run tp @s ~ 21 ~

# Plays a sound at the new armor stand
execute at @s[tag=temppowerup] run playsound minecraft:entity.experience_orb.pickup master @a ~ ~ ~ 3 1

tag @s remove temppowerup
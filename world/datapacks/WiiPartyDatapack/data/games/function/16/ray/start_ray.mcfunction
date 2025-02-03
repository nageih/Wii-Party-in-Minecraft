#Setting up the raycasting data.

tag @s add 16ignore
scoreboard players set #hit 16scores 0
scoreboard players set #distance 16scores 0

#Activating the raycast. This function will call itself until it is done.

function games:16/ray/ray

#Raycasting finished, removing tag from the raycaster.

tag @s remove 16ignore
#   Author        =   @ JevinLevin
#   Description   =   Ran if the player is hit with a bullet in the side or front
#   Called By     =   games:4/player


# Plays block sound to signify that the bullet has hit the wrong side
playsound minecraft:item.shield.block master @a ~ ~ ~ 3 1.2

# Kills the bullet
execute as @s[team=blue] run kill @n[type=block_display,tag=4shot,tag=!blue]
execute as @s[team=red] run kill @n[type=block_display,tag=4shot,tag=!red]
execute as @s[team=green] run kill @n[type=block_display,tag=4shot,tag=!green]
execute as @s[team=orange] run kill @n[type=block_display,tag=4shot,tag=!orange]

# Displays angry villager particles at the bullet
particle minecraft:angry_villager ~ ~ ~ 0.8 0.8 0.8 0.1 10 force
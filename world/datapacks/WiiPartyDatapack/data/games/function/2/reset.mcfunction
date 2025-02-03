#   Author        =   @ JevinLevin
#   Description   =   Resets the minigame no matter the stage
#   Called By     =   Used for debug purposes atm


# Clears the scheduled functions
schedule clear games:2/end
schedule clear general:fade/main
schedule clear games:2/starttitle

# Resets all scores
scoreboard players set ingame 2scores 0
scoreboard players reset end= 2scores
scoreboard players reset start= 2scores
scoreboard players reset global minigames
scoreboard players reset agro= 2scores
scoreboard players reset @a 2id
scoreboard players reset @a 2agro

# Rejoins all players back to their team
team join blue @a[tag=blue]
team join red @a[tag=red]
team join green @a[tag=green]
team join orange @a[tag=orange]

# Clears all players slowness and jump boost, given to stop playes from moving during the end animation
effect clear @a[tag=ingame] minecraft:slowness
execute as @a[tag=ingame] run attribute @s minecraft:generic.jump_strength base set 0.41999998688697815

# Removes the dead and zombie tags, given to the player when they turn into a zombie
tag @a remove dead

# Kills all the boats summoned above the players to force them to crawl
kill @e[type=minecraft:boat,tag=1endboat]
kill @e[type=minecraft:armor_stand,tag=2freeze]
kill @e[type=minecraft:zombie,tag=zombietag]
kill @e[type=minecraft:armor_stand,tag=2flowerpot]
kill @e[type=minecraft:zombie,tag=zombietag]
tp @e[type=minecraft:zombie,tag=zombietag] 0 -70 0
kill @e[type=minecraft:zombie,tag=startzombie]
tp @e[type=minecraft:zombie,tag=startzombie] 0 -70 0

# Resets the gate back to the closed version
function games:2/gates/1

# Not sure why this is here but im too scared to remove it
fill 1983 11 2008 1982 11 2008 minecraft:air

# Sets the time back to day to match with the other minigames
time set noon

# Clears all players as players who become zombies are given items and this makes sure they are gone
clear @a[tag=playing]

# Removes the sign used on the gravestone
setblock 1993 11 2010 minecraft:air

# Hides the scoreboard
scoreboard objectives setdisplay sidebar

# Clears any hunger and gives saturation instead
effect clear @a[tag=ingame] minecraft:hunger
effect give @a[tag=ingame] minecraft:saturation infinite 255 true

# Removes tag team names
tag @a[tag=playing] remove blue
tag @a[tag=playing] remove red
tag @a[tag=playing] remove green
tag @a[tag=playing] remove orange
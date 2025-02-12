#   Author        =   @ JevinLevin
#   Description   =   Ends the minigame and will run the next function of the game
#   Called By     =   games:2/endgame

# Resets the global minigame score after the game ends
execute if score playing= lobby matches 1 if score testing options matches 0 run scoreboard players reset global minigame

# Schedules the the draw segment in 12 ticks
execute if score playing= lobby matches 1 if score testing options matches 0 run schedule function board:draw/startstart 1t

# Return to lobby if playing just minigame
execute if score playing= lobby matches 2 run schedule function lobby:return_to_lobby 1t


# Kill all entities used for the mingame that arent needed anymore
kill @e[type=minecraft:zombie,tag=zombietag]
kill @e[type=minecraft:armor_stand,tag=2flowerpot]

# Rejoins all players back to their team
team join blue @a[tag=blue]
team join red @a[tag=red]
team join green @a[tag=green]
team join orange @a[tag=orange]

# Resets the gate back to the closed version
function games:2/gates/1

# Not sure why this is here but im too scared to remove it
fill 1983 11 2008 1982 11 2008 minecraft:air

# Removes the tags given to players who turn into zombies
tag @a remove dead

# Resets the end= score that increases during the end animation
scoreboard players reset end= 2scores
scoreboard players reset agro= 2scores
scoreboard players reset @a 2id
scoreboard players reset @a 2agro

# Sets the time back to day to match with the other minigames
time set noon

# Clears all players as players who become zombies are given items and this makes sure they are gone
clear @a[tag=playing]

# Removes the sign used on the gravestone
setblock 1993 11 2010 minecraft:air

# Hides the scoreboard
scoreboard objectives setdisplay sidebar

scoreboard players set enabled= specOptions 0

tag @a[tag=playing] remove blue
tag @a[tag=playing] remove red
tag @a[tag=playing] remove green
tag @a[tag=playing] remove orange

effect clear @a[tag=ingame] haste

schedule clear games:2/play_song
#   Author        =   @ JevinLevin
#   Description   =   Ran as a barrel when the player presses the button
#   Called By     =   games:3/dropping


# Removes the falling blocks gravity and motion to stop it in the air
data merge entity @s {NoGravity:1b,Motion:[0.0d,0.0d,0.0d]}

# If the player stops the barrel in the first 10 ticks, it sets the block underneath to a barrier. This stops a weird visual bug where the block would bug out and continue floating down
execute unless score timer= 3scores matches 10.. run setblock ~ ~-1 ~ minecraft:barrier

# Plays the sound at the player who presses the stop button for all players
execute if entity @s[tag=!far] as @p[tag=ingame] at @s run playsound minecraft:block.anvil.place master @a ~ ~ ~ 0.7 1.5

# Gives the player the stopped tag
tag @s add stopped
#   Author        =   @ JevinLevin
#   Description   =   Ran at the end of the game to turn the players who were zombies back into players, and kill all the zombie entities
#   Called By     =   games:2/endanimation


# Poof particles for transition
particle minecraft:poof ~ ~ ~ 0.6 0.6 0.6 0.0001 50 force

# Boom sound effect
playsound minecraft:entity.generic.explode master @a ~ ~ ~ 0.5

# Clears the players as they may have armor given to them when turned into a zombie
clear @s

# If the entity running the command is a player then summon an invisible boat above. This forces the player to lie down, and kinda looks like they fell over
execute if entity @s[type=minecraft:player] run summon minecraft:boat ~ ~1 ~ {Type:"acacia",Tags:["1endboat"],Passengers:[{id:"minecraft:area_effect_cloud",Duration:120},{id:"minecraft:area_effect_cloud",Duration:120}]}

# If the entit running the command is a zombie, then tp it into the void to kill it
execute if entity @s[type=minecraft:zombie] run tp @s 0 -70 0


effect clear @s haste
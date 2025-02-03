#   Author        =   @ JevinLevin
#   Description   =   Lets the player start moving again after being knocked
#   Called By     =   games:26/knocked


# Kills the armor stand that they get teleported to
execute as @e[type=minecraft:armor_stand,tag=knocked] if score @s id = temp= id at @s run kill @s

# Removes their effects so they can move again
effect clear @s minecraft:slowness
execute if score ingame= 26scores matches 2 run effect clear @s minecraft:weakness
attribute @s minecraft:generic.jump_strength base set 0.41999998688697815
effect clear @s minecraft:jump_boost
effect clear @s minecraft:haste
effect clear @s minecraft:blindness

# Gives them back slowness so they arent as fast
#effect give @s slowness 1000000 3 true

# Gives the recover tag to play the animation and stop them being knocked again
tag @s add recover

# Finally resets their knocked cooldown score for next time
scoreboard players reset @s 26knocked

setblock ~ 20 ~ minecraft:air

# FOR SOME FUCKING REASON THIS FIXES THE PLAYER BUGGING OUT AT THE END OKAY
tp @s @s
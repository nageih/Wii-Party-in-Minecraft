#   Author        =   @ JevinLevin
#   Description   =   Starts the end animation, ran as soon as the game ends
#   Called By     =   games:2/repeating


# Sets the ingame score to 4 which indicates the end animation is running
scoreboard players set ingame 2scores 4
scoreboard players reset agro= 2scores

execute as @a[tag=playing] at @s run playsound entity.ravager.roar master @s ~ ~ ~ 1 1.5

# Sets the time to a sunrise time
time set 12500t

# Gives all players slowness and jump boost which (pretty much) stops them from moving
effect give @a[tag=ingame] minecraft:slowness infinite 255 true
execute as @a[tag=ingame] run attribute @s minecraft:generic.jump_strength base set 0

# Gives zombies slowness too to stop them moving
effect give @e[type=minecraft:zombie,tag=zombietag] minecraft:slowness infinite 255 true

# Gives players who aren't zombies the 1st tag as they have won
tag @a[tag=ingame,tag=!dead] add 1st

# Clears the hunger and gives players saturation, these are used to quickly stop players sprinting when they turn into a zombie during the minigame
effect clear @a[tag=playing] minecraft:hunger
effect give @a[tag=playing] minecraft:saturation 10 1 true

# Summons an invisible armor stand at each player, to teleport them to it during the animations so they cant move
execute at @a[tag=ingame] run summon minecraft:armor_stand ~ ~ ~ {Invisible:1b,Tags:["2freeze"],DisabledSlots:4144959,Silent:1b}

stopsound @a[tag=playing] voice

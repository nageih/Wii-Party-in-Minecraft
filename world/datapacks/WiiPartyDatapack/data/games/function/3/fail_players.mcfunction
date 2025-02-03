#   Author        =   @ JevinLevin
#   Description   =   Ran as the players who fail when the barrel smashes them
#   Called By     =   games:3/repeating


# Gives the player the 'failed' tag
tag @s add failed

# Changes the title times for the player so that the red tint fades in and out correctly
title @s times 5 10 5
# This unicode value is an image of a red tinted border, represnts the player taking damage
title @s title {"text":"c","font":"minecraft:fade"}

# Resets the player's 3time score so that the game knows they failed when finding the highest score
scoreboard players reset @s 3time

# Summon an invisible boat above. This forces the player to lie down, and kinda looks like they fell over
summon minecraft:boat ~ ~1 ~ {Type:"acacia",Tags:["2endboat"],Passengers:[{id:"minecraft:area_effect_cloud",Duration:120},{id:"minecraft:area_effect_cloud",Duration:120}]}
# Gives the player slowness so they can't escape from underneath the boat
effect give @s minecraft:slowness infinite 255 true

# Kill armor stand
execute as @s[team=blue] run kill @e[type=armor_stand,tag=3player,team=blue]
execute as @s[team=red] run kill @e[type=armor_stand,tag=3player,team=red]
execute as @s[team=green] run kill @e[type=armor_stand,tag=3player,team=green]
execute as @s[team=orange] run kill @e[type=armor_stand,tag=3player,team=orange]


# Randomiser, used to generate a random minigame themed death message
    # Stores the result of a loot table in the random= score which chooses the death message
execute store result score random= 2scores run loot spawn ~ -70 ~ loot games:3death_messages
    # If the random= score is a specific number, it chooses a specific death message
tag @s add this
execute if score random= 2scores matches 1 run tellraw @a[tag=playing,tag=!this] {"nbt":"colors.base","storage":"minecraft:config","interpret":true,"extra":[{"translate":"deathMessages.BarrelDaredevil1","with":[{"selector":"@s","type":"selector"}],"bold":false}],"source":"storage","type":"nbt"}
execute if score random= 2scores matches 2 run tellraw @a[tag=playing,tag=!this] {"nbt":"colors.base","storage":"minecraft:config","interpret":true,"extra":[{"translate":"deathMessages.BarrelDaredevil2","with":[{"selector":"@s","type":"selector"}],"bold":false}],"source":"storage","type":"nbt"}
execute if score random= 2scores matches 3 run tellraw @a[tag=playing,tag=!this] {"nbt":"colors.base","storage":"minecraft:config","interpret":true,"extra":[{"translate":"deathMessages.BarrelDaredevil3","with":[{"selector":"@s","type":"selector"}],"bold":false}],"source":"storage","type":"nbt"}
execute if score random= 2scores matches 4 run tellraw @a[tag=playing,tag=!this] {"nbt":"colors.base","storage":"minecraft:config","interpret":true,"extra":[{"translate":"deathMessages.BarrelDaredevil4","with":[{"selector":"@s","type":"selector"}],"bold":false}],"source":"storage","type":"nbt"}
execute if score random= 2scores matches 5 run tellraw @a[tag=playing,tag=!this] {"nbt":"colors.base","storage":"minecraft:config","interpret":true,"extra":[{"translate":"deathMessages.BarrelDaredevil5","with":[{"selector":"@s","type":"selector"}],"bold":false}],"source":"storage","type":"nbt"}
execute if score random= 2scores matches 6 run tellraw @a[tag=playing,tag=!this] {"nbt":"colors.base","storage":"minecraft:config","interpret":true,"extra":[{"translate":"deathMessages.BarrelDaredevil6","with":[{"selector":"@s","type":"selector"}],"bold":false}],"source":"storage","type":"nbt"}
execute if score random= 2scores matches 7 run tellraw @a[tag=playing,tag=!this] {"nbt":"colors.base","storage":"minecraft:config","interpret":true,"extra":[{"translate":"deathMessages.BarrelDaredevil7","with":[{"selector":"@s","type":"selector"}],"bold":false}],"source":"storage","type":"nbt"}
execute if score random= 2scores matches 8 run tellraw @a[tag=playing,tag=!this] {"nbt":"colors.base","storage":"minecraft:config","interpret":true,"extra":[{"translate":"deathMessages.BarrelDaredevil8","with":[{"selector":"@s","type":"selector"}],"bold":false}],"source":"storage","type":"nbt"}

execute if score random= 2scores matches 1 run tellraw @s {"nbt":"colors.base","storage":"minecraft:config","interpret":true,"extra":[{"translate":"deathMessages.BarrelDaredevil1","with":[{"selector":"@s","type":"selector"}],"bold":false}],"source":"storage","type":"nbt"}
execute if score random= 2scores matches 2 run tellraw @s {"nbt":"colors.base","storage":"minecraft:config","interpret":true,"extra":[{"translate":"deathMessages.BarrelDaredevil2","with":[{"selector":"@s","type":"selector"}],"bold":false}],"source":"storage","type":"nbt"}
execute if score random= 2scores matches 3 run tellraw @s {"nbt":"colors.base","storage":"minecraft:config","interpret":true,"extra":[{"translate":"deathMessages.BarrelDaredevil3","with":[{"selector":"@s","type":"selector"}],"bold":false}],"source":"storage","type":"nbt"}
execute if score random= 2scores matches 4 run tellraw @s {"nbt":"colors.base","storage":"minecraft:config","interpret":true,"extra":[{"translate":"deathMessages.BarrelDaredevil4","with":[{"selector":"@s","type":"selector"}],"bold":false}],"source":"storage","type":"nbt"}
execute if score random= 2scores matches 5 run tellraw @s {"nbt":"colors.base","storage":"minecraft:config","interpret":true,"extra":[{"translate":"deathMessages.BarrelDaredevil5","with":[{"selector":"@s","type":"selector"}],"bold":false}],"source":"storage","type":"nbt"}
execute if score random= 2scores matches 6 run tellraw @s {"nbt":"colors.base","storage":"minecraft:config","interpret":true,"extra":[{"translate":"deathMessages.BarrelDaredevil6","with":[{"selector":"@s","type":"selector"}],"bold":false}],"source":"storage","type":"nbt"}
execute if score random= 2scores matches 7 run tellraw @s {"nbt":"colors.base","storage":"minecraft:config","interpret":true,"extra":[{"translate":"deathMessages.BarrelDaredevil7","with":[{"selector":"@s","type":"selector"}],"bold":false}],"source":"storage","type":"nbt"}
execute if score random= 2scores matches 8 run tellraw @s {"nbt":"colors.base","storage":"minecraft:config","interpret":true,"extra":[{"translate":"deathMessages.BarrelDaredevil8","with":[{"selector":"@s","type":"selector"}],"bold":false}],"source":"storage","type":"nbt"}

tag @s remove this
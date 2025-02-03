#   Author        =   @ JevinLevin
#   Description   =   Ran if the player is hit with a bullet in the back
#   Called By     =   games:4/player


# Gives the player the 4hit tag, used to run the death animation as the player
tag @s add 4hit

scoreboard players set @s 4deathTimer 0

# Plays the explode sound at the player
playsound minecraft:entity.generic.explode master @a ~ ~ ~ 3 2

# Displays large ammount of smoke particles at the player
particle minecraft:large_smoke ~ ~.3 ~ 0.7 0.3 0.7 0.001 25 force

# Change carts teleport duration
execute as @s[team=blue] as @e[type=minecraft:item_display,tag=4cart,tag=blue] run data merge entity @s {teleport_duration:1}
execute as @s[team=red] as @e[type=minecraft:item_display,tag=4cart,tag=red] run data merge entity @s {teleport_duration:1}
execute as @s[team=green] as @e[type=minecraft:item_display,tag=4cart,tag=green] run data merge entity @s {teleport_duration:1}
execute as @s[team=orange] as @e[type=minecraft:item_display,tag=4cart,tag=orange] run data merge entity @s {teleport_duration:1}

execute as @s[team=blue] as @e[type=minecraft:item_display,tag=4cart,tag=blue] run tag @s add 4hit
execute as @s[team=red] as @e[type=minecraft:item_display,tag=4cart,tag=red] run tag @s add 4hit
execute as @s[team=green] as @e[type=minecraft:item_display,tag=4cart,tag=green] run tag @s add 4hit
execute as @s[team=orange] as @e[type=minecraft:item_display,tag=4cart,tag=orange] run tag @s add 4hit

tag @a remove this
tag @a remove 4shooter

execute if entity @n[type=block_display,tag=4shot,tag=blue] run tag @a[team=blue] add 4shooter
execute if entity @n[type=block_display,tag=4shot,tag=red] run tag @a[team=red] add 4shooter
execute if entity @n[type=block_display,tag=4shot,tag=green] run tag @a[team=green] add 4shooter
execute if entity @n[type=block_display,tag=4shot,tag=orange] run tag @a[team=orange] add 4shooter

# Kills all close bullet armor stands
kill @e[type=minecraft:block_display,distance=...75,tag=4shot]

# Randomiser, used to generate a random minigame themed death message
    # Stores the result of a loot table in the random= score which chooses the death message
execute store result score random= 4scores run loot spawn ~ -70 ~ loot games:4death_messages
    # If the random= score is a specific number, it chooses a specific death message
tag @s add this

execute if score random= 4scores matches 1 run tellraw @a[tag=playing,tag=!4shooter,tag=!this] {"nbt":"colors.base","storage":"minecraft:config","interpret":true,"extra":[{"translate":"deathMessages.BackAttack1","with":[{"selector":"@s","type":"selector"},{"selector":"@a[tag=4shooter]","type":"selector"}]}],"source":"storage","type":"nbt"}

execute if score random= 4scores matches 1 run tellraw @a[tag=playing,tag=4shooter,tag=!this] {"nbt":"colors.base","storage":"minecraft:config","interpret":true,"extra":[{"translate":"deathMessages.BackAttack1","with":[{"selector":"@s","type":"selector"},{"selector":"@a[tag=4shooter]","bold":true,"type":"selector"}],"bold":false}],"source":"storage","type":"nbt"}
execute if score random= 4scores matches 1 run tellraw @s {"nbt":"colors.base","storage":"minecraft:config","interpret":true,"extra":[{"translate":"deathMessages.BackAttack1","with":[{"selector":"@s","bold":true,"type":"selector"},{"selector":"@a[tag=4shooter]","bold":false,"type":"selector"}],"bold":false}],"source":"storage","type":"nbt"}

execute if score random= 4scores matches 2 run tellraw @a[tag=playing,tag=!4shooter,tag=!this] {"nbt":"colors.base","storage":"minecraft:config","interpret":true,"extra":[{"translate":"deathMessages.BackAttack2","with":[{"selector":"@s","type":"selector"},{"selector":"@a[tag=4shooter]","type":"selector"}]}],"source":"storage","type":"nbt"}

execute if score random= 4scores matches 2 run tellraw @a[tag=playing,tag=4shooter,tag=!this] {"nbt":"colors.base","storage":"minecraft:config","interpret":true,"extra":[{"translate":"deathMessages.BackAttack2","with":[{"selector":"@s","bold":false,"type":"selector"},{"selector":"@a[tag=4shooter]","bold":true,"type":"selector"}],"bold":false}],"source":"storage","type":"nbt"}
execute if score random= 4scores matches 2 run tellraw @s {"nbt":"colors.base","storage":"minecraft:config","interpret":true,"extra":[{"translate":"deathMessages.BackAttack2","with":[{"selector":"@s","bold":true,"type":"selector"},{"selector":"@a[tag=4shooter]","bold":false,"type":"selector"}],"bold":false}],"source":"storage","type":"nbt"}

execute if score random= 4scores matches 3 run tellraw @a[tag=playing,tag=!this] {"nbt":"colors.base","storage":"minecraft:config","interpret":true,"extra":[{"translate":"deathMessages.BackAttack3","with":[{"selector":"@s","bold":false,"type":"selector"}],"bold":false}],"source":"storage","type":"nbt"}
execute if score random= 4scores matches 4 run tellraw @a[tag=playing,tag=!this] {"nbt":"colors.base","storage":"minecraft:config","interpret":true,"extra":[{"translate":"deathMessages.BackAttack4","with":[{"selector":"@s","bold":false,"type":"selector"}],"bold":false}],"source":"storage","type":"nbt"}
execute if score random= 4scores matches 5 run tellraw @a[tag=playing,tag=!this] {"nbt":"colors.base","storage":"minecraft:config","interpret":true,"extra":[{"translate":"deathMessages.BackAttack5","with":[{"selector":"@s","bold":false,"type":"selector"}],"bold":false}],"source":"storage","type":"nbt"}
execute if score random= 4scores matches 6 run tellraw @a[tag=playing,tag=!this] {"nbt":"colors.base","storage":"minecraft:config","interpret":true,"extra":[{"translate":"deathMessages.BackAttack6","with":[{"selector":"@s","bold":false,"type":"selector"}],"bold":false}],"source":"storage","type":"nbt"}
execute if score random= 4scores matches 7 run tellraw @a[tag=playing,tag=!this] {"nbt":"colors.base","storage":"minecraft:config","interpret":true,"extra":[{"translate":"deathMessages.BackAttack7","with":[{"selector":"@s","bold":false,"type":"selector"}],"bold":false}],"source":"storage","type":"nbt"}
execute if score random= 4scores matches 8 run tellraw @a[tag=playing,tag=!this] {"nbt":"colors.base","storage":"minecraft:config","interpret":true,"extra":[{"translate":"deathMessages.BackAttack8","with":[{"selector":"@s","bold":false,"type":"selector"}],"bold":false}],"source":"storage","type":"nbt"}

execute if score random= 4scores matches 3 run tellraw @s {"nbt":"colors.base","storage":"minecraft:config","interpret":true,"extra":[{"translate":"deathMessages.BackAttack3","with":[{"selector":"@s","bold":true,"type":"selector"}],"bold":false}],"source":"storage","type":"nbt"}
execute if score random= 4scores matches 4 run tellraw @s {"nbt":"colors.base","storage":"minecraft:config","interpret":true,"extra":[{"translate":"deathMessages.BackAttack4","with":[{"selector":"@s","bold":true,"type":"selector"}],"bold":false}],"source":"storage","type":"nbt"}
execute if score random= 4scores matches 5 run tellraw @s {"nbt":"colors.base","storage":"minecraft:config","interpret":true,"extra":[{"translate":"deathMessages.BackAttack5","with":[{"selector":"@s","bold":true,"type":"selector"}],"bold":false}],"source":"storage","type":"nbt"}
execute if score random= 4scores matches 6 run tellraw @s {"nbt":"colors.base","storage":"minecraft:config","interpret":true,"extra":[{"translate":"deathMessages.BackAttack6","with":[{"selector":"@s","bold":true,"type":"selector"}],"bold":false}],"source":"storage","type":"nbt"}
execute if score random= 4scores matches 7 run tellraw @s {"nbt":"colors.base","storage":"minecraft:config","interpret":true,"extra":[{"translate":"deathMessages.BackAttack7","with":[{"selector":"@s","bold":true,"type":"selector"}],"bold":false}],"source":"storage","type":"nbt"}
execute if score random= 4scores matches 8 run tellraw @s {"nbt":"colors.base","storage":"minecraft:config","interpret":true,"extra":[{"translate":"deathMessages.BackAttack8","with":[{"selector":"@s","bold":true,"type":"selector"}],"bold":false}],"source":"storage","type":"nbt"}

tag @a remove this
tag @a remove 4shooter

tag @s remove 4left
tag @s remove 4right
title @s actionbar ""
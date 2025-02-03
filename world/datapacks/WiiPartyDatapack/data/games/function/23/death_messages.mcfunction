tag @s add this
# Randomiser, used to generate a random minigame themed death message
    # Stores the result of a loot table in the random= score which chooses the death message
execute store result score random= 23scores run loot spawn ~ -70 ~ loot games:1death_messages
    # If the random= score is a specific number, it chooses a specific death message
execute if score random= 23scores matches 1 run tellraw @a[tag=playing,tag=!this] {"color":"gray","translate":"deathMessages.RiskyRailway1","with":[{"selector":"@s","type":"selector"}],"bold":false}
execute if score random= 23scores matches 2 run tellraw @a[tag=playing,tag=!this] {"color":"gray","translate":"deathMessages.RiskyRailway2","with":[{"selector":"@s","type":"selector"}],"bold":false}
execute if score random= 23scores matches 3 run tellraw @a[tag=playing,tag=!this] {"color":"gray","translate":"deathMessages.RiskyRailway3","with":[{"selector":"@s","type":"selector"}],"bold":false}
execute if score random= 23scores matches 4 run tellraw @a[tag=playing,tag=!this] {"color":"gray","translate":"deathMessages.RiskyRailway4","with":[{"selector":"@s","type":"selector"}],"bold":false}


execute if score random= 23scores matches 5 if entity @s[tag=23left] run tag @r[tag=ingame,tag=!dead,tag=!23left] add 23randp
execute if score random= 23scores matches 5 if entity @s[tag=23forward] run tag @r[tag=ingame,tag=!dead,tag=!23forward] add 23randp
execute if score random= 23scores matches 5 if entity @s[tag=23right] run tag @r[tag=ingame,tag=!dead,tag=!23right] add 23randp
execute if score random= 23scores matches 5 unless entity @a[tag=23randp] run scoreboard players set random= 23scores 6
execute if score random= 23scores matches 5 run tellraw @a[tag=playing,tag=!4shooter,tag=!this] {"nbt":"colors.base","storage":"minecraft:config","interpret":true,"extra":[{"translate":"deathMessages.RiskyRailway5","with":[{"selector":"@s","type":"selector"},{"selector":"@a[tag=23randp]","type":"selector"}]}],"source":"storage","type":"nbt"}
execute if score random= 23scores matches 5 run tellraw @a[tag=playing,tag=4shooter,tag=!this] {"nbt":"colors.base","storage":"minecraft:config","interpret":true,"extra":[{"translate":"deathMessages.RiskyRailway5","with":[{"selector":"@s","bold":false,"type":"selector"},{"selector":"@a[tag=23randp]","bold":true,"type":"selector"}],"bold":false}],"source":"storage","type":"nbt"}
execute if score random= 23scores matches 5 run tellraw @s {"nbt":"colors.base","storage":"minecraft:config","interpret":true,"extra":[{"translate":"deathMessages.RiskyRailway5","with":[{"selector":"@s","bold":true,"type":"selector"},{"selector":"@a[tag=23randp]","bold":false,"type":"selector"}],"bold":false}],"source":"storage","type":"nbt"}
tag @a remove 23randp

execute if score random= 23scores matches 6 run tellraw @a[tag=playing,tag=!this] {"color":"gray","translate":"deathMessages.RiskyRailway6","with":[{"selector":"@s","type":"selector"}],"bold":false}
execute if score random= 23scores matches 7 run tellraw @a[tag=playing,tag=!this] {"color":"gray","translate":"deathMessages.RiskyRailway7","with":[{"selector":"@s","type":"selector"}],"bold":false}
execute if score random= 23scores matches 8 run tellraw @a[tag=playing,tag=!this] {"color":"gray","translate":"deathMessages.RiskyRailway8","with":[{"selector":"@s","type":"selector"}],"bold":false}




execute if score random= 23scores matches 1 run tellraw @s {"color":"gray","translate":"deathMessages.RiskyRailway1","with":[{"selector":"@s","bold":true,"type":"selector"}],"bold":false}
execute if score random= 23scores matches 2 run tellraw @s {"color":"gray","translate":"deathMessages.RiskyRailway2","with":[{"selector":"@s","bold":true,"type":"selector"}],"bold":false}
execute if score random= 23scores matches 3 run tellraw @s {"color":"gray","translate":"deathMessages.RiskyRailway3","with":[{"selector":"@s","bold":true,"type":"selector"}],"bold":false}
execute if score random= 23scores matches 4 run tellraw @s {"color":"gray","translate":"deathMessages.RiskyRailway4","with":[{"selector":"@s","bold":true,"type":"selector"}],"bold":false}
#execute if score random= 23scores matches 5 run tellraw @s {"color":"gray","translate":"deathMessages.RiskyRailway5","with":[{"selector":"@s","bold":true,"type":"selector"}],"bold":false}
execute if score random= 23scores matches 6 run tellraw @s {"color":"gray","translate":"deathMessages.RiskyRailway6","with":[{"selector":"@s","bold":true,"type":"selector"}],"bold":false}
execute if score random= 23scores matches 7 run tellraw @s {"color":"gray","translate":"deathMessages.RiskyRailway7","with":[{"selector":"@s","bold":true,"type":"selector"}],"bold":false}
execute if score random= 23scores matches 8 run tellraw @s {"color":"gray","translate":"deathMessages.RiskyRailway8","with":[{"selector":"@s","bold":true,"type":"selector"}],"bold":false}

tag @s remove this
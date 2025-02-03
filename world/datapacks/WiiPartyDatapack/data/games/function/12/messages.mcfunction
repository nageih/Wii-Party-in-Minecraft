#   Author        =   @ T4Bl3rUs
#   Description   =   Checks if there is a hider in the seeker's closest structure and uncovers him.
#   Called By     =   games:12/uncover

# Stores the result of a loot table in the random= score which chooses the message
execute store result score random= 12scores run loot spawn ~ -70 ~ loot games:12messages
# If the random= score is a specific number, it chooses a specific message
tag @s add this

execute if score random= 12scores matches 1 run tellraw @a[tag=playing,tag=!this,tag=!solo] {"nbt":"colors.base","storage":"minecraft:config","interpret":true,"extra":[{"translate":"deathMessages.HideNPeek1","with":[{"selector":"@s","color":"white","type":"selector"},{"selector":"@a[tag=solo]","color":"white","type":"selector"}]}],"source":"storage","type":"nbt"}
execute if score random= 12scores matches 2 run tellraw @a[tag=playing,tag=!this] {"nbt":"colors.base","storage":"minecraft:config","interpret":true,"extra":[{"translate":"deathMessages.HideNPeek2","with":[{"selector":"@s","color":"white","type":"selector"}]}],"source":"storage","type":"nbt"}
execute if score random= 12scores matches 3 run tellraw @a[tag=playing,tag=!this,tag=!solo] {"nbt":"colors.base","storage":"minecraft:config","interpret":true,"extra":[{"translate":"deathMessages.HideNPeek3","with":[{"selector":"@s","color":"white","type":"selector"},{"selector":"@a[tag=solo]","color":"white","type":"selector"}]}],"source":"storage","type":"nbt"}
execute if score random= 12scores matches 4 run tellraw @a[tag=playing,tag=!this,tag=!solo] {"nbt":"colors.base","storage":"minecraft:config","interpret":true,"extra":[{"translate":"deathMessages.HideNPeek4","with":[{"selector":"@s","color":"white","type":"selector"},{"selector":"@a[tag=solo]","color":"white","type":"selector"}]}],"source":"storage","type":"nbt"}
execute if score random= 12scores matches 5 run tellraw @a[tag=playing,tag=!this] {"nbt":"colors.base","storage":"minecraft:config","interpret":true,"extra":[{"translate":"deathMessages.HideNPeek5","with":[{"selector":"@s","color":"white","type":"selector"}]}],"source":"storage","type":"nbt"}

execute if score random= 12scores matches 1 run tellraw @s {"nbt":"colors.base","storage":"minecraft:config","interpret":true,"extra":[{"translate":"deathMessages.HideNPeek1","with":[{"selector":"@s","color":"white","bold":true,"type":"selector"},{"selector":"@a[tag=solo]","color":"white","bold":false,"type":"selector"}],"bold":false}],"source":"storage","type":"nbt"}
execute if score random= 12scores matches 2 run tellraw @s {"nbt":"colors.base","storage":"minecraft:config","interpret":true,"extra":[{"translate":"deathMessages.HideNPeek2","with":[{"selector":"@s","color":"white","bold":true,"type":"selector"}],"bold":false}],"source":"storage","type":"nbt"}
execute if score random= 12scores matches 3 run tellraw @s {"nbt":"colors.base","storage":"minecraft:config","interpret":true,"extra":[{"translate":"deathMessages.HideNPeek3","with":[{"selector":"@s","color":"white","bold":true,"type":"selector"},{"selector":"@a[tag=solo]","color":"white","bold":false,"type":"selector"}],"bold":false}],"source":"storage","type":"nbt"}
execute if score random= 12scores matches 4 run tellraw @s {"nbt":"colors.base","storage":"minecraft:config","interpret":true,"extra":[{"translate":"deathMessages.HideNPeek4","with":[{"selector":"@s","color":"white","bold":true,"type":"selector"},{"selector":"@a[tag=solo]","color":"white","bold":false,"type":"selector"}],"bold":false}],"source":"storage","type":"nbt"}
execute if score random= 12scores matches 5 run tellraw @s {"nbt":"colors.base","storage":"minecraft:config","interpret":true,"extra":[{"translate":"deathMessages.HideNPeek5","with":[{"selector":"@s","color":"white","bold":true,"type":"selector"}],"bold":false}],"source":"storage","type":"nbt"}

execute if score random= 12scores matches 1 run tellraw @a[tag=solo] {"nbt":"colors.base","storage":"minecraft:config","interpret":true,"extra":[{"translate":"deathMessages.HideNPeek1","with":[{"selector":"@s","color":"white","bold":false,"type":"selector"},{"selector":"@a[tag=solo]","color":"white","bold":true,"type":"selector"}],"bold":false}],"source":"storage","type":"nbt"}
execute if score random= 12scores matches 3 run tellraw @a[tag=solo] {"nbt":"colors.base","storage":"minecraft:config","interpret":true,"extra":[{"translate":"deathMessages.HideNPeek3","with":[{"selector":"@s","color":"white","bold":false,"type":"selector"},{"selector":"@a[tag=solo]","color":"white","bold":true,"type":"selector"}],"bold":false}],"source":"storage","type":"nbt"}
execute if score random= 12scores matches 4 run tellraw @a[tag=solo] {"nbt":"colors.base","storage":"minecraft:config","interpret":true,"extra":[{"translate":"deathMessages.HideNPeek4","with":[{"selector":"@s","color":"white","bold":false,"type":"selector"},{"selector":"@a[tag=solo]","color":"white","bold":true,"type":"selector"}],"bold":false}],"source":"storage","type":"nbt"}

tag @s remove this
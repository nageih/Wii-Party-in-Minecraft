#   Author        =   @ JevinLevin
#   Description   =   Ran when a zombie attacks a player, turns them into a zombie
#   Called By     =   (Advancement) games:2/zombie_hit 


# Randomiser, used to generate a random minigame themed death message
    # Stores the result of a loot table in the random= score which chooses the death message
execute store result score random= 2scores run loot spawn ~ -70 ~ loot games:2death_messages
    # If the random= score is a specific number, it chooses a specific death message
tag @s add this
execute if score random= 2scores matches 1 run tellraw @a[tag=playing,tag=!this] {"nbt":"colors.base","storage":"minecraft:config","interpret":true,"extra":[{"translate":"deathMessages.ZombieTag1","with":[{"selector":"@s","type":"selector"}],"bold":false}],"source":"storage","type":"nbt"}
execute if score random= 2scores matches 2 run tellraw @a[tag=playing,tag=!this] {"nbt":"colors.base","storage":"minecraft:config","interpret":true,"extra":[{"translate":"deathMessages.ZombieTag2","with":[{"selector":"@s","type":"selector"}],"bold":false}],"source":"storage","type":"nbt"}
execute if score random= 2scores matches 3 run tellraw @a[tag=playing,tag=!this] {"nbt":"colors.base","storage":"minecraft:config","interpret":true,"extra":[{"translate":"deathMessages.ZombieTag3","with":[{"selector":"@s","type":"selector"}],"bold":false}],"source":"storage","type":"nbt"}
execute if score random= 2scores matches 4 run tellraw @a[tag=playing,tag=!this] {"nbt":"colors.base","storage":"minecraft:config","interpret":true,"extra":[{"translate":"deathMessages.ZombieTag4","with":[{"selector":"@s","type":"selector"}],"bold":false}],"source":"storage","type":"nbt"}
execute if score random= 2scores matches 5 run tellraw @a[tag=playing,tag=!this] {"nbt":"colors.base","storage":"minecraft:config","interpret":true,"extra":[{"translate":"deathMessages.ZombieTag5","with":[{"selector":"@s","type":"selector"}],"bold":false}],"source":"storage","type":"nbt"}
execute if score random= 2scores matches 6 run tellraw @a[tag=playing,tag=!this] {"nbt":"colors.base","storage":"minecraft:config","interpret":true,"extra":[{"translate":"deathMessages.ZombieTag6","with":[{"selector":"@s","type":"selector"}],"bold":false}],"source":"storage","type":"nbt"}
execute if score random= 2scores matches 7 run tellraw @a[tag=playing,tag=!this] {"nbt":"colors.base","storage":"minecraft:config","interpret":true,"extra":[{"translate":"deathMessages.ZombieTag7","with":[{"selector":"@s","type":"selector"}],"bold":false}],"source":"storage","type":"nbt"}
execute if score random= 2scores matches 8 run tellraw @a[tag=playing,tag=!this] {"nbt":"colors.base","storage":"minecraft:config","interpret":true,"extra":[{"translate":"deathMessages.ZombieTag8","with":[{"selector":"@s","type":"selector"}],"bold":false}],"source":"storage","type":"nbt"}

execute if score random= 2scores matches 1 run tellraw @s {"nbt":"colors.base","storage":"minecraft:config","interpret":true,"extra":[{"translate":"deathMessages.ZombieTag1","with":[{"selector":"@s","bold":true,"type":"selector"}],"bold":false}],"source":"storage","type":"nbt"}
execute if score random= 2scores matches 2 run tellraw @s {"nbt":"colors.base","storage":"minecraft:config","interpret":true,"extra":[{"translate":"deathMessages.ZombieTag2","with":[{"selector":"@s","bold":true,"type":"selector"}],"bold":false}],"source":"storage","type":"nbt"}
execute if score random= 2scores matches 3 run tellraw @s {"nbt":"colors.base","storage":"minecraft:config","interpret":true,"extra":[{"translate":"deathMessages.ZombieTag3","with":[{"selector":"@s","bold":true,"type":"selector"}],"bold":false}],"source":"storage","type":"nbt"}
execute if score random= 2scores matches 4 run tellraw @s {"nbt":"colors.base","storage":"minecraft:config","interpret":true,"extra":[{"translate":"deathMessages.ZombieTag4","with":[{"selector":"@s","bold":true,"type":"selector"}],"bold":false}],"source":"storage","type":"nbt"}
execute if score random= 2scores matches 5 run tellraw @s {"nbt":"colors.base","storage":"minecraft:config","interpret":true,"extra":[{"translate":"deathMessages.ZombieTag5","with":[{"selector":"@s","bold":true,"type":"selector"}],"bold":false}],"source":"storage","type":"nbt"}
execute if score random= 2scores matches 6 run tellraw @s {"nbt":"colors.base","storage":"minecraft:config","interpret":true,"extra":[{"translate":"deathMessages.ZombieTag6","with":[{"selector":"@s","bold":true,"type":"selector"}],"bold":false}],"source":"storage","type":"nbt"}
execute if score random= 2scores matches 7 run tellraw @s {"nbt":"colors.base","storage":"minecraft:config","interpret":true,"extra":[{"translate":"deathMessages.ZombieTag7","with":[{"selector":"@s","bold":true,"type":"selector"}],"bold":false}],"source":"storage","type":"nbt"}
execute if score random= 2scores matches 8 run tellraw @s {"nbt":"colors.base","storage":"minecraft:config","interpret":true,"extra":[{"translate":"deathMessages.ZombieTag8","with":[{"selector":"@s","bold":true,"type":"selector"}],"bold":false}],"source":"storage","type":"nbt"}

tag @s remove this

# Gives player the dead tag to show they are now a zombie
tag @s add dead

# Player joins the 1zombie, this is used so that the zombies will stop attacking other zombies 
team join 1zombie @s

# Blank title so that the subtitle displays
title @s title ""
# Infected translate
title @s[tag=blue] subtitle {"translate":"game.ZombieTag.Infected","bold":true,"color":"#0088ff"}
title @s[tag=red] subtitle {"translate":"game.ZombieTag.Infected","bold":true,"color":"red"}
title @s[tag=green] subtitle {"translate":"game.ZombieTag.Infected","bold":true,"color":"green"}
title @s[tag=orange] subtitle {"translate":"game.ZombieTag.Infected","bold":true,"color":"gold"}

# Crash sound
execute at @s run playsound minecraft:entity.zombie_villager.cure master @a ~ ~ ~ 0.5

# Poof particles
execute at @s run particle minecraft:poof ~ ~ ~ 0.75 0.75 0.75 0.0001 100 force

# Replaces all the armor on the player to make them look like a zombie
    # Puts a Zombie Head on the head
item replace entity @s armor.head with minecraft:zombie_head[minecraft:custom_name='{"translate":"game.ZombieTag.NameHead","bold":true,"italic":false,"color":"red"}',minecraft:lore=['{"translate":"game.ZombieTag.LoreHead","italic":false,"color":"red"}']] 1
    # Puts a Blue t-shirt on the chest
item replace entity @s armor.chest with minecraft:leather_chestplate[minecraft:custom_name='{"translate":"game.ZombieTag.NameChest","bold":true,"italic":false,"color":"red"}',minecraft:lore=['{"translate":"game.ZombieTag.LoreChest","italic":false,"color":"red"}'],minecraft:dyed_color={rgb:63487},minecraft:unbreakable={show_in_tooltip:0b},minecraft:hide_additional_tooltip={}]
    # Puts purple leggings on the legs
item replace entity @s armor.legs with minecraft:leather_leggings[minecraft:custom_name='{"translate":"game.ZombieTag.NameLegs","bold":true,"italic":false,"color":"red"}',minecraft:lore=['{"translate":"game.ZombieTag.LoreLegs","italic":false,"color":"red"}'],minecraft:dyed_color={rgb:5909746},minecraft:unbreakable={show_in_tooltip:0b},minecraft:hide_additional_tooltip={}]
    # Puts light gray shoes on the players feet
item replace entity @s armor.feet with minecraft:leather_boots[minecraft:custom_name='{"translate":"game.ZombieTag.NameFeet","bold":true,"italic":false,"color":"red"}',minecraft:lore=['{"translate":"game.ZombieTag.LoreFeet","italic":false,"color":"red"}'],minecraft:dyed_color={rgb:11579568},minecraft:unbreakable={show_in_tooltip:0b},minecraft:hide_additional_tooltip={}]

# Stores the numbers of players who arent zombies in the alive= score
execute store result score alive= 2scores if entity @a[tag=ingame,tag=!dead]

# Gives the player their position tag depending on how many players are left
# 0 Other player
execute if score alive= 2scores matches 0 run tag @s add 1st
# 1 Other player
execute if score alive= 2scores matches 1 run tag @s add 2nd
# 2 Other players
execute if score alive= 2scores matches 2 run tag @s add 3rd
# 3 Other players
execute if score alive= 2scores matches 3 run tag @s add 4th

# Revokes the advancement from the player so they can get infected again
advancement revoke @s only games:2/zombie_hit

# Teleports the player to themself to remove all motion and stop them sprinting
tp @s @s

# Updates the scoreboard to show whos alive
function games:2/display

# Advancement
execute if score start= 2scores matches ..150 run advancement grant @s only advancements:zombie_tag/hugz


# Give mining fatige to stop hitting
effect give @s haste infinite 255 true
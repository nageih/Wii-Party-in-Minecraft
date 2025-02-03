# Gives the player the dead tag so that they can't still trigger certain actions like hitting clouds
tag @s add dead

# Puts the player in spectator so they can fly around and stuff
gamemode spectator @s

# Plays the wither spawn sound for the player to show they died
playsound minecraft:entity.wither.spawn master @s ~ ~ ~ 0.3

tag @s add this
# Randomiser, used to generate a random minigame themed death message
    # Stores the result of a loot table in the random= score which chooses the death message
execute store result score random= 1scores run loot spawn ~ -70 ~ loot games:1death_messages
    # If the random= score is a specific number, it chooses a specific death message
execute if score random= 1scores matches 1 run tellraw @a[tag=playing,tag=!this] {"color":"gray","translate":"deathMessages.DiceyDescent1","with":[{"selector":"@s","type":"selector"}],"bold":false}
execute if score random= 1scores matches 2 run tellraw @a[tag=playing,tag=!this] {"color":"gray","translate":"deathMessages.DiceyDescent2","with":[{"selector":"@s","type":"selector"}],"bold":false}
execute if score random= 1scores matches 3 run tellraw @a[tag=playing,tag=!this] {"color":"gray","translate":"deathMessages.DiceyDescent3","with":[{"selector":"@s","type":"selector"}],"bold":false}
execute if score random= 1scores matches 4 run tellraw @a[tag=playing,tag=!this] {"color":"gray","translate":"deathMessages.DiceyDescent4","with":[{"selector":"@s","type":"selector"}],"bold":false}
execute if score random= 1scores matches 5 run tellraw @a[tag=playing,tag=!this] {"color":"gray","translate":"deathMessages.DiceyDescent5","with":[{"selector":"@s","type":"selector"}],"bold":false}
execute if score random= 1scores matches 6 run tellraw @a[tag=playing,tag=!this] {"color":"gray","translate":"deathMessages.DiceyDescent6","with":[{"selector":"@s","type":"selector"}],"bold":false}
execute if score random= 1scores matches 7 run tellraw @a[tag=playing,tag=!this] {"color":"gray","translate":"deathMessages.DiceyDescent7","with":[{"selector":"@s","type":"selector"}],"bold":false}
execute if score random= 1scores matches 8 run tellraw @a[tag=playing,tag=!this] {"color":"gray","translate":"deathMessages.DiceyDescent8","with":[{"selector":"@s","type":"selector"}],"bold":false}

execute if score random= 1scores matches 1 run tellraw @s {"color":"gray","translate":"deathMessages.DiceyDescent1","with":[{"selector":"@s","bold":true,"type":"selector"}],"bold":false}
execute if score random= 1scores matches 2 run tellraw @s {"color":"gray","translate":"deathMessages.DiceyDescent2","with":[{"selector":"@s","bold":true,"type":"selector"}],"bold":false}
execute if score random= 1scores matches 3 run tellraw @s {"color":"gray","translate":"deathMessages.DiceyDescent3","with":[{"selector":"@s","bold":true,"type":"selector"}],"bold":false}
execute if score random= 1scores matches 4 run tellraw @s {"color":"gray","translate":"deathMessages.DiceyDescent4","with":[{"selector":"@s","bold":true,"type":"selector"}],"bold":false}
execute if score random= 1scores matches 5 run tellraw @s {"color":"gray","translate":"deathMessages.DiceyDescent5","with":[{"selector":"@s","bold":true,"type":"selector"}],"bold":false}
execute if score random= 1scores matches 6 run tellraw @s {"color":"gray","translate":"deathMessages.DiceyDescent6","with":[{"selector":"@s","bold":true,"type":"selector"}],"bold":false}
execute if score random= 1scores matches 7 run tellraw @s {"color":"gray","translate":"deathMessages.DiceyDescent7","with":[{"selector":"@s","bold":true,"type":"selector"}],"bold":false}
execute if score random= 1scores matches 8 run tellraw @s {"color":"gray","translate":"deathMessages.DiceyDescent8","with":[{"selector":"@s","bold":true,"type":"selector"}],"bold":false}

tag @s remove this

scoreboard players remove @s 1score 1
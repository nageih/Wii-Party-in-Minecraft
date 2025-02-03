#   Author        =   @ JevinLevin
#   Description   =   Gives players their position tag depending on how far their barrels fell
#   Called By     =   games:3/endgame

tag @a remove scored

# Resets the max= score to 0 to be compared
scoreboard players set max= 3time -1

# Sets the max= score to the highest value of a players score
scoreboard players operation max= 3time > @a[tag=ingame,tag=!failed] 3time

# Checks if any player has the same score as the max= score, if so it means they have the highest score and gives them the 1st and scored tag
execute as @a[tag=ingame] if score @s 3time = max= 3time run tag @s add 1st
execute as @a[tag=ingame] if score @s 3time = max= 3time run tag @s add scored



# Resets the max= score to 0 to be compared again
scoreboard players set max= 3time -1

# Stores the value of the number of players who have been given a placement tag, used to determine what to give if multiple people have the same tag
execute store result score scored= 3time if entity @a[tag=ingame,tag=scored]

# Sets the max= score to the highest value of a player who havent yet been taged yets score
scoreboard players operation max= 3time > @a[tag=ingame,tag=!failed,tag=!scored] 3time

# Checks if any player has the same score as the max= score, if so it means they have the highest score and gives them a tag depending on how many people have already been tagged + the scored tag
execute if score scored= 3time matches 1 as @a[tag=ingame] if score @s 3time = max= 3time run tag @s add 2nd
execute if score scored= 3time matches 2 as @a[tag=ingame] if score @s 3time = max= 3time run tag @s add 3rd
execute if score scored= 3time matches 3 as @a[tag=ingame] if score @s 3time = max= 3time run tag @s add 4th
execute if score scored= 3time matches 1 as @a[tag=ingame] if score @s 3time = max= 3time run tag @s add scored
execute if score scored= 3time matches 2 as @a[tag=ingame] if score @s 3time = max= 3time run tag @s add scored
execute if score scored= 3time matches 3 as @a[tag=ingame] if score @s 3time = max= 3time run tag @s add scored


# Resets the max= score to 0 to be compared again
scoreboard players set max= 3time -1

# Stores the value of the number of players who have been given a placement tag, used to determine what to give if multiple people have the same tag
execute store result score scored= 3time if entity @a[tag=ingame,tag=scored]

# Sets the max= score to the highest value of a player who havent yet been taged yets score
scoreboard players operation max= 3time > @a[tag=ingame,tag=!failed,tag=!scored] 3time

# Checks if any player has the same score as the max= score, if so it means they have the highest score and gives them a tag depending on how many people have already been tagged + the scored tag
execute if score scored= 3time matches 2 as @a[tag=ingame] if score @s 3time = max= 3time run tag @s add 3rd
execute if score scored= 3time matches 3 as @a[tag=ingame] if score @s 3time = max= 3time run tag @s add 4th
execute if score scored= 3time matches 2 as @a[tag=ingame] if score @s 3time = max= 3time run tag @s add scored
execute if score scored= 3time matches 3 as @a[tag=ingame] if score @s 3time = max= 3time run tag @s add scored



# Resets the max= score to 0 to be compared again
scoreboard players set max= 3time -1

# Stores the value of the number of players who have been given a placement tag, used to determine what to give if multiple people have the same tag
execute store result score scored= 3time if entity @a[tag=ingame,tag=scored]

# Sets the max= score to the highest value of a player who havent yet been taged yets score
scoreboard players operation max= 3time > @a[tag=ingame,tag=!failed,tag=!scored] 3time

# Checks if any player has the same score as the max= score, if so it means they have the highest score and gives them a tag depending on how many people have already been tagged + the scored tag
execute if score scored= 3time matches 3 as @a[tag=ingame] if score @s 3time = max= 3time run tag @s add 4th
execute if score scored= 3time matches 3 as @a[tag=ingame] if score @s 3time = max= 3time run tag @s add scored

# Removes the scored tag from all players since it isn't needed anymore
tag @a remove scored


# Stores the number of players who failed in the failed= score
execute store result score failed= 3scores if entity @a[tag=ingame,tag=failed]
# Stores the total number of players in the players= score
execute store result score players= 3scores if entity @a[tag=ingame]

# Gives all players who fail the correct placement tags
    # 4 Players
execute if score players= 3scores matches 4 if score failed= 3scores matches 4 run tag @a[tag=ingame,tag=failed] add 1st
execute if score players= 3scores matches 4 if score failed= 3scores matches 3 run tag @a[tag=ingame,tag=failed] add 2nd
execute if score players= 3scores matches 4 if score failed= 3scores matches 2 run tag @a[tag=ingame,tag=failed] add 3rd
execute if score players= 3scores matches 4 if score failed= 3scores matches 1 run tag @a[tag=ingame,tag=failed] add 4th
    # 3 Players
execute if score players= 3scores matches 3 if score failed= 3scores matches 3 run tag @a[tag=ingame,tag=failed] add 1st
execute if score players= 3scores matches 3 if score failed= 3scores matches 2 run tag @a[tag=ingame,tag=failed] add 2nd
execute if score players= 3scores matches 3 if score failed= 3scores matches 1 run tag @a[tag=ingame,tag=failed] add 3rd
    # 2 Players
execute if score players= 3scores matches 2 if score failed= 3scores matches 2 run tag @a[tag=ingame,tag=failed] add 1st
execute if score players= 3scores matches 2 if score failed= 3scores matches 1 run tag @a[tag=ingame,tag=failed] add 2nd
    # 1 Player
execute if score players= 3scores matches 1 if score failed= 3scores matches 1 run tag @a[tag=ingame,tag=failed] add 1st
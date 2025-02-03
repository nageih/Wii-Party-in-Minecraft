tag @a remove scored

# Resets the max= score to 0 to be compared
scoreboard players set max= 22goals -1

# Sets the max= score to the highest value of a players goals
scoreboard players operation max= 22goals > @a[tag=ingame] 22goals

# Checks if any player has the same score as the max= score, if so it means they have the highest score and gives them the 1st and scored tag
execute as @a[tag=ingame] if score @s 22goals = max= 22goals run tag @s add 1st
execute as @a[tag=ingame] if score @s 22goals = max= 22goals run tag @s add scored



# Resets the max= score to 0 to be compared again
scoreboard players set max= 22goals -1

# Stores the value of the number of players who have been given a placement tag, used to determine what to give if multiple people have the same tag
execute store result score scored= 22goals if entity @a[tag=ingame,tag=scored]

# Sets the max= score to the highest value of a player who havent yet been taged yets goals
scoreboard players operation max= 22goals > @a[tag=ingame,tag=!scored] 22goals

# Checks if any player has the same score as the max= score, if so it means they have the highest score and gives them a tag depending on how many people have already been tagged + the scored tag
execute if score scored= 22goals matches 1 as @a[tag=ingame] if score @s 22goals = max= 22goals run tag @s add 2nd
execute if score scored= 22goals matches 2 as @a[tag=ingame] if score @s 22goals = max= 22goals run tag @s add 3rd
execute if score scored= 22goals matches 3 as @a[tag=ingame] if score @s 22goals = max= 22goals run tag @s add 4th
execute if score scored= 22goals matches 1 as @a[tag=ingame] if score @s 22goals = max= 22goals run tag @s add scored
execute if score scored= 22goals matches 2 as @a[tag=ingame] if score @s 22goals = max= 22goals run tag @s add scored
execute if score scored= 22goals matches 3 as @a[tag=ingame] if score @s 22goals = max= 22goals run tag @s add scored


# Resets the max= score to 0 to be compared again
scoreboard players set max= 22goals -1

# Stores the value of the number of players who have been given a placement tag, used to determine what to give if multiple people have the same tag
execute store result score scored= 22goals if entity @a[tag=ingame,tag=scored]

# Sets the max= score to the highest value of a player who havent yet been taged yets goals
scoreboard players operation max= 22goals > @a[tag=ingame,tag=!scored] 22goals

# Checks if any player has the same score as the max= score, if so it means they have the highest score and gives them a tag depending on how many people have already been tagged + the scored tag
execute if score scored= 22goals matches 2 as @a[tag=ingame] if score @s 22goals = max= 22goals run tag @s add 3rd
execute if score scored= 22goals matches 3 as @a[tag=ingame] if score @s 22goals = max= 22goals run tag @s add 4th
execute if score scored= 22goals matches 2 as @a[tag=ingame] if score @s 22goals = max= 22goals run tag @s add scored
execute if score scored= 22goals matches 3 as @a[tag=ingame] if score @s 22goals = max= 22goals run tag @s add scored



# Resets the max= score to 0 to be compared again
scoreboard players set max= 22goals -1

# Stores the value of the number of players who have been given a placement tag, used to determine what to give if multiple people have the same tag
execute store result score scored= 22goals if entity @a[tag=ingame,tag=scored]

# Sets the max= score to the highest value of a player who havent yet been taged yets goals
scoreboard players operation max= 22goals > @a[tag=ingame,tag=!scored] 22goals

# Checks if any player has the same score as the max= score, if so it means they have the highest score and gives them a tag depending on how many people have already been tagged + the scored tag
execute if score scored= 22goals matches 3 as @a[tag=ingame] if score @s 22goals = max= 22goals run tag @s add 4th
execute if score scored= 22goals matches 3 as @a[tag=ingame] if score @s 22goals = max= 22goals run tag @s add scored

# Removes the scored tag from all players since it isn't needed anymore
tag @a remove scored
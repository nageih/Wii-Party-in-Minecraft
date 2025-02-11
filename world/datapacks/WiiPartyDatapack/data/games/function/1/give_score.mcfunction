tag @a remove scored

# Resets the max= score to 0 to be compared
scoreboard players set max= 1score -1

execute store result score scored= 1score if entity @a[tag=ingame,tag=scored]

# Sets the max= score to the highest value of a players goals
scoreboard players operation max= 1score > @a[tag=ingame,tag=!scored] 1score

# Checks if any player has the same score as the max= score, if so it means they have the highest score and gives them the 1st and scored tag
execute if score scored= 1score matches 0 as @a[tag=ingame] if score @s 1score = max= 1score run tag @s add 1st
execute if score scored= 1score matches 1 as @a[tag=ingame] if score @s 1score = max= 1score run tag @s add 2nd
execute if score scored= 1score matches 2 as @a[tag=ingame] if score @s 1score = max= 1score run tag @s add 3rd
execute if score scored= 1score matches 3 as @a[tag=ingame] if score @s 1score = max= 1score run tag @s add 4th
execute if score scored= 1score matches 0 as @a[tag=ingame] if score @s 1score = max= 1score run tag @s add scored
execute if score scored= 1score matches 1 as @a[tag=ingame] if score @s 1score = max= 1score run tag @s add scored
execute if score scored= 1score matches 2 as @a[tag=ingame] if score @s 1score = max= 1score run tag @s add scored
execute if score scored= 1score matches 3 as @a[tag=ingame] if score @s 1score = max= 1score run tag @s add scored



# Resets the max= score to 0 to be compared again
scoreboard players set max= 1score -1

# Stores the value of the number of players who have been given a placement tag, used to determine what to give if multiple people have the same tag
execute store result score scored= 1score if entity @a[tag=ingame,tag=scored]

# Sets the max= score to the highest value of a player who havent yet been taged yets goals
scoreboard players operation max= 1score > @a[tag=ingame,tag=!scored] 1score

# Checks if any player has the same score as the max= score, if so it means they have the highest score and gives them a tag depending on how many people have already been tagged + the scored tag
execute if score scored= 1score matches 1 as @a[tag=ingame] if score @s 1score = max= 1score run tag @s add 2nd
execute if score scored= 1score matches 2 as @a[tag=ingame] if score @s 1score = max= 1score run tag @s add 3rd
execute if score scored= 1score matches 3 as @a[tag=ingame] if score @s 1score = max= 1score run tag @s add 4th
execute if score scored= 1score matches 1 as @a[tag=ingame] if score @s 1score = max= 1score run tag @s add scored
execute if score scored= 1score matches 2 as @a[tag=ingame] if score @s 1score = max= 1score run tag @s add scored
execute if score scored= 1score matches 3 as @a[tag=ingame] if score @s 1score = max= 1score run tag @s add scored


# Resets the max= score to 0 to be compared again
scoreboard players set max= 1score -1

# Stores the value of the number of players who have been given a placement tag, used to determine what to give if multiple people have the same tag
execute store result score scored= 1score if entity @a[tag=ingame,tag=scored]

# Sets the max= score to the highest value of a player who havent yet been taged yets goals
scoreboard players operation max= 1score > @a[tag=ingame,tag=!scored] 1score

# Checks if any player has the same score as the max= score, if so it means they have the highest score and gives them a tag depending on how many people have already been tagged + the scored tag
execute if score scored= 1score matches 2 as @a[tag=ingame] if score @s 1score = max= 1score run tag @s add 3rd
execute if score scored= 1score matches 3 as @a[tag=ingame] if score @s 1score = max= 1score run tag @s add 4th
execute if score scored= 1score matches 2 as @a[tag=ingame] if score @s 1score = max= 1score run tag @s add scored
execute if score scored= 1score matches 3 as @a[tag=ingame] if score @s 1score = max= 1score run tag @s add scored



# Resets the max= score to 0 to be compared again
scoreboard players set max= 1score -1

# Stores the value of the number of players who have been given a placement tag, used to determine what to give if multiple people have the same tag
execute store result score scored= 1score if entity @a[tag=ingame,tag=scored]

# Sets the max= score to the highest value of a player who havent yet been taged yets goals
scoreboard players operation max= 1score > @a[tag=ingame,tag=!scored] 1score

# Checks if any player has the same score as the max= score, if so it means they have the highest score and gives them a tag depending on how many people have already been tagged + the scored tag
execute if score scored= 1score matches 3 as @a[tag=ingame] if score @s 1score = max= 1score run tag @s add 4th
execute if score scored= 1score matches 3 as @a[tag=ingame] if score @s 1score = max= 1score run tag @s add scored

# Removes the scored tag from all players since it isn't needed anymore
tag @a remove scored
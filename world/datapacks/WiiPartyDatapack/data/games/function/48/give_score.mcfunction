#   Author        =   @ JevinLevin
#   Description   =   Gives the players their placement tags (1st, 2nd, 3rd, 4th)
#   Called By     =   games:48/finish

tag @a remove scored

# Convert everyones score
scoreboard players operation @a[tag=ingame] 48score -= target= 48scores

# Resets the max= score to -1 to be compared
scoreboard players set max= 48score 10000000

# Sets the max= score to the lowest value of a players score
scoreboard players operation max= 48score < @a[tag=ingame] 48score

# Checks if any player has the same score as the max= score, if so it means they have the highest score and gives them the 1st and scored tag
execute as @a[tag=ingame] if score @s 48score = max= 48score run tag @s add 1st
execute as @a[tag=ingame] if score @s 48score = max= 48score run tag @s add scored

# Stores the number of players who have been given a score into the scored= score
execute store result score scored= 48score if entity @a[tag=ingame,tag=scored]

# Resets the max= score to -1 to be compared
scoreboard players set max= 48score 10000000

# Sets the max= score to the lowest value of a players score
scoreboard players operation max= 48score < @a[tag=ingame,tag=!scored] 48score

# Checks if any player has the same score as the max= score. Also checks how many players havent been scored yet, and gives the appropiate tag
execute if score scored= 48score matches 1 as @a[tag=ingame] if score @s 48score = max= 48score run tag @s add 2nd
execute if score scored= 48score matches 1 as @a[tag=ingame] if score @s 48score = max= 48score run tag @s add scored
execute if score scored= 48score matches 2 as @a[tag=ingame] if score @s 48score = max= 48score run tag @s add 3rd
execute if score scored= 48score matches 2 as @a[tag=ingame] if score @s 48score = max= 48score run tag @s add scored
execute if score scored= 48score matches 3 as @a[tag=ingame] if score @s 48score = max= 48score run tag @s add 4th
execute if score scored= 48score matches 3 as @a[tag=ingame] if score @s 48score = max= 48score run tag @s add scored

# Stores the number of players who have been given a score into the scored= score
execute store result score scored= 48score if entity @a[tag=ingame,tag=scored]

# Resets the max= score to -1 to be compared
scoreboard players set max= 48score 10000000

# Sets the max= score to the lowest value of a players score
scoreboard players operation max= 48score < @a[tag=ingame,tag=!scored] 48score

# Checks if any player has the same score as the max= score. Also checks how many players havent been scored yet, and gives the appropiate tag
execute if score scored= 48score matches 2 as @a[tag=ingame] if score @s 48score = max= 48score run tag @s add 3rd
execute if score scored= 48score matches 2 as @a[tag=ingame] if score @s 48score = max= 48score run tag @s add scored
execute if score scored= 48score matches 3 as @a[tag=ingame] if score @s 48score = max= 48score run tag @s add 4th
execute if score scored= 48score matches 3 as @a[tag=ingame] if score @s 48score = max= 48score run tag @s add scored

# Stores the number of players who have been given a score into the scored= score
execute store result score scored= 48score if entity @a[tag=ingame,tag=scored]

# If all players except one have been scored, then the final player is 4th
execute if score scored= 48score matches 3 run tag @a[tag=ingame,tag=!scored] add 4th
execute if score scored= 48score matches 3 run tag @a[tag=ingame,tag=!scored] add scored

# Resets the scored tags
tag @a[tag=ingame] remove scored

execute as @a[tag=1st,team=blue] run tag @e[type=armor_stand,tag=48player,team=blue] add 1st
execute as @a[tag=1st,team=red] run tag @e[type=armor_stand,tag=48player,team=red] add 1st
execute as @a[tag=1st,team=green] run tag @e[type=armor_stand,tag=48player,team=green] add 1st
execute as @a[tag=1st,team=orange] run tag @e[type=armor_stand,tag=48player,team=orange] add 1st

execute at @e[type=armor_stand,tag=48player,tag=1st] run particle minecraft:firework ~ ~1 ~ 0.5 0.5 0.5 0.1 30 force
execute at @e[type=armor_stand,tag=48player,tag=1st,limit=1] run playsound entity.firework_rocket.blast master @a ~ ~ ~ 1 1
execute at @e[type=armor_stand,tag=48player,tag=1st,limit=1] run playsound minecraft:ui.toast.challenge_complete master @a ~ ~ ~ 1 2

# Gives d<number> tag based on the rolled value

scoreboard players set highest= draw 0
scoreboard players operation highest= draw > @a[tag=drawRoll] draw
execute as @a[tag=drawRoll] if score @s draw = highest= draw run tag @s add d1
execute as @a[tag=drawRoll] if score @s draw = highest= draw run tag @s add drawFound
execute store result score found= draw if entity @a[tag=drawFound]

execute if score found= draw matches 1 run scoreboard players set highest= draw 0
execute if score found= draw matches 1 run scoreboard players operation highest= draw > @a[tag=drawRoll,tag=!drawFound] draw
execute if score found= draw matches 1 run execute as @a[tag=drawRoll] if score @s draw = highest= draw run tag @s add d2
execute if score found= draw matches 1 run execute as @a[tag=drawRoll] if score @s draw = highest= draw run tag @s add drawFound
execute if score found= draw matches 1 run execute store result score found= draw if entity @a[tag=drawFound]

execute if score found= draw matches 2 if score count= draw matches 3.. run scoreboard players set highest= draw 0
execute if score found= draw matches 2 if score count= draw matches 3.. run scoreboard players operation highest= draw > @a[tag=drawRoll,tag=!drawFound] draw
execute if score found= draw matches 2 if score count= draw matches 3.. run execute as @a[tag=drawRoll] if score @s draw = highest= draw run tag @s add d3
execute if score found= draw matches 2 if score count= draw matches 3.. run execute as @a[tag=drawRoll] if score @s draw = highest= draw run tag @s add drawFound
execute if score found= draw matches 2 if score count= draw matches 3.. run execute store result score found= draw if entity @a[tag=drawFound]

execute if score found= draw matches 3 if score count= draw matches 4 run scoreboard players set highest= draw 0
execute if score found= draw matches 3 if score count= draw matches 4 run scoreboard players operation highest= draw > @a[tag=drawRoll,tag=!drawFound] draw
execute if score found= draw matches 3 if score count= draw matches 4 run execute as @a[tag=drawRoll] if score @s draw = highest= draw run tag @s add d4
execute if score found= draw matches 3 if score count= draw matches 4 run execute as @a[tag=drawRoll] if score @s draw = highest= draw run tag @s add drawFound
execute if score found= draw matches 3 if score count= draw matches 4 run execute store result score found= draw if entity @a[tag=drawFound]



execute store result score d1= draw if entity @a[tag=d1]
execute store result score d2= draw if entity @a[tag=d2]
execute store result score d3= draw if entity @a[tag=d3]
execute store result score d4= draw if entity @a[tag=d4]

execute if entity @a[tag=d1,tag=1st] run tag @a[tag=d2] remove 1st
execute if entity @a[tag=d1,tag=1st] run tag @a[tag=d2] add 2nd
execute if entity @a[tag=d1,tag=1st] run tag @a[tag=d3] remove 1st
execute if entity @a[tag=d1,tag=1st] run tag @a[tag=d3] add 3rd
execute if entity @a[tag=d1,tag=1st] run tag @a[tag=d4] remove 1st
execute if entity @a[tag=d1,tag=1st] run tag @a[tag=d4] add 4th

execute if entity @a[tag=d1,tag=2nd] run tag @a[tag=d2] remove 2nd
execute if entity @a[tag=d1,tag=2nd] run tag @a[tag=d2] add 3rd
execute if entity @a[tag=d1,tag=2nd] run tag @a[tag=d3] remove 2nd
execute if entity @a[tag=d1,tag=2nd] run tag @a[tag=d3] add 4th

execute if entity @a[tag=d1,tag=3rd] run tag @a[tag=d2] remove 3rd
execute if entity @a[tag=d1,tag=3rd] run tag @a[tag=d2] add 4th

execute if entity @a[tag=d1,tag=4th] run tag @a[tag=d3] add 3rd
execute if entity @a[tag=d1,tag=4th] run tag @a[tag=d3] remove 4th
execute if entity @a[tag=d1,tag=4th] run tag @a[tag=d2] add 2nd
execute if entity @a[tag=d1,tag=4th] run tag @a[tag=d2] remove 4th
execute if entity @a[tag=d1,tag=4th] run tag @a[tag=d1] add 1st
execute if entity @a[tag=d1,tag=4th] run tag @a[tag=d1] remove 4th

function general:placements

tag @a remove drawRollNow
tag @a remove drawRoll
tag @a remove drawRolled
tag @a remove drawFound
tag @a remove d1
tag @a remove d2
tag @a remove d3
tag @a remove d4

execute as @a[tag=playing] at @s run playsound entity.player.levelup master @s ~ ~ ~ 10000 0.85

schedule function board:draw/new_placement 3s

# Remove dice
scoreboard players set @e[type=minecraft:chicken,tag=diceroll] diceDespawn 30
execute if score @s 5id matches 1.. run scoreboard players reset @a 5id

execute store result score current= 5id if entity @a[tag=ingame,scores={5id=1..}]

scoreboard players add current= 5id 1

scoreboard players operation @s 5id = current= 5id
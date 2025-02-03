particle minecraft:enchant -194 58 56 5 5 5 0.5 10


execute if score final= tiles matches 2 run function board:tiles/final/winanim
execute if score final= tiles matches 2 as @a at @s if entity @s[y=50,dy=-10] run tp @s -194 58 56 90 0
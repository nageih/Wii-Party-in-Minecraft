# Blank line
tellraw @a[tag=playing] ""
# Tellraw saying 'Final Placements!'
execute unless score ingame= draw matches 1 run tellraw @a[tag=playing] {"nbt":"colors.base","storage":"minecraft:config","interpret":true,"extra":[{"translate":"generic.Placement","bold":true,"underlined":true}],"source":"storage","type":"nbt"}
# Tellraw saying 'New Placements!'
execute if score ingame= draw matches 1 run tellraw @a[tag=playing] {"nbt":"colors.base","storage":"minecraft:config","interpret":true,"extra":[{"translate":"generic.NewPlacement","bold":true,"underlined":true}],"source":"storage","type":"nbt"}
# Blank line
tellraw @a[tag=playing] ""


# If there is only 1 player in the category it will display his name colored (only for himself)
execute store result score %placements= minigame if entity @a[tag=1st]
execute if entity @a[tag=1st] as @a[tag=1st] if score %placements= minigame matches 1 run tellraw @s {"nbt":"colors.1st","storage":"minecraft:config","interpret":true,"extra":[{"translate":"generic.First","bold":true,"with":[{"selector":"@s","bold":true,"type":"selector"}]}],"source":"storage","type":"nbt"}

# Changes team colours to gray because for some reason having multiple entities in a tellraw selector makes it ignore the color and use default team colours instead, so doing this will make their colours match
team modify blue color gray
team modify red color gray
team modify green color gray
team modify orange color gray


execute store result score %placements= minigame if entity @a[tag=1st]
execute if entity @a[tag=1st] run tellraw @a[tag=playing,tag=!1st] {"nbt":"colors.1st","storage":"minecraft:config","interpret":true,"extra":[{"translate":"generic.First","bold":true,"with":[{"selector":"@a[tag=1st]","color":"gray","bold":false,"type":"selector"}]}],"source":"storage","type":"nbt"}
execute if entity @a[tag=1st] as @a[tag=1st,team=blue] if score %placements= minigame matches 2.. run tellraw @s {"nbt":"colors.1st","storage":"minecraft:config","interpret":true,"extra":[{"translate":"generic.First","bold":true,"with":[[{"selector":"@s","color":"#0088ff","bold":true,"type":"selector"},{"text":", ","color":"gray","bold":false,"type":"text"},{"selector":"@a[tag=1st,team=!blue]","color":"gray","bold":false,"type":"selector"}]]}],"source":"storage","type":"nbt"}
execute if entity @a[tag=1st] as @a[tag=1st,team=red] if score %placements= minigame matches 2.. run tellraw @s {"nbt":"colors.1st","storage":"minecraft:config","interpret":true,"extra":[{"translate":"generic.First","bold":true,"with":[[{"selector":"@s","color":"red","bold":true,"type":"selector"},{"text":", ","color":"gray","bold":false,"type":"text"},{"selector":"@a[tag=1st,team=!red]","color":"gray","bold":false,"type":"selector"}]]}],"source":"storage","type":"nbt"}
execute if entity @a[tag=1st] as @a[tag=1st,team=green] if score %placements= minigame matches 2.. run tellraw @s {"nbt":"colors.1st","storage":"minecraft:config","interpret":true,"extra":[{"translate":"generic.First","bold":true,"with":[[{"selector":"@s","color":"green","bold":true,"type":"selector"},{"text":", ","color":"gray","bold":false,"type":"text"},{"selector":"@a[tag=1st,team=!green]","color":"gray","bold":false,"type":"selector"}]]}],"source":"storage","type":"nbt"}
execute if entity @a[tag=1st] as @a[tag=1st,team=orange] if score %placements= minigame matches 2.. run tellraw @s {"nbt":"colors.1st","storage":"minecraft:config","interpret":true,"extra":[{"translate":"generic.First","bold":true,"with":[[{"selector":"@s","color":"gold","bold":true,"type":"selector"},{"text":", ","color":"gray","bold":false,"type":"text"},{"selector":"@a[tag=1st,team=!orange]","color":"gray","bold":false,"type":"selector"}]]}],"source":"storage","type":"nbt"}

execute store result score %placements= minigame if entity @a[tag=2nd]
execute if entity @a[tag=2nd] as @a[tag=2nd] if score %placements= minigame matches 1 run tellraw @s {"nbt":"colors.2nd","storage":"minecraft:config","interpret":true,"extra":[{"translate":"generic.Second","bold":true,"with":[{"selector":"@s","bold":true,"type":"selector"}]}],"source":"storage","type":"nbt"}

execute store result score %placements= minigame if entity @a[tag=2nd]
execute if entity @a[tag=2nd] run tellraw @a[tag=playing,tag=!2nd] {"nbt":"colors.2nd","storage":"minecraft:config","interpret":true,"extra":[{"translate":"generic.Second","bold":true,"with":[{"selector":"@a[tag=2nd]","color":"gray","bold":false,"type":"selector"}]}],"source":"storage","type":"nbt"}
execute if entity @a[tag=2nd] as @a[tag=2nd,team=blue] if score %placements= minigame matches 2.. run tellraw @s {"nbt":"colors.2nd","storage":"minecraft:config","interpret":true,"extra":[{"translate":"generic.Second","bold":true,"with":[[{"selector":"@s","color":"#0088ff","bold":true,"type":"selector"},{"text":", ","color":"gray","bold":false,"type":"text"},{"selector":"@a[tag=2nd,team=!blue]","color":"gray","bold":false,"type":"selector"}]]}],"source":"storage","type":"nbt"}
execute if entity @a[tag=2nd] as @a[tag=2nd,team=red] if score %placements= minigame matches 2.. run tellraw @s {"nbt":"colors.2nd","storage":"minecraft:config","interpret":true,"extra":[{"translate":"generic.Second","bold":true,"with":[[{"selector":"@s","color":"red","bold":true,"type":"selector"},{"text":", ","color":"gray","bold":false,"type":"text"},{"selector":"@a[tag=2nd,team=!red]","color":"gray","bold":false,"type":"selector"}]]}],"source":"storage","type":"nbt"}
execute if entity @a[tag=2nd] as @a[tag=2nd,team=green] if score %placements= minigame matches 2.. run tellraw @s {"nbt":"colors.2nd","storage":"minecraft:config","interpret":true,"extra":[{"translate":"generic.Second","bold":true,"with":[[{"selector":"@s","color":"green","bold":true,"type":"selector"},{"text":", ","color":"gray","bold":false,"type":"text"},{"selector":"@a[tag=2nd,team=!green]","color":"gray","bold":false,"type":"selector"}]]}],"source":"storage","type":"nbt"}
execute if entity @a[tag=2nd] as @a[tag=2nd,team=orange] if score %placements= minigame matches 2.. run tellraw @s {"nbt":"colors.2nd","storage":"minecraft:config","interpret":true,"extra":[{"translate":"generic.Second","bold":true,"with":[[{"selector":"@s","color":"gold","bold":true,"type":"selector"},{"text":", ","color":"gray","bold":false,"type":"text"},{"selector":"@a[tag=2nd,team=!orange]","color":"gray","bold":false,"type":"selector"}]]}],"source":"storage","type":"nbt"}

execute store result score %placements= minigame if entity @a[tag=3rd]
execute if entity @a[tag=3rd] as @a[tag=3rd] if score %placements= minigame matches 1 run tellraw @s {"nbt":"colors.3rd","storage":"minecraft:config","interpret":true,"extra":[{"translate":"generic.Third","bold":true,"with":[{"selector":"@s","bold":true,"type":"selector"}]}],"source":"storage","type":"nbt"}

execute store result score %placements= minigame if entity @a[tag=3rd]
execute if entity @a[tag=3rd] run tellraw @a[tag=playing,tag=!3rd] {"nbt":"colors.3rd","storage":"minecraft:config","interpret":true,"extra":[{"translate":"generic.Third","bold":true,"with":[{"selector":"@a[tag=3rd]","color":"gray","bold":false,"type":"selector"}]}],"source":"storage","type":"nbt"}
execute if entity @a[tag=3rd] as @a[tag=3rd,team=blue] if score %placements= minigame matches 2.. run tellraw @s {"nbt":"colors.3rd","storage":"minecraft:config","interpret":true,"extra":[{"translate":"generic.Third","bold":true,"with":[[{"selector":"@s","color":"#0088ff","bold":true,"type":"selector"},{"text":", ","color":"gray","bold":false,"type":"text"},{"selector":"@a[tag=3rd,team=!blue]","color":"gray","bold":false,"type":"selector"}]]}],"source":"storage","type":"nbt"}
execute if entity @a[tag=3rd] as @a[tag=3rd,team=red] if score %placements= minigame matches 2.. run tellraw @s {"nbt":"colors.3rd","storage":"minecraft:config","interpret":true,"extra":[{"translate":"generic.Third","bold":true,"with":[[{"selector":"@s","color":"red","bold":true,"type":"selector"},{"text":", ","color":"gray","bold":false,"type":"text"},{"selector":"@a[tag=3rd,team=!red]","color":"gray","bold":false,"type":"selector"}]]}],"source":"storage","type":"nbt"}
execute if entity @a[tag=3rd] as @a[tag=3rd,team=green] if score %placements= minigame matches 2.. run tellraw @s {"nbt":"colors.3rd","storage":"minecraft:config","interpret":true,"extra":[{"translate":"generic.Third","bold":true,"with":[[{"selector":"@s","color":"green","bold":true,"type":"selector"},{"text":", ","color":"gray","bold":false,"type":"text"},{"selector":"@a[tag=3rd,team=!green]","color":"gray","bold":false,"type":"selector"}]]}],"source":"storage","type":"nbt"}
execute if entity @a[tag=3rd] as @a[tag=3rd,team=orange] if score %placements= minigame matches 2.. run tellraw @s {"nbt":"colors.3rd","storage":"minecraft:config","interpret":true,"extra":[{"translate":"generic.Third","bold":true,"with":[[{"selector":"@s","color":"gold","bold":true,"type":"selector"},{"text":", ","color":"gray","bold":false,"type":"text"},{"selector":"@a[tag=3rd,team=!orange]","color":"gray","bold":false,"type":"selector"}]]}],"source":"storage","type":"nbt"}

execute store result score %placements= minigame if entity @a[tag=4th]
execute if entity @a[tag=4th] as @a[tag=4th] if score %placements= minigame matches 1 run tellraw @s {"nbt":"colors.4th","storage":"minecraft:config","interpret":true,"extra":[{"translate":"generic.Fourth","bold":true,"with":[{"selector":"@s","bold":true,"type":"selector"}]}],"source":"storage","type":"nbt"}

execute store result score %placements= minigame if entity @a[tag=4th]
execute if entity @a[tag=4th] run tellraw @a[tag=playing,tag=!4th] {"nbt":"colors.4th","storage":"minecraft:config","interpret":true,"extra":[{"translate":"generic.Fourth","bold":true,"with":[{"selector":"@a[tag=4th]","color":"gray","bold":false,"type":"selector"}]}],"source":"storage","type":"nbt"}
execute if entity @a[tag=4th] as @a[tag=4th,team=blue] if score %placements= minigame matches 2.. run tellraw @s {"nbt":"colors.4th","storage":"minecraft:config","interpret":true,"extra":[{"translate":"generic.Fourth","bold":true,"with":[[{"selector":"@s","color":"#0088ff","bold":true,"type":"selector"},{"text":", ","color":"gray","bold":false,"type":"text"},{"selector":"@a[tag=4th,team=!blue]","color":"gray","bold":false,"type":"selector"}]]}],"source":"storage","type":"nbt"}
execute if entity @a[tag=4th] as @a[tag=4th,team=red] if score %placements= minigame matches 2.. run tellraw @s {"nbt":"colors.4th","storage":"minecraft:config","interpret":true,"extra":[{"translate":"generic.Fourth","bold":true,"with":[[{"selector":"@s","color":"red","bold":true,"type":"selector"},{"text":", ","color":"gray","bold":false,"type":"text"},{"selector":"@a[tag=4th,team=!red]","color":"gray","bold":false,"type":"selector"}]]}],"source":"storage","type":"nbt"}
execute if entity @a[tag=4th] as @a[tag=4th,team=green] if score %placements= minigame matches 2.. run tellraw @s {"nbt":"colors.4th","storage":"minecraft:config","interpret":true,"extra":[{"translate":"generic.Fourth","bold":true,"with":[[{"selector":"@s","color":"green","bold":true,"type":"selector"},{"text":", ","color":"gray","bold":false,"type":"text"},{"selector":"@a[tag=4th,team=!green]","color":"gray","bold":false,"type":"selector"}]]}],"source":"storage","type":"nbt"}
execute if entity @a[tag=4th] as @a[tag=4th,team=orange] if score %placements= minigame matches 2.. run tellraw @s {"nbt":"colors.4th","storage":"minecraft:config","interpret":true,"extra":[{"translate":"generic.Fourth","bold":true,"with":[[{"selector":"@s","color":"gold","bold":true,"type":"selector"},{"text":", ","color":"gray","bold":false,"type":"text"},{"selector":"@a[tag=4th,team=!orange]","color":"gray","bold":false,"type":"selector"}]]}],"source":"storage","type":"nbt"}

# Blank line
tellraw @a[tag=playing] ""

# Changes the team colours back after the tellraw
team modify blue color blue
team modify red color red
team modify green color green
team modify orange color gold
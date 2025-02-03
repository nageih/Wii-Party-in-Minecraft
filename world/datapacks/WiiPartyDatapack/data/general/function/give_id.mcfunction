execute unless entity @a[tag=ingame,tag=id] run scoreboard players reset * id

scoreboard players add temp= id 1

scoreboard players operation @s id = temp= id

tag @s add id

execute unless entity @a[tag=ingame,tag=!id] run scoreboard players reset temp= id
execute unless entity @a[tag=ingame,tag=!id] run tag @a[tag=ingame] remove id
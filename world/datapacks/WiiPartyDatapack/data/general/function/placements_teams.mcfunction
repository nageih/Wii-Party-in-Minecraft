# Blank line
tellraw @a ""
# Tellraw saying 'Final Placements!'
execute unless score ingame= draw matches 1 run tellraw @a {"nbt":"colors.base","storage":"minecraft:config","interpret":true,"extra":[{"translate":"generic.Placement","bold":true,"underlined":true}],"source":"storage","type":"nbt"}
# Blank line
tellraw @a ""


execute as @a[tag=ingame,tag=solowin] run tellraw @s {"nbt":"colors.1st","storage":"minecraft:config","interpret":true,"extra":[{"translate":"generic.Winner","bold":true,"with":[{"selector":"@s","bold":true,"type":"selector"}]}],"source":"storage","type":"nbt"}
execute as @a[tag=ingame,tag=teamwin] if score %teamsize= minigame matches 1 run tellraw @s {"nbt":"colors.1st","storage":"minecraft:config","interpret":true,"extra":[{"translate":"generic.Winner","bold":true,"with":[{"selector":"@s","bold":true,"type":"selector"}]}],"source":"storage","type":"nbt"}

# Changes team colours to gray because for some reason having multiple entities in a tellraw selector makes it ignore the color and use default team colours instead, so doing this will make their colours match
team modify blue color gray
team modify red color gray
team modify green color gray
team modify orange color gray

scoreboard players set %teamsize= minigame 0
execute store result score %teamsize= minigame if entity @a[tag=teamwin]
execute if score %teamsize= minigame matches 0 store result score %teamsize= minigame if entity @a[tag=ingame,tag=!solowin]


# Solo win
execute as @a[tag=ingame,tag=solowin] run tellraw @a[tag=!solowin] {"nbt":"colors.1st","storage":"minecraft:config","interpret":true,"extra":[{"translate":"generic.Winner","bold":true,"with":[{"selector":"@s","bold":false,"color":"gray","type":"selector"}]}],"source":"storage","type":"nbt"}
# Team win (alone)
execute as @a[tag=ingame,tag=teamwin] if score %teamsize= minigame matches 1 run tellraw @a[tag=!teamwin] {"nbt":"colors.1st","storage":"minecraft:config","interpret":true,"extra":[{"translate":"generic.Winner","bold":true,"with":[{"selector":"@s","bold":false,"color":"gray","type":"selector"}]}],"source":"storage","type":"nbt"}
# Team win (team)
execute if entity @a[tag=ingame,tag=teamwin] unless score %teamsize= minigame matches 1 run tellraw @a[tag=!teamwin] {"nbt":"colors.1st","storage":"minecraft:config","interpret":true,"extra":[{"translate":"generic.Winners","bold":true,"with":[{"selector":"@a[tag=teamwin]","bold":false,"color":"gray","type":"selector"}]}],"source":"storage","type":"nbt"}
execute as @a[tag=ingame,tag=teamwin,team=blue] unless score %teamsize= minigame matches 1 run tellraw @s {"nbt":"colors.1st","storage":"minecraft:config","interpret":true,"extra":[{"translate":"generic.Winners","bold":true,"with":[[{"selector":"@s","bold":true,"color":"#0088ff","type":"selector"},{"text":", ","bold":false,"color":"gray","type":"text"},{"selector":"@a[tag=teamwin,team=!blue]","bold":false,"color":"gray","type":"selector"}]]}],"source":"storage","type":"nbt"}
execute as @a[tag=ingame,tag=teamwin,team=red] unless score %teamsize= minigame matches 1 run tellraw @s {"nbt":"colors.1st","storage":"minecraft:config","interpret":true,"extra":[{"translate":"generic.Winners","bold":true,"with":[[{"selector":"@s","bold":true,"color":"red","type":"selector"},{"text":", ","bold":false,"color":"gray","type":"text"},{"selector":"@a[tag=teamwin,team=!red]","bold":false,"color":"gray","type":"selector"}]]}],"source":"storage","type":"nbt"}
execute as @a[tag=ingame,tag=teamwin,team=green] unless score %teamsize= minigame matches 1 run tellraw @s {"nbt":"colors.1st","storage":"minecraft:config","interpret":true,"extra":[{"translate":"generic.Winners","bold":true,"with":[[{"selector":"@s","bold":true,"color":"green","type":"selector"},{"text":", ","bold":false,"color":"gray","type":"text"},{"selector":"@a[tag=teamwin,team=!green]","bold":false,"color":"gray","type":"selector"}]]}],"source":"storage","type":"nbt"}
execute as @a[tag=ingame,tag=teamwin,team=orange] unless score %teamsize= minigame matches 1 run tellraw @s {"nbt":"colors.1st","storage":"minecraft:config","interpret":true,"extra":[{"translate":"generic.Winners","bold":true,"with":[[{"selector":"@s","bold":true,"color":"gold","type":"selector"},{"text":", ","bold":false,"color":"gray","type":"text"},{"selector":"@a[tag=teamwin,team=!orange]","bold":false,"color":"gray","type":"selector"}]]}],"source":"storage","type":"nbt"}
# Solo win (solo team)
execute if entity @a[tag=ingame,tag=solowin] as @a[tag=ingame,tag=!solowin] if score %teamsize= minigame matches 1 run tellraw @a[tag=playing,tag=!solowin] {"nbt":"colors.2nd","storage":"minecraft:config","interpret":true,"extra":[{"translate":"generic.Loser","bold":true,"with":[{"selector":"@s","bold":false,"color":"gray","type":"selector"}]}],"source":"storage","type":"nbt"}
# Solo win (team)
execute as @a[tag=ingame,tag=solowin] unless score %teamsize= minigame matches 1 run tellraw @s {"nbt":"colors.2nd","storage":"minecraft:config","interpret":true,"extra":[{"translate":"generic.Losers","bold":true,"with":[{"selector":"@a[tag=ingame,tag=!solowin]","bold":false,"color":"gray","type":"selector"}]}],"source":"storage","type":"nbt"}
execute if entity @a[tag=ingame,tag=solowin] as @a[tag=ingame,tag=!solowin,team=blue] unless score %teamsize= minigame matches 1 run tellraw @s {"nbt":"colors.2nd","storage":"minecraft:config","interpret":true,"extra":[{"translate":"generic.Losers","bold":true,"with":[[{"selector":"@s","bold":true,"color":"#0088ff","type":"selector"},{"text":", ","bold":false,"color":"gray","type":"text"},{"selector":"@a[tag=ingame,tag=!solowin,team=!blue]","bold":false,"color":"gray","type":"selector"}]]}],"source":"storage","type":"nbt"}
execute if entity @a[tag=ingame,tag=solowin] as @a[tag=ingame,tag=!solowin,team=red] unless score %teamsize= minigame matches 1 run tellraw @s {"nbt":"colors.2nd","storage":"minecraft:config","interpret":true,"extra":[{"translate":"generic.Losers","bold":true,"with":[[{"selector":"@s","bold":true,"color":"red","type":"selector"},{"text":", ","bold":false,"color":"gray","type":"text"},{"selector":"@a[tag=ingame,tag=!solowin,team=!red]","bold":false,"color":"gray","type":"selector"}]]}],"source":"storage","type":"nbt"}
execute if entity @a[tag=ingame,tag=solowin] as @a[tag=ingame,tag=!solowin,team=green] unless score %teamsize= minigame matches 1 run tellraw @s {"nbt":"colors.2nd","storage":"minecraft:config","interpret":true,"extra":[{"translate":"generic.Losers","bold":true,"with":[[{"selector":"@s","bold":true,"color":"green","type":"selector"},{"text":", ","bold":false,"color":"gray","type":"text"},{"selector":"@a[tag=ingame,tag=!solowin,team=!green]","bold":false,"color":"gray","type":"selector"}]]}],"source":"storage","type":"nbt"}
execute if entity @a[tag=ingame,tag=solowin] as @a[tag=ingame,tag=!solowin,team=orange] unless score %teamsize= minigame matches 1 run tellraw @s {"nbt":"colors.2nd","storage":"minecraft:config","interpret":true,"extra":[{"translate":"generic.Losers","bold":true,"with":[[{"selector":"@s","bold":true,"color":"gold","type":"selector"},{"text":", ","bold":false,"color":"gray","type":"text"},{"selector":"@a[tag=ingame,tag=!solowin,team=!orange]","bold":false,"color":"gray","type":"selector"}]]}],"source":"storage","type":"nbt"}
# Team win
execute if entity @a[tag=ingame,tag=teamwin] run tellraw @a[tag=teamwin] {"nbt":"colors.2nd","storage":"minecraft:config","interpret":true,"extra":[{"translate":"generic.Loser","bold":true,"with":[{"selector":"@a[tag=ingame,tag=!teamwin]","bold":false,"color":"gray","type":"selector"}]}],"source":"storage","type":"nbt"}
execute if entity @a[tag=ingame,tag=teamwin] as @a[tag=ingame,tag=!teamwin] run tellraw @s {"nbt":"colors.2nd","storage":"minecraft:config","interpret":true,"extra":[{"translate":"generic.Loser","bold":true,"with":[{"selector":"@s","bold":false,"color":"gray","type":"selector"}]}],"source":"storage","type":"nbt"}

execute if entity @a[tag=ingame,tag=solowin] as @a[tag=ingame,tag=!solowin] if score %teamsize= minigame matches 1 run tellraw @s {"nbt":"colors.2nd","storage":"minecraft:config","interpret":true,"extra":[{"translate":"generic.Loser","bold":true,"with":[{"selector":"@s","bold":true,"type":"selector"}]}],"source":"storage","type":"nbt"}

# Blank line
tellraw @a ""


# Changes the team colours back after the tellraw
team modify blue color blue
team modify red color red
team modify green color green
team modify orange color gold
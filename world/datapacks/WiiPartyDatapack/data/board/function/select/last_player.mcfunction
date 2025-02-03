scoreboard players set target= boardPos 100

execute as @a[tag=ingame] run scoreboard players operation target= boardPos < @s boardPos

execute as @a[tag=ingame,sort=random] if score @s boardPos = target= boardPos run tag @s add selectTemp
tag @r[tag=selectTemp] add selectChoose
tag @a remove selectTemp

gamemode adventure @a[tag=selectChoose]
effect give @a[tag=selectChoose] invisibility infinite 1 true
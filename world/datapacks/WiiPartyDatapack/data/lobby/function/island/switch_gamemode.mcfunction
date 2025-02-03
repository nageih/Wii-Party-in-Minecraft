tag @s[gamemode=spectator] add temp
tag @s[tag=!temp,gamemode=adventure] add temp2

gamemode adventure @s[tag=temp]

gamemode spectator @s[tag=temp2]

tag @s remove temp
tag @s remove temp2

scoreboard players set @s islandSpectate 0
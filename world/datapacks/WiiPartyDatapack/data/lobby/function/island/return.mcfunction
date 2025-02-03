tag @s remove lobbyParkour
tag @s remove islandVisit
scoreboard players set @s islandReturn 0
title @s actionbar ""
gamemode adventure @s
clear @s

function lobby:teleport

execute at @s run playsound entity.illusioner.cast_spell master @s ~ ~ ~ 10 2


attribute @s player.entity_interaction_range base set 3
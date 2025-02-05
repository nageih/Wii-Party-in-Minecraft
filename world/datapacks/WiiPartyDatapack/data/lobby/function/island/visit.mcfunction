advancement revoke @s only lobby:island_visit_l
advancement revoke @s only lobby:island_visit_r

tag @s add islandVisit

tp @s -298 12 127 180 0

execute at @s run playsound block.note_block.pling master @s ~ ~ ~ 10

tellraw @s ""
tellraw @s {"translate":"lobby.Island.Guide1","color":"gray"}
tellraw @s ""
tellraw @s {"translate":"lobby.Island.Guide2","color":"gray","with":[{"translate":"command.islandReturn","color":"light_purple","bold":true}]}
tellraw @s ""
tellraw @s {"translate":"lobby.Island.Guide3","color":"gray","with":[{"translate":"command.islandSpectate","color":"light_purple","bold":true}]}
tellraw @s ""

attribute @s player.entity_interaction_range base set 0
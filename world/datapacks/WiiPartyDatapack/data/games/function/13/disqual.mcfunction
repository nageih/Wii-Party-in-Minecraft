particle minecraft:poof ~ ~1 ~ 0.5 1 0.5 0.1 50 force
playsound minecraft:entity.generic.explode master @s ~ ~ ~ 100 2
gamemode spectator @s
tag @s add dead
tellraw @a {"translate":"game.FlagFracas.DisqualOne","color":"gray","with":[{"selector":"@s"}]}

#execute store result score dead 13scores if entity @a[tag=ingame,tag=dead]
#execute store result score players 13scores if entity @a[tag=ingame]
#execute if score players 13scores matches 2 if score dead 13scores matches 1 run tag @s add 2nd
#execute if score players 13scores matches 2 if score dead 13scores matches 2 run tag @s add 1st
#execute if score players 13scores matches 3 if score dead 13scores matches 1 run tag @s add 3rd
#execute if score players 13scores matches 3 if score dead 13scores matches 2 run tag @s add 2nd
#execute if score players 13scores matches 3 if score dead 13scores matches 3 run tag @s add 1st
#execute if score players 13scores matches 4 if score dead 13scores matches 1 run tag @s add 4th
#execute if score players 13scores matches 4 if score dead 13scores matches 2 run tag @s add 3rd
#execute if score players 13scores matches 4 if score dead 13scores matches 3 run tag @s add 2nd
#execute if score players 13scores matches 4 if score dead 13scores matches 4 run tag @s add 1st
#
#
#execute if score players 13scores matches 2 if score dead 13scores matches 1 as @a[tag=ingame,tag=!dead] at @s run function games:13/all_disqual
#execute if score players 13scores matches 3 if score dead 13scores matches 2 as @a[tag=ingame,tag=!dead] at @s run function games:13/all_disqual
#execute if score players 13scores matches 4 if score dead 13scores matches 3 as @a[tag=ingame,tag=!dead] at @s run function games:13/all_disqual


execute store result score remaining 13scores if entity @a[tag=ingame,tag=!dead]
execute if score remaining 13scores matches 3 run tag @s add 4th
execute if score remaining 13scores matches 2 run tag @s add 3rd
execute if score remaining 13scores matches 1 run tag @s add 2nd
execute if score remaining 13scores matches 1 as @a[tag=ingame,tag=!dead] at @s run function games:13/all_disqual
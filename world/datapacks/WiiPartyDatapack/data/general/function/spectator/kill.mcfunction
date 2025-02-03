#   Author        =   @ T4Bl3rUs
#   Description   =   Kills aec when the player changes gamemode
#   Called By     =   general:spectator/main

tag @s add this
execute as @e[type=minecraft:area_effect_cloud,tag=speccheck] if score @s specCheck = @a[tag=this,limit=1] specCheck run kill @s
tag @s remove this
scoreboard players reset @s specCheck
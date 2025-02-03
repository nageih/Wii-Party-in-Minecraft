#   Author        =   @ JevinLevin
#   Description   =   Runs every tick, handles the swapping animation
#   Called By     =   board:tiles/tornado/main


# Increments the tornadotimer= by 1 every tick to time things
scoreboard players add tornadoTimer= tiles 1


execute if score tornadoTimer= tiles matches 25 run gamemode spectator @a[tag=turn]
execute if score tornadoTimer= tiles matches 25 run gamemode adventure @a[tag=chosen]
execute if score tornadoTimer= tiles matches 25.. at @e[type=area_effect_cloud,tag=tornadoTp] run tp @s ~ ~ ~
execute if score tornadoTimer= tiles matches 25 run function board:dice_roll/spectator_tp
execute if score tornadoTimer= tiles matches 25 as @a[tag=ingame,gamemode=spectator] at @s run tp @s ~ ~ ~ facing entity @a[tag=chosen,limit=1] feet

execute if score tornadoTimer= tiles matches 50 run function board:tiles/tornado/new_tile

execute if score tornadoTimer= tiles matches 50.. unless score increase= tiles = negative= dice as @e[type=area_effect_cloud,tag=tornadoTp] at @s facing entity @e[type=area_effect_cloud,tag=newPoint] eyes run tp @s ^ ^ ^0.55

execute if score tornadoTimer= tiles matches 50.. unless score increase= tiles = negative= dice at @e[type=area_effect_cloud,tag=tornadoTp] if entity @e[type=area_effect_cloud,tag=newPoint,distance=...75] run function board:tiles/tornado/new_tile

execute if score tornadoTimer= tiles matches 50.. if score increase= tiles = negative= dice run function board:tiles/tornado/end

execute if score tornadoTimer= tiles matches 50.. at @e[type=area_effect_cloud,tag=tornadoTp] run particle minecraft:poof ~ ~ ~ 0.75 3 0.75 0.1 30 force

execute if score tornadoTimer= tiles matches 50.. run scoreboard players add soundTimer= tiles 1

execute if score soundTimer= tiles matches 1 at @e[type=area_effect_cloud,tag=tornadoTp] run playsound entity.illusioner.cast_spell master @a ~ ~ ~ 3 0

execute if score soundTimer= tiles matches 10 run scoreboard players set soundTimer= tiles 0

execute if score tornadoTimer= tiles matches 50 at @e[type=area_effect_cloud,tag=tornadoTp] run playsound item.elytra.flying master @a ~ ~ ~ 3 0.75
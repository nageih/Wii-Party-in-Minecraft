#   Author        =   @ T4Bl3rUs
#   Description   =   Main loop
#   Called By     =   games:repeat

scoreboard players add time= 18scores 1
execute if score endtime= 18scores matches 1.. if score total= 18scores matches 2.. run scoreboard players remove endtime= 18scores 1

function games:18/raycasting/movetiles

execute if score ingame= 18scores matches 1.. if score start= 18scores matches 1 as @a[tag=playing] run function games:18/give_coas

execute as @a[x=19157,y=45,z=19154,distance=..100,tag=playing,tag=ingame,scores={coas=1..}] at @s run function games:18/controls/click
scoreboard players set @a coas 0

execute unless entity @a[tag=ingame,tag=!finished] if score endtime= 18scores matches 1.. run scoreboard players set endtime= 18scores 0
execute if score endtime= 18scores matches -1 run function games:18/endrace

execute store result score notfinished= 18scores if entity @a[tag=ingame,tag=!finished]
execute if score ingame= 18scores matches 1.. if score notfinished= 18scores matches 1 if score endtime= 18scores matches -2 if score total= 18scores matches 2.. run tellraw @a[tag=playing,tag=!finished] {"nbt":"colors.error","storage":"minecraft:config","interpret":true,"extra":[{"translate":"game.FriendlyFaceOff.15sec"}],"source":"storage","type":"nbt"}
execute if score ingame= 18scores matches 1.. if score notfinished= 18scores matches 1 if score endtime= 18scores matches -2 if score total= 18scores matches 2.. run tellraw @a[tag=playing,tag=finished] {"nbt":"colors.error","storage":"minecraft:config","interpret":true,"extra":[{"translate":"game.FriendlyFaceOff.15secOther"}],"source":"storage","type":"nbt"}
execute if score ingame= 18scores matches 1.. if score notfinished= 18scores matches 1 if score endtime= 18scores matches -2 if score total= 18scores matches 2.. as @a[tag=ingame,tag=!finished] at @s run playsound block.note_block.didgeridoo master @s
execute if score ingame= 18scores matches 1.. if score notfinished= 18scores matches 1 if score endtime= 18scores matches -2 run scoreboard players set endtime= 18scores 299
execute if score ingame= 18scores matches 1.. if score endtime= 18scores matches 0 run scoreboard players set endtime= 18scores -1

execute if score ingame= 18scores matches 1.. run title @a[tag=ingame,team=blue] actionbar {"translate":"game.FriendlyFaceOff.Info","color":"gray","with":[{"translate":"control.RightClick","color":"#0088ff"},{"translate":"control.LeftClick","color":"#0088ff"}]}
execute if score ingame= 18scores matches 1.. run title @a[tag=ingame,team=red] actionbar {"translate":"game.FriendlyFaceOff.Info","color":"gray","with":[{"translate":"control.RightClick","color":"red"},{"translate":"control.LeftClick","color":"red"}]}
execute if score ingame= 18scores matches 1.. run title @a[tag=ingame,team=green] actionbar {"translate":"game.FriendlyFaceOff.Info","color":"gray","with":[{"translate":"control.RightClick","color":"green"},{"translate":"control.LeftClick","color":"green"}]}
execute if score ingame= 18scores matches 1.. run title @a[tag=ingame,team=orange] actionbar {"translate":"game.FriendlyFaceOff.Info","color":"gray","with":[{"translate":"control.RightClick","color":"gold"},{"translate":"control.LeftClick","color":"gold"}]}

# Handles the tutorial
#execute if score ingame= 18scores matches 0 run function games:18/main_start

# Handles spectators
function general:spectator/main


# Keep magma cubes alive
execute as @e[type=magma_cube,tag=game18] run data merge entity @s {Health:10000f}

#execute if score ingame= 18scores matches 1.. as @a[tag=ingame] run function games:18/magma_cube_check

setblock 19155 45 19151 air

# DEBUG
effect clear @e[type=magma_cube,tag=game18] invisibility
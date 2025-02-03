scoreboard players reset errupted= tiles
scoreboard players reset erruptedRounds= tiles

tellraw @a[tag=playing] {"nbt":"colors.base","storage":"minecraft:config","interpret":true,"extra":[{"translate":"board.Tiles.Volcano.Normal","bold":true}],"source":"storage","type":"nbt"}

execute as @a[tag=playing] at @s run playsound minecraft:block.beacon.power_select master @s ~ ~ ~ 3

schedule function board:tiles/volcano/set_normal 10t

schedule function board:dice_roll/new_go 60t
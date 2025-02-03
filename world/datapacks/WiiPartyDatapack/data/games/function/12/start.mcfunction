#   Author        =   @ T4Bl3rUs
#   Description   =   Resets scoreboards and describes the game
#   Called By     =   

tag @r[tag=ingame] add solo

execute store result score ingame 12scores if entity @a[tag=ingame]
execute if score ingame 12scores matches 2.. if entity @a[tag=solo] run function games:12/start2
execute unless score ingame 12scores matches 2.. if entity @a[tag=solo] run function games:12/end
execute if score ingame 12scores matches 2.. unless entity @a[tag=solo] run function games:12/end
execute unless score ingame 12scores matches 2.. unless entity @a[tag=solo] run function games:12/end
execute unless score ingame 12scores matches 2.. run tellraw @a {"nbt":"colors.error","storage":"minecraft:config","interpret":true,"extra":[{"translate":"generic.Error.Alone"}],"source":"storage","type":"nbt"}
execute unless entity @a[tag=solo] run tellraw @a {"nbt":"colors.error","storage":"minecraft:config","interpret":true,"extra":[{"translate":"game.HideNPeek.Error.NoSeeker"}],"source":"storage","type":"nbt"}
execute unless score ingame 12scores matches 2.. if entity @a[tag=solo] as @a[tag=ingame] at @s run playsound minecraft:entity.bat.hurt master @s ~ ~ ~ 3 0
execute if score ingame 12scores matches 2.. unless entity @a[tag=solo] as @a[tag=ingame] at @s run playsound minecraft:entity.bat.hurt master @s ~ ~ ~ 3 0
execute unless score ingame 12scores matches 2.. unless entity @a[tag=solo] as @a[tag=ingame] at @s run playsound minecraft:entity.bat.hurt master @s ~ ~ ~ 3 0
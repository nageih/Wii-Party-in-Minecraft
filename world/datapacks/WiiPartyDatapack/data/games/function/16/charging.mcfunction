advancement revoke @s only games:16/charge

execute if score @s 16cooldown matches 1.. run return fail
execute if entity @s[tag=16dead] run return fail

execute unless score @s 16charge matches 1.. run playsound item.spyglass.use master @s ~ ~ ~ 1 0

tag @s add 16charging

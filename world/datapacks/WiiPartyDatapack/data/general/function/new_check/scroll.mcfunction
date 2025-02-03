scoreboard players operation lastchoice= newCheck = choice= newCheck

execute if entity @s[tag=down] run scoreboard players remove choice= newCheck 1
execute if entity @s[tag=up] run scoreboard players add choice= newCheck 1

execute if score choice= newCheck matches 2 run scoreboard players set choice= newCheck 1
execute if score choice= newCheck matches -1 run scoreboard players set choice= newCheck 0



execute as @a[tag=ingame] at @s unless score lastchoice= newCheck = choice= newCheck run playsound minecraft:block.note_block.hat master @s ~ ~ ~ 3 1
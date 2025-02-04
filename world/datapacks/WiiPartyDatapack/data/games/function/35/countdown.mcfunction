scoreboard players operation mod= 35scores = timer= 35scores
scoreboard players operation mod= 35scores %= 20 Numbers
scoreboard players operation sec= 35scores = timer= 35scores
scoreboard players operation sec= 35scores /= 20 Numbers
scoreboard players set display= 35scores 10
scoreboard players operation display= 35scores -= sec= Numbers


execute if score mod= 35scores matches 0 run title @a[tag=playing] title " "
execute if score mod= 35scores matches 0 run title @a[team=blue] subtitle {"color":"#0088ff","score":{"name":"display=","objective":"35scores"}}
execute if score mod= 35scores matches 0 run title @a[team=red] subtitle {"color":"red","score":{"name":"display=","objective":"35scores"}}
execute if score mod= 35scores matches 0 run title @a[team=green] subtitle {"color":"green","score":{"name":"display=","objective":"35scores"}}
execute if score mod= 35scores matches 0 run title @a[team=orange] subtitle {"color":"gold","score":{"name":"display=","objective":"35scores"}}
execute if score mod= 35scores matches 0 run title @a[tag=playing,tag=!ingame] subtitle {"color":"light_purple","score":{"name":"display=","objective":"35scores"}}


execute if score timer= 35scores matches 20 as @a[tag=playing] at @s run playsound minecraft:block.note_block.bit master @s ~ ~ ~ 1 0.5
execute if score timer= 35scores matches 40 as @a[tag=playing] at @s run playsound minecraft:block.note_block.bit master @s ~ ~ ~ 1 0.55
execute if score timer= 35scores matches 60 as @a[tag=playing] at @s run playsound minecraft:block.note_block.bit master @s ~ ~ ~ 1 0.6
execute if score timer= 35scores matches 80 as @a[tag=playing] at @s run playsound minecraft:block.note_block.bit master @s ~ ~ ~ 1 0.75
execute if score timer= 35scores matches 100 as @a[tag=playing] at @s run playsound minecraft:block.note_block.bit master @s ~ ~ ~ 1 0.7
execute if score timer= 35scores matches 120 as @a[tag=playing] at @s run playsound minecraft:block.note_block.bit master @s ~ ~ ~ 1 0.75
execute if score timer= 35scores matches 140 as @a[tag=playing] at @s run playsound minecraft:block.note_block.bit master @s ~ ~ ~ 1 0.8
execute if score timer= 35scores matches 160 as @a[tag=playing] at @s run playsound minecraft:block.note_block.bit master @s ~ ~ ~ 1 0.85
execute if score timer= 35scores matches 180 as @a[tag=playing] at @s run playsound minecraft:block.note_block.bit master @s ~ ~ ~ 1 0.9
execute if score timer= 35scores matches 200 as @a[tag=playing] at @s run playsound minecraft:block.note_block.bit master @s ~ ~ ~ 1 1

# Force all players to lock in
execute if score timer= 35scores matches 219 as @a[tag=ingame] at @s run function games:35/lock
execute if score timer= 35scores matches 219 run function games:35/stop_countdown


scoreboard players add timer= 35scores 1
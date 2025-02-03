#   Author        =   @ T4Bl3rUs and JevinLevin
#   Description   =   Function that handes the number of votes for the practice rounds
#   Called By     =   general:practice/main

tag @s add voted
execute if score @s practice matches 1 run scoreboard players set @s practice 2
execute if score @s practice matches 10 run scoreboard players set @s practice 11

execute store result score total= practice if entity @a[tag=ingame,tag=voted,scores={practice=1..9}]
execute store result score players= practice if entity @a[tag=ingame]
execute store result score deny= practice if entity @a[tag=ingame,tag=voted,scores={practice=10..}]

# 4 Players
    # 1 Accepted
execute if score total= practice matches 1 if score players= practice matches 4 if score deny= practice matches 0 run data modify storage minecraft:tutorials practice.votes set value '[{"text":"⬤","color":"green"},{"text":"⬤","color":"gray"},{"text":"⬤","color":"#A79476"},{"text":"⬤","color":"gray"}]'
execute if score total= practice matches 1 if score players= practice matches 4 if score deny= practice matches 1 run data modify storage minecraft:tutorials practice.votes set value '[{"text":"⬤","color":"green"},{"text":"⬤","color":"gray"},{"text":"⬤","color":"#A79476"},{"text":"⬤","color":"red"}]'
execute if score total= practice matches 1 if score players= practice matches 4 if score deny= practice matches 2 run data modify storage minecraft:tutorials practice.votes set value '[{"text":"⬤","color":"green"},{"text":"⬤","color":"gray"},{"text":"⬤⬤","color":"red"}]'
execute if score total= practice matches 1 if score players= practice matches 4 if score deny= practice matches 3 run data modify storage minecraft:tutorials practice.votes set value '[{"text":"⬤","color":"green"},{"text":"⬤⬤⬤","color":"red"}]'
    # 2 Accepted
execute if score total= practice matches 2 if score players= practice matches 4 if score deny= practice matches 0 run data modify storage minecraft:tutorials practice.votes set value '[{"text":"⬤⬤","color":"green"},{"text":"⬤","color":"#A79476"},{"text":"⬤","color":"gray"}]'
execute if score total= practice matches 2 if score players= practice matches 4 if score deny= practice matches 1 run data modify storage minecraft:tutorials practice.votes set value '[{"text":"⬤⬤","color":"green"},{"text":"⬤","color":"#A79476"},{"text":"⬤","color":"red"}]'
execute if score total= practice matches 2 if score players= practice matches 4 if score deny= practice matches 2 run data modify storage minecraft:tutorials practice.votes set value '[{"text":"⬤⬤","color":"green"},{"text":"⬤⬤","color":"red"}]'
    # 3 Accepted
execute if score total= practice matches 3 if score players= practice matches 4 if score deny= practice matches 0 run data modify storage minecraft:tutorials practice.votes set value '[{"text":"⬤⬤⬤","color":"green"},{"text":"⬤","color":"gray"}]'
execute if score total= practice matches 3 if score players= practice matches 4 if score deny= practice matches 1 run data modify storage minecraft:tutorials practice.votes set value '[{"text":"⬤⬤⬤","color":"green"},{"text":"⬤","color":"red"}]'
    # 4 Accepted
execute if score total= practice matches 4 if score players= practice matches 4 if score deny= practice matches 0 run data modify storage minecraft:tutorials practice.votes set value '{"text":"⬤⬤⬤⬤","color":"green"}'
# 3 Players
    # 1 Accepted
execute if score total= practice matches 1 if score players= practice matches 3 if score deny= practice matches 0 run data modify storage minecraft:tutorials practice.votes set value '[{"text":"⬤","color":"green"},{"text":"⬤","color":"#A79476"},{"text":"⬤","color":"gray"}]'
execute if score total= practice matches 1 if score players= practice matches 3 if score deny= practice matches 1 run data modify storage minecraft:tutorials practice.votes set value '[{"text":"⬤","color":"green"},{"text":"⬤","color":"#A79476"},{"text":"⬤","color":"red"}]'
execute if score total= practice matches 1 if score players= practice matches 3 if score deny= practice matches 2 run data modify storage minecraft:tutorials practice.votes set value '[{"text":"⬤","color":"green"},{"text":"⬤⬤","color":"red"}]'
    # 2 Accepted
execute if score total= practice matches 2 if score players= practice matches 3 if score deny= practice matches 0 run data modify storage minecraft:tutorials practice.votes set value '[{"text":"⬤⬤","color":"green"},{"text":"⬤","color":"gray"}]'
execute if score total= practice matches 2 if score players= practice matches 3 if score deny= practice matches 1 run data modify storage minecraft:tutorials practice.votes set value '[{"text":"⬤⬤","color":"green"},{"text":"⬤","color":"red"}]'
    # 3 Accepted
execute if score total= practice matches 3 if score players= practice matches 3 if score deny= practice matches 0 run data modify storage minecraft:tutorials practice.votes set value '{"text":"⬤⬤⬤","color":"green"}'
# 2 Players
    # 1 Accepted
execute if score total= practice matches 1 if score players= practice matches 2 if score deny= practice matches 0 run data modify storage minecraft:tutorials practice.votes set value '[{"text":"⬤","color":"green"},{"text":"⬤","color":"#A79476"}]'
execute if score total= practice matches 1 if score players= practice matches 2 if score deny= practice matches 1 run data modify storage minecraft:tutorials practice.votes set value '[{"text":"⬤","color":"green"},{"text":"⬤","color":"red"}]'
    # 2 Accepted
execute if score total= practice matches 2 if score players= practice matches 2 if score deny= practice matches 0 run data modify storage minecraft:tutorials practice.votes set value '{"text":"⬤⬤","color":"green"}'
# 1 Player
    # 1 Accepted
execute if score total= practice matches 1 if score players= practice matches 1 if score deny= practice matches 0 run data modify storage minecraft:tutorials practice.votes set value '{"text":"⬤","color":"green"}'


# 4 Player
execute if score players= practice matches 4 if score total= practice matches 3 run function general:practice/accept
execute if score players= practice matches 4 if score deny= practice matches 2 run function general:practice/deny
# 3 Player
execute if score players= practice matches 3 if score total= practice matches 2 run function general:practice/accept
execute if score players= practice matches 3 if score deny= practice matches 2 run function general:practice/deny
# 2 Player
execute if score players= practice matches 2 if score total= practice matches 2 run function general:practice/accept
execute if score players= practice matches 2 if score deny= practice matches 1 run function general:practice/deny
# 1 Player
execute if score players= practice matches 1 if score total= practice matches 1 run function general:practice/accept
# No one
execute if score total= practice matches 0 run function general:practice/deny

execute if entity @s as @a[tag=playing,scores={practice=1..9}] at @s run playsound minecraft:block.note_block.bit master @a ~ ~ ~ 3 0.5
execute if entity @s as @a[tag=playing,scores={practice=10..}] at @s run playsound minecraft:block.note_block.bit master @a ~ ~ ~ 3 1.5
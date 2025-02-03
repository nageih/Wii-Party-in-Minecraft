#   Author        =   @ T4Bl3rUs and JevinLevin
#   Description   =   Function triggerred if the practice round is aborted
#   Called By     =   general:practice/new

execute as @a[tag=playing] at @s run playsound minecraft:block.note_block.didgeridoo master @a ~ ~ ~ 3 0.5

execute as @a[tag=ingame] run trigger play set 0
execute as @a[tag=ingame] run trigger practice set 0
scoreboard players reset deny= practice
scoreboard players reset total= practice
tag @a[tag=playing] remove voted
scoreboard players reset @a practice
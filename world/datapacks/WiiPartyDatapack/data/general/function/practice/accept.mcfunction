#   Author        =   @ T4Bl3rUs and JevinLevin
#   Description   =   Function triggerred if a practice round is about to start
#   Called By     =   general:practice/new

tellraw @a[tag=playing] {"translate":"generic.Practice.Starting","color":"green","bold":true,"underlined":true}

execute as @a[tag=playing] at @s run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 3

scoreboard players set practice2= practice 1
schedule function general:practice/end_practice 3s

execute as @a[tag=ingame] run trigger play set 0
execute as @a[tag=ingame] run trigger practice set 0
tag @a[tag=playing] remove voted
#   Author        =   @ JevinLevin
#   Description   =   
#   Called By     =   general:practice/end_play + general:practice/end_practice

tag @a[tag=playing] remove voted

scoreboard players reset @a[tag=playing] practice
scoreboard players reset @a[tag=playing] play

scoreboard players reset total= practice
scoreboard players reset players= practice
scoreboard players reset deny= practice
scoreboard players reset starting= practice
scoreboard players reset countdown= practice
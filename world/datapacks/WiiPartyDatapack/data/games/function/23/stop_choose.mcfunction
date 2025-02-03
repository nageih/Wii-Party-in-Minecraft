execute as @a[tag=ingame] at @s run playsound block.note_block.banjo master @s

scoreboard players set choosing= 23scores 0

function games:23/view_prevention {"block":"air"}

# Setup crash spot depending on phase
execute if score phase= 23scores matches 0 positioned 24127 14 24017 run function games:23/set_crash
execute if score phase= 23scores matches 1 positioned 24075 22 24017 run function games:23/set_crash
execute if score phase= 23scores matches 2 positioned 24006 30 24017 run function games:23/set_crash
execute if score phase= 23scores matches 3 positioned 23947 38 24017 run function games:23/set_crash

scoreboard players add phase= 23scores 1



execute as @a[tag=bot,tag=ingame,tag=!dead] at @s run function games:23/bot_choose
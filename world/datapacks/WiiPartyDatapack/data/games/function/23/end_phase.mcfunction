execute store result score players= 23scores if entity @a[tag=ingame]
execute store result score alive= 23scores if entity @a[tag=ingame,tag=!dead]

execute if entity @a[tag=dead,tag=!23placed] run function games:23/give_place

tag @a[tag=dead] add 23placed

tag @a remove 23forward
tag @a remove 23left
tag @a remove 23right

execute if score alive= 23scores matches 2.. if score phase= 23scores matches ..3 run function games:23/start_choose
execute if score alive= 23scores matches 2.. if score phase= 23scores matches 4 run function games:23/endgame
execute if score alive= 23scores matches 1 run function games:23/endgame
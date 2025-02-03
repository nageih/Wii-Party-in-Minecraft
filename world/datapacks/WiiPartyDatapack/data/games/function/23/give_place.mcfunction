
execute if score players= 23scores matches 4 if score alive= 23scores matches 3 run tag @a[tag=dead,tag=!23placed] add 4th
execute if score players= 23scores matches 3..4 if score alive= 23scores matches 2 run tag @a[tag=dead,tag=!23placed] add 3rd
execute if score players= 23scores matches 2..4 if score alive= 23scores matches 1 run tag @a[tag=dead,tag=!23placed] add 2nd
execute if score players= 23scores matches 2..4 if score alive= 23scores matches 0 run tag @a[tag=dead,tag=!23placed] add 1st
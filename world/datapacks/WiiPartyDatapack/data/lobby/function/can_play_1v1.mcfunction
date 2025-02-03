tag @a[team=blue] add ready
tag @a[team=red] add ready
tag @a[team=green] add ready
tag @a[team=orange] add ready
execute store result score players= lobby if entity @a[tag=ready]
tag @a remove ready

execute if score players= lobby matches 2 run return 1


execute if score players= lobby matches ..1 as @a at @s run function lobby:not_enough_players
execute if score players= lobby matches 3.. as @a at @s run function lobby:too_many_players
execute unless score players= lobby matches 2 run return 0
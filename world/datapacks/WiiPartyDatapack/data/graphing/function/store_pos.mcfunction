execute as @a[tag=ingame] run function graphing:add_pos
execute as @a[tag=inactive] run function graphing:add_pos

execute store result storage minecraft:graphing temp int 1 run scoreboard players get 0 Numbers
execute unless entity @a[tag=ingame,team=blue] unless entity @a[tag=inactive,team=blue] run data modify storage minecraft:graphing blue append from storage minecraft:graphing temp
execute unless entity @a[tag=ingame,team=red] unless entity @a[tag=inactive,team=red] run data modify storage minecraft:graphing red append from storage minecraft:graphing temp
execute unless entity @a[tag=ingame,team=green] unless entity @a[tag=inactive,team=green] run data modify storage minecraft:graphing green append from storage minecraft:graphing temp
execute unless entity @a[tag=ingame,team=orange] unless entity @a[tag=inactive,team=orange] run data modify storage minecraft:graphing orange append from storage minecraft:graphing temp

# Increase datapoints
execute store result score temp graphing run data get storage minecraft:graphing config.datapoints 1
scoreboard players add temp graphing 1
execute store result storage minecraft:graphing config.datapoints int 1 run scoreboard players get temp graphingz
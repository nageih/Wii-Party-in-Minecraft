execute if entity @s[tag=!volcano] store result storage minecraft:graphing temp int 1 run scoreboard players get @s boardPos
execute if entity @s[tag=volcano] store result storage minecraft:graphing temp int 1 run scoreboard players get @s skullReturnTile

execute if entity @s[team=blue] run data modify storage minecraft:graphing blue append from storage minecraft:graphing temp
execute if entity @s[team=red] run data modify storage minecraft:graphing red append from storage minecraft:graphing temp
execute if entity @s[team=green] run data modify storage minecraft:graphing green append from storage minecraft:graphing temp
execute if entity @s[team=orange] run data modify storage minecraft:graphing orange append from storage minecraft:graphing temp
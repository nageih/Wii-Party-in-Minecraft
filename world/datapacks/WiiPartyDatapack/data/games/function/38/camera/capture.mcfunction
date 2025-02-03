data modify storage minecraft:game38 temp set value []
scoreboard players set count= 38scores 0
function games:38/camera/capture2
execute if entity @s[team=blue] run data modify storage minecraft:game38 blue append from storage minecraft:game38 temp
execute if entity @s[team=red] run data modify storage minecraft:game38 red append from storage minecraft:game38 temp
execute if entity @s[team=green] run data modify storage minecraft:game38 green append from storage minecraft:game38 temp
execute if entity @s[team=orange] run data modify storage minecraft:game38 orange append from storage minecraft:game38 temp
scoreboard players reset count= 38scores
data remove storage minecraft:game38 temp
data remove storage minecraft:game38 temp2
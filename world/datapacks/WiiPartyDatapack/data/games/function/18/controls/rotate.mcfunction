advancement revoke @s only games:18/lclick
function games:18/controls/renewmagma_cube

execute if entity @s[team=blue] as @e[type=minecraft:armor_stand,tag=blue,tag=selected] run function games:18/arrays/rotate
execute if entity @s[team=red] as @e[type=minecraft:armor_stand,tag=red,tag=selected] run function games:18/arrays/rotate
execute if entity @s[team=green] as @e[type=minecraft:armor_stand,tag=green,tag=selected] run function games:18/arrays/rotate
execute if entity @s[team=orange] as @e[type=minecraft:armor_stand,tag=orange,tag=selected] run function games:18/arrays/rotate


# Rotate floor display (currently disabled)
#execute as @s[team=blue] unless entity @e[type=minecraft:armor_stand,tag=blue,tag=selected] as @e[type=minecraft:armor_stand,tag=blue,tag=base] at @s rotated as @s run tp @s ~ ~ ~ ~90 ~
#execute as @s[team=red] unless entity @e[type=minecraft:armor_stand,tag=red,tag=selected] as @e[type=minecraft:armor_stand,tag=red,tag=base] at @s rotated as @s run tp @s ~ ~ ~ ~90 ~
#execute as @s[team=green] unless entity @e[type=minecraft:armor_stand,tag=green,tag=selected] as @e[type=minecraft:armor_stand,tag=green,tag=base] at @s rotated as @s run tp @s ~ ~ ~ ~90 ~
#execute as @s[team=orange] unless entity @e[type=minecraft:armor_stand,tag=orange,tag=selected] as @e[type=minecraft:armor_stand,tag=orange,tag=base] at @s rotated as @s run tp @s ~ ~ ~ ~90 ~
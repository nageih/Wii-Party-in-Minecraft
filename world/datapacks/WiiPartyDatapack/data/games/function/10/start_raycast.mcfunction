
# Initialise raycast
scoreboard players set hit= 10scores 0
scoreboard players set distance= 10scores 0
tag @s add 10ray

# Mark correct can
execute if entity @s[team=blue] run tag @e[type=armor_stand,tag=10can,tag=blue] add 10tempcan
execute if entity @s[team=red] run tag @e[type=armor_stand,tag=10can,tag=red] add 10tempcan
execute if entity @s[team=green] run tag @e[type=armor_stand,tag=10can,tag=green] add 10tempcan
execute if entity @s[team=orange] run tag @e[type=armor_stand,tag=10can,tag=orange] add 10tempcan
execute if entity @s[team=blue] run tag @e[type=magma_cube,tag=10hitbox,tag=blue] add 10tempcan
execute if entity @s[team=red] run tag @e[type=magma_cube,tag=10hitbox,tag=red] add 10tempcan
execute if entity @s[team=green] run tag @e[type=magma_cube,tag=10hitbox,tag=green] add 10tempcan
execute if entity @s[team=orange] run tag @e[type=magma_cube,tag=10hitbox,tag=orange] add 10tempcan
execute if entity @s[team=blue] run tag @e[type=item_display,tag=10can,tag=blue] add 10tempcan
execute if entity @s[team=red] run tag @e[type=item_display,tag=10can,tag=red] add 10tempcan
execute if entity @s[team=green] run tag @e[type=item_display,tag=10can,tag=green] add 10tempcan
execute if entity @s[team=orange] run tag @e[type=item_display,tag=10can,tag=orange] add 10tempcan

# Start raycast
execute if entity @s[team=blue] anchored eyes positioned ^ ^ ^.05 run function games:10/raycast
execute if entity @s[team=red] anchored eyes positioned ^ ^ ^.05 run function games:10/raycast
execute if entity @s[team=green] anchored eyes positioned ^ ^ ^.05 run function games:10/raycast
execute if entity @s[team=orange] anchored eyes positioned ^ ^ ^.05 run function games:10/raycast


tag @e remove 10tempcan
tag @s remove 10ray
execute if entity @s[team=blue] at @s run tp @e[type=minecraft:magma_cube,tag=game18,tag=blue] ~ -10000 ~
execute if entity @s[team=red] at @s run tp @e[type=minecraft:magma_cube,tag=game18,tag=red] ~ -10000 ~
execute if entity @s[team=green] at @s run tp @e[type=minecraft:magma_cube,tag=game18,tag=green] ~ -10000 ~
execute if entity @s[team=orange] at @s run tp @e[type=minecraft:magma_cube,tag=game18,tag=orange] ~ -10000 ~

execute if entity @s[team=blue] at @s run kill @e[type=minecraft:magma_cube,tag=game18,tag=blue]
execute if entity @s[team=red] at @s run kill @e[type=minecraft:magma_cube,tag=game18,tag=red]
execute if entity @s[team=green] at @s run kill @e[type=minecraft:magma_cube,tag=game18,tag=green]
execute if entity @s[team=orange] at @s run kill @e[type=minecraft:magma_cube,tag=game18,tag=orange]


function games:18/setup_magma
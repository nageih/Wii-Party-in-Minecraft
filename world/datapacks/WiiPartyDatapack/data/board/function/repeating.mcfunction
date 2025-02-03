function board:dice_roll/main
function board:draw/main
function board:tiles/main
function board:select/main

execute if score errupted= tiles matches 1 run particle minecraft:campfire_cosy_smoke -214 47 55 75 50 75 0.1 20 force @a[tag=!lowDetail]

execute as @e[tag=tileGlow] at @s if entity @s[y=-1000,dy=1] run kill @s

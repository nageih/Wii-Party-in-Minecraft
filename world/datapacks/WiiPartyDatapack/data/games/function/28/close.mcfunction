execute as @e[type=item_display,tag=28close,tag=bottom] at @s run tp @s ~ ~.025 ~
execute as @e[type=item_display,tag=28close,tag=top] at @s run tp @s ~ ~-.025 ~

scoreboard players add closetimer= 28scores 1

execute if score closetimer= 28scores matches 16 run scoreboard players reset closing= 28scores 
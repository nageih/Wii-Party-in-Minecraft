execute if score ingame= 5scores matches 4 run scoreboard players add launchTimer= 5scores 1
execute if score launchTimer= 5scores matches 1..49 as @e[type=minecraft:item_display,tag=specStand] at @s unless entity @e[type=minecraft:area_effect_cloud,distance=...41,tag=specMain] facing entity @e[type=minecraft:area_effect_cloud,tag=specMain,limit=1] feet run tp @s ^ ^ ^0.4 180 0
execute if score launchTimer= 5scores matches 1..49 as @e[type=minecraft:item_display,tag=specStand] at @s if entity @e[type=minecraft:area_effect_cloud,distance=...41,tag=specMain] facing entity @e[type=minecraft:area_effect_cloud,tag=specMain,limit=1] feet run tp @s @e[type=minecraft:area_effect_cloud,distance=...41,tag=specMain,limit=1]

execute if score launchTimer= 5scores matches 50 run function games:5/launch

execute if score launchTimer= 5scores matches 50.. as @e[type=minecraft:slime,tag=firework] at @s run function games:5/main_firework

execute if score launchTimer= 5scores matches 50.. as @a[tag=ingame] run spectate @e[tag=specMain,limit=1] @s
execute if score launchTimer= 5scores matches 50.. unless score ingame= 5scores matches 6 as @e[tag=specMain] at @s run tp @s ~ ~.5 ~

execute if score launchTimer= 5scores matches 90 if score left= 5scores matches 2.. as @e[type=minecraft:slime,tag=firework,sort=random,limit=1] at @s run function games:5/firework_fail
execute if score launchTimer= 5scores matches 130 if score left= 5scores matches 2.. as @e[type=minecraft:slime,tag=firework,sort=random,limit=1] at @s run function games:5/firework_fail
execute if score launchTimer= 5scores matches 165 if score left= 5scores matches 2.. as @e[type=minecraft:slime,tag=firework,sort=random,limit=1] at @s run function games:5/firework_fail
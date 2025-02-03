execute as @s[team=blue] run particle dust{color:[0.000,0.533,1.000],scale:1} ~ ~-1 ~ 0 0.5 0 0.1 3 force
execute as @s[team=red] run particle dust{color:[1.000,0.333,0.333],scale:1} ~ ~-1 ~ 0 0.5 0 0.1 3 force
execute as @s[team=green] run particle dust{color:[0.333,1.000,0.333],scale:1} ~ ~-1 ~ 0 0.5 0 0.1 3 force
execute as @s[team=orange] run particle dust{color:[1.000,0.667,0.000],scale:1} ~ ~-1 ~ 0 0.5 0 0.1 3 force
execute as @s[team=blue] run particle dust{color:[0.000,0.533,1.000],scale:2} ~ ~1.7 ~ 0.45 0.45 0.45 0.01 3 force
execute as @s[team=red] run particle dust{color:[1.000,0.333,0.333],scale:2} ~ ~1.7 ~ 0.45 0.45 0.45 0.01 3 force
execute as @s[team=green] run particle dust{color:[0.333,1.000,0.333],scale:2} ~ ~1.7 ~ 0.45 0.45 0.45 0.01 3 force
execute as @s[team=orange] run particle dust{color:[1.000,0.667,0.000],scale:2} ~ ~1.7 ~ 0.45 0.45 0.45 0.01 3 force
execute as @s[team=gray] run particle dust{color:[0.502,0.502,0.502],scale:1} ~ ~-1 ~ 0 0.5 0 0.1 3 force
execute as @s[team=gray] run particle dust{color:[0.502,0.502,0.502],scale:2} ~ ~1.7 ~ 0.45 0.45 0.45 0.01 3 force

execute unless score ingame= 5scores matches 6 if score launchTimer= 5scores matches 50..60 positioned ~ ~-1 ~ run tp @e[type=armor_stand,tag=firework,distance=..1] ~ ~.65 ~
execute unless score ingame= 5scores matches 6 if score launchTimer= 5scores matches 61.. positioned ~ ~-1 ~ run tp @e[type=armor_stand,tag=firework,distance=..1] ~ ~.5 ~
execute unless score ingame= 5scores matches 6 if score launchTimer= 5scores matches 50..60 run tp @s ~ ~.65 ~
execute unless score ingame= 5scores matches 6 if score launchTimer= 5scores matches 61.. run tp @s ~ ~.5 ~

execute if score launchTimer= 5scores matches 210 if score left= 5scores matches 1 at @s run function games:5/last_firework
execute if entity @s[team=blue] run scoreboard players set @a[tag=ingame,team=blue] 5scores 4
execute if entity @s[team=red] run scoreboard players set @a[tag=ingame,team=red] 5scores 4
execute if entity @s[team=green] run scoreboard players set @a[tag=ingame,team=green] 5scores 4
execute if entity @s[team=orange] run scoreboard players set @a[tag=ingame,team=orange] 5scores 4
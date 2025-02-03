execute if entity @s[tag=blue] as @a[team=blue] at @s rotated as @s run function games:18/raycasting/start
execute if entity @s[tag=red] as @a[team=red] at @s rotated as @s run function games:18/raycasting/start
execute if entity @s[tag=green] as @a[team=green] at @s rotated as @s run function games:18/raycasting/start
execute if entity @s[tag=orange] as @a[team=orange] at @s rotated as @s run function games:18/raycasting/start

execute if entity @s[tag=!hasshadow] run function games:18/raycasting/shadow
data modify entity @s Pos set from entity @e[type=minecraft:area_effect_cloud,tag=game18,tag=done,limit=1] Pos
execute unless score raycastx= 18scores matches 19153..19162 run effect clear @s minecraft:glowing
execute unless score raycastz= 18scores matches 19150..19159 run effect clear @s minecraft:glowing
execute unless score raycastx= 18scores matches 19153..19162 run tag @s remove placeable
execute unless score raycastz= 18scores matches 19150..19159 run tag @s remove placeable
execute unless score raycastx= 18scores matches 19153..19162 run tag @s[tag=place] remove selected
execute unless score raycastz= 18scores matches 19150..19159 run tag @s[tag=place] remove selected
execute unless score raycastx= 18scores matches 19153..19162 run tag @s remove place
execute unless score raycastz= 18scores matches 19150..19159 run tag @s remove place
execute if score raycastx= 18scores matches 19153..19162 if score raycastz= 18scores matches 19150..19159 at @s run function games:18/raycasting/snap
kill @e[type=minecraft:area_effect_cloud,tag=game18,tag=raycast]
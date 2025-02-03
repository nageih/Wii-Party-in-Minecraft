execute as @a[tag=playing] at @s run playsound minecraft:entity.generic.explode master @s ~ ~ ~ 3 2

execute as @a[tag=ingame] run spectate @e[tag=specMain,limit=1] @s

tp @e[type=minecraft:item_display,tag=specStand] ~ -70 ~
execute as @e[type=minecraft:item_display,tag=specMain] at @s run tp ~ ~3 ~
kill @e[type=minecraft:item_display,tag=specStand]
kill @e[type=minecraft:area_effect_cloud,tag=specMain]

execute as @e[type=minecraft:armor_stand,tag=firework,tag=!double] at @s run function games:5/spawn_trail

execute store result score left= 5scores if entity @e[type=minecraft:slime,tag=firework]

execute at @e[type=minecraft:armor_stand,tag=firework,tag=!double] run particle minecraft:large_smoke ~ ~ ~ 1 1 1 0.1 30 force

team modify blue seeFriendlyInvisibles false
team modify red seeFriendlyInvisibles false
team modify green seeFriendlyInvisibles false
team modify orange seeFriendlyInvisibles false
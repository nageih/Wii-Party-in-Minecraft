scoreboard players add @p[tag=ingame] 8hits 1

tp @s ~ ~-500 ~
kill @s

scoreboard players operation temp= 8scores = @p[tag=ingame] 8hits
scoreboard players operation temp= 8scores /= 2 Numbers

execute if score temp= 8scores matches 0 run data modify entity @e[type=item_display,sort=nearest,limit=1] item.components."minecraft:custom_model_data" set value 8001
execute if score temp= 8scores matches 1 run data modify entity @e[type=item_display,sort=nearest,limit=1] item.components."minecraft:custom_model_data" set value 8002
execute if score temp= 8scores matches 2 run data modify entity @e[type=item_display,sort=nearest,limit=1] item.components."minecraft:custom_model_data" set value 8003
execute if score temp= 8scores matches 3 run data modify entity @e[type=item_display,sort=nearest,limit=1] item.components."minecraft:custom_model_data" set value 8004
execute if score temp= 8scores matches 4 run data modify entity @e[type=item_display,sort=nearest,limit=1] item.components."minecraft:custom_model_data" set value 8005
execute if score temp= 8scores matches 5 run data modify entity @e[type=item_display,sort=nearest,limit=1] item.components."minecraft:custom_model_data" set value 8006
execute if score temp= 8scores matches 6 run data modify entity @e[type=item_display,sort=nearest,limit=1] item.components."minecraft:custom_model_data" set value 8007
execute if score temp= 8scores matches 7 run data modify entity @e[type=item_display,sort=nearest,limit=1] item.components."minecraft:custom_model_data" set value 8008
execute if score temp= 8scores matches 8 run data modify entity @e[type=item_display,sort=nearest,limit=1] item.components."minecraft:custom_model_data" set value 8009
execute if score temp= 8scores matches 9 run data modify entity @e[type=item_display,sort=nearest,limit=1] item.components."minecraft:custom_model_data" set value 8010
execute if score temp= 8scores matches 10 run data modify entity @e[type=item_display,sort=nearest,limit=1] item.components."minecraft:custom_model_data" set value 8011
execute if score temp= 8scores matches 11 run data modify entity @e[type=item_display,sort=nearest,limit=1] item.components."minecraft:custom_model_data" set value 8012
execute if score temp= 8scores matches 12 run data modify entity @e[type=item_display,sort=nearest,limit=1] item.components."minecraft:custom_model_data" set value 8013
execute if score temp= 8scores matches 13 run data modify entity @e[type=item_display,sort=nearest,limit=1] item.components."minecraft:custom_model_data" set value 8014
execute if score temp= 8scores matches 14 run data modify entity @e[type=item_display,sort=nearest,limit=1] item.components."minecraft:custom_model_data" set value 8015
execute if score temp= 8scores matches 15 run data modify entity @e[type=item_display,sort=nearest,limit=1] item.components."minecraft:custom_model_data" set value 8016
execute if score temp= 8scores matches 16 run data modify entity @e[type=item_display,sort=nearest,limit=1] item.components."minecraft:custom_model_data" set value 8017
execute if score temp= 8scores matches 17 run data modify entity @e[type=item_display,sort=nearest,limit=1] item.components."minecraft:custom_model_data" set value 8018
execute if score temp= 8scores matches 18 run data modify entity @e[type=item_display,sort=nearest,limit=1] item.components."minecraft:custom_model_data" set value 8019
execute if score temp= 8scores matches 19 run data modify entity @e[type=item_display,sort=nearest,limit=1] item.components."minecraft:custom_model_data" set value 8020
execute if score temp= 8scores matches 20 run data modify entity @e[type=item_display,sort=nearest,limit=1] item.components."minecraft:custom_model_data" set value 8021
execute if score temp= 8scores matches 21 run data modify entity @e[type=item_display,sort=nearest,limit=1] item.components."minecraft:custom_model_data" set value 8022
execute if score temp= 8scores matches 22 run kill @e[type=item_display,sort=nearest,limit=1]

execute if score temp= 8scores matches 22 as @p[tag=ingame] run function games:8/finishchopping

function games:8/display

execute unless score temp= 8scores matches 22 as @p[tag=ingame] if entity @s[team=blue] run summon minecraft:magma_cube ~ ~ ~ {Silent:1b,NoAI:1b,Size:1,Tags:["carrot","bluecarrot"]}
execute unless score temp= 8scores matches 22 as @p[tag=ingame] if entity @s[team=red] run summon minecraft:magma_cube ~ ~ ~ {Silent:1b,NoAI:1b,Size:1,Tags:["carrot","redcarrot"]}
execute unless score temp= 8scores matches 22 as @p[tag=ingame] if entity @s[team=green] run summon minecraft:magma_cube ~ ~ ~ {Silent:1b,NoAI:1b,Size:1,Tags:["carrot","greencarrot"]}
execute unless score temp= 8scores matches 22 as @p[tag=ingame] if entity @s[team=orange] run summon minecraft:magma_cube ~ ~ ~ {Silent:1b,NoAI:1b,Size:1,Tags:["carrot","orangecarrot"]}
#execute as @e[type=magma_cube,tag=carrot,tag=temp] at @s run tp @s ~ ~5 ~
#tag @e[type=magma_cube,tag=carrot,tag=temp] remove temp

playsound minecraft:entity.generic.big_fall master @a ~ ~ ~ 1 1.5
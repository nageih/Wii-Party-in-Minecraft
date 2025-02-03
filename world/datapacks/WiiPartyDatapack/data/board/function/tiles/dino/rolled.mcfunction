


# Displays blank line in chat
tellraw @a[tag=playing] ""

execute if score roll= tiles matches 4..6 if entity @e[type=area_effect_cloud,tag=dinoOrigin,tag=tile1] run scoreboard players set good= tiles 1
execute if score roll= tiles matches 4..6 if entity @e[type=area_effect_cloud,tag=dinoOrigin,tag=tile2] run scoreboard players set good= tiles 2
execute if score roll= tiles matches 1..3 if entity @e[type=area_effect_cloud,tag=dinoOrigin,tag=tile1] run scoreboard players set bad= tiles 1
execute if score roll= tiles matches 1..3 if entity @e[type=area_effect_cloud,tag=dinoOrigin,tag=tile2] run scoreboard players set bad= tiles 2

# Tellraw in chat showing which player has been chosen. Also displays a bold version for said player
execute if score good= tiles matches 1..2 run tellraw @a[tag=playing] {"translate":"board.Tiles.Dino.LandGood","color":"#0088ff","bold":true}
execute if score bad= tiles matches 1..2 run tellraw @a[tag=playing] {"translate":"board.Tiles.Dino.LandBad","color":"red","bold":true}

# Displays blank line in chat
tellraw @a[tag=playing] ""

# Plays levelup sound for everyone
execute if score good= tiles matches 1..2 as @a[tag=playing] at @s run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 3 0.5
execute if score bad= tiles matches 1..2 as @a[tag=playing] at @s run playsound minecraft:entity.wither.death master @s ~ ~ ~ 3 1


execute if score good= tiles matches 1..2 run schedule function board:tiles/dino/good/start 2s
execute if score bad= tiles matches 1..2 run schedule function board:tiles/dino/bad/start 2s

# Resets the roll= score so that this function doesnt keep running
scoreboard players reset roll= tiles

# Puts the barriers back around the tile
execute at @e[type=area_effect_cloud,tag=tileCloud] run fill ~23 ~5 ~23 ~-23 ~-9 ~-22 barrier replace void_air

# Removes the tileCloud entity
kill @e[type=area_effect_cloud,tag=tileCloud]
 
execute if score originalTile= tiles matches 32 if score good= tiles matches 1 run summon minecraft:area_effect_cloud -247 29 73 {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: ["dinoEndPoint"]}
execute if score originalTile= tiles matches 32 if score good= tiles matches 2 run summon minecraft:area_effect_cloud -142 8 68 {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: ["dinoEndPoint"]}
execute if score originalTile= tiles matches 60 if score bad= tiles matches 1 run summon minecraft:area_effect_cloud -112 14 93 {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: ["dinoEndPoint"]}
execute if score originalTile= tiles matches 60 if score bad= tiles matches 2 run summon minecraft:area_effect_cloud -205 21 -50 {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: ["dinoEndPoint"]}

execute at @e[type=area_effect_cloud,tag=dinoEndPoint] run fill ~23 ~5 ~23 ~-23 ~-9 ~-22 barrier replace void_air
execute at @e[type=area_effect_cloud,tag=dinoOrigin] run fill ~23 ~5 ~23 ~-23 ~-9 ~-22 barrier replace void_air
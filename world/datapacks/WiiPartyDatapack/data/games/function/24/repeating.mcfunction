#   Author        =   @ T4Bl3rUs
#   Description   =   Moves the minecarts 
#   Called By     =   games:repeat

# Create maze once chunk loaded
execute if score mazeCreated= 24scores matches 0 if blocks 24968 19 24974 24968 19 24974 24968 19 24974 masked run schedule function games:24/maze/create 5t append

# TP Timer
scoreboard players add tpTimer= 24scores 1
execute if score tpTimer= 24scores matches 4.. as @a[tag=ingame] at @s run tp @s ~ ~ ~ 0 75
execute if score tpTimer= 24scores matches 4.. run scoreboard players set tpTimer= 24scores 0

# Ride minecarts
execute as @a[tag=ingame,team=blue] unless predicate games:riding run ride @s mount @e[type=minecart,tag=maze,tag=blue,limit=1]
execute as @a[tag=ingame,team=red] unless predicate games:riding run ride @s mount @e[type=minecart,tag=maze,tag=red,limit=1]
execute as @a[tag=ingame,team=green] unless predicate games:riding run ride @s mount @e[type=minecart,tag=maze,tag=green,limit=1]
execute as @a[tag=ingame,team=orange] unless predicate games:riding run ride @s mount @e[type=minecart,tag=maze,tag=orange,limit=1]

# Move armor stands
execute as @a[tag=ingame,team=blue] at @s if entity @e[type=armor_stand,tag=24player,team=blue,tag=24move] run function games:24/move
execute as @a[tag=ingame,team=red] at @s if entity @e[type=armor_stand,tag=24player,team=red,tag=24move] run function games:24/move
execute as @a[tag=ingame,team=green] at @s if entity @e[type=armor_stand,tag=24player,team=green,tag=24move] run function games:24/move
execute as @a[tag=ingame,team=orange] at @s if entity @e[type=armor_stand,tag=24player,team=orange,tag=24move] run function games:24/move

# Rotate animation
execute as @e[type=armor_stand,tag=24player] at @s if score @s 24rotate matches 0.. run function games:24/rotating

# Scroll zooming
execute as @a[tag=ingame] run function games:24/zoom_check
# Title for scrolling
title @a[tag=ingame,team=blue] actionbar {"color":"#0088ff","translate":"game.MazeDaze.Scroll"}
title @a[tag=ingame,team=red] actionbar {"color":"red","translate":"game.MazeDaze.Scroll"}
title @a[tag=ingame,team=green] actionbar {"color":"green","translate":"game.MazeDaze.Scroll"}
title @a[tag=ingame,team=orange] actionbar {"color":"gold","translate":"game.MazeDaze.Scroll"}


# Display the pads
#function games:24/particles

# Check the pads
execute as @e[type=armor_stand,tag=24player] at @s run function games:24/check_pads

# Win detection
execute as @e[type=armor_stand,tag=24player,tag=!finished] at @s if entity @s[x=24981,y=16,z=24987,dx=12,dy=1,dz=12] run function games:24/finish

# Winner positions
#execute as @e[type=armor_stand,tag=24player,tag=1st] positioned 24987 17 24995 unless entity @s[distance=...3] at @s facing 24987 17 24995 positioned ^ ^ ^.25 run tp @s ~ 17 ~ 180 0 
#execute as @e[type=armor_stand,tag=24player,tag=2nd] positioned 24990 17 24994 unless entity @s[distance=...3] at @s facing 24990 17 24994 positioned ^ ^ ^.25 run tp @s ~ 17 ~ 180 0 
#execute as @e[type=armor_stand,tag=24player,tag=3rd] positioned 24984 17 24994 unless entity @s[distance=...3] at @s facing 24984 17 24994 positioned ^ ^ ^.25 run tp @s ~ 17 ~ 180 0 

execute as @e[type=item_display,tag=24pad,tag=24spin] run scoreboard players add @s 24rotate 1
execute as @e[type=item_display,tag=24pad,tag=24spin] if score @s 24rotate matches 40.. run data modify entity @s item.components."minecraft:custom_model_data" set value 24003
execute as @e[type=item_display,tag=24pad,tag=24spin] if score @s 24rotate matches 40.. run tag @s remove 24spin
execute as @e[type=item_display,tag=24pad,tag=24spin] if score @s 24rotate matches 40.. run scoreboard players reset @s 24rotate

scoreboard players add @a[tag=ingame,tag=!finished] 24timer 1


#timer
execute if score ingame= 24scores matches 2 run scoreboard players remove timer= 24scores 1
execute if score ingame= 24scores matches 2 if score timer= 24scores matches 0 run function games:24/endrace
execute if score timer= 24scores matches ..0 run scoreboard players reset timer= 24scores

#bossbar
execute store result bossbar minecraft:24bluetimer value run scoreboard players get timer= 24scores
execute store result bossbar minecraft:24redtimer value run scoreboard players get timer= 24scores
execute store result bossbar minecraft:24greentimer value run scoreboard players get timer= 24scores
execute store result bossbar minecraft:24orangetimer value run scoreboard players get timer= 24scores
execute store result bossbar minecraft:24spectimer value run scoreboard players get timer= 24scores
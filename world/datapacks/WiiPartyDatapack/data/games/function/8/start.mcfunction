
scoreboard players set ingame 8scores 1
scoreboard players set @a[tag=ingame] 8hits 0

# Sets the global minigame score to the current minigame number, this is to ensure that the tick function is being run
scoreboard players set global minigame 8


effect clear @a[tag=ingame] weakness

kill @e[type=item_display,tag=carrot]
summon item_display 7995 22.075 7997 {NoGravity:1b,item_display:"ground",item:{id:"minecraft:carrot_on_a_stick",count:1,components:{"minecraft:custom_model_data":8001}},Tags:["carrot"],Rotation:[180F,-90F]}
summon item_display 8003 22.075 7996 {NoGravity:1b,item_display:"ground",item:{id:"minecraft:carrot_on_a_stick",count:1,components:{"minecraft:custom_model_data":8001}},Tags:["carrot"],Rotation:[-90F,-90F]}
summon item_display 7996 22.075 8005 {NoGravity:1b,item_display:"ground",item:{id:"minecraft:carrot_on_a_stick",count:1,components:{"minecraft:custom_model_data":8001}},Tags:["carrot"],Rotation:[90F,-90F]}
summon item_display 8004 22.075 8004 {NoGravity:1b,item_display:"ground",item:{id:"minecraft:carrot_on_a_stick",count:1,components:{"minecraft:custom_model_data":8001}},Tags:["carrot"],Rotation:[0F,-90F]}


schedule function games:8/countdown/start 5s

tp @a[team=blue] 7995.0 21 7996.0 -15 10
tp @a[team=red] 8005.0 21 7996.0 75 10
tp @a[team=orange] 8005.0 21 8006.0 165 10
tp @a[team=green] 7995.0 21 8006.0 255 10

# Face carrot
#execute as @a[tag=ingame] at @s run tp @s ~ ~ ~ facing entity @e[type=item_display,tag=carrot,limit=1,sort=nearest]

# These tellraws explain the game
tellraw @a[tag=playing] ""
tellraw @a[team=blue] [{"translate":"game.ChopChopsName","color":"#0088ff","bold":true,"underlined": true}]
tellraw @a[team=red] [{"translate":"game.ChopChopsName","color":"red","bold":true,"underlined": true}]
tellraw @a[team=green] [{"translate":"game.ChopChopsName","color":"green","bold":true,"underlined": true}]
tellraw @a[team=orange] [{"translate":"game.ChopChopsName","color":"gold","bold":true,"underlined": true}]
tellraw @a[tag=playing,tag=!ingame] [{"translate":"game.ChopChopsName","color":"light_purple","bold":true,"underlined": true}]
tellraw @a[tag=playing] ""
tellraw @a[tag=playing] [{"translate":"game.HowToPlay","color":"gray","bold":true}]
tellraw @a[tag=playing] [{"translate":"game.ChopChops.How.1","color":"gray","with":[{"text":"-"}]}]
tellraw @a[tag=playing] [{"translate":"game.ChopChops.How.2","color":"gray","with":[{"text":"-"}]}]
tellraw @a[tag=playing] ""


    # Spectators
spreadplayers 8000 8000 10 10 under 21 true @a[tag=playing,tag=!ingame]

# Ding sound effect
execute as @a[tag=playing] at @s run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 3 0.7


# Removes all players position tags, just for debugging purposes
function general:reset_tags

function games:8/display
scoreboard objectives setdisplay sidebar 8display

scoreboard players set timer= 8scores 600

# Bossbar
bossbar add 8bluetimer {"translate":"game.WalkOff.Time","color":"#0088ff","bold":true}
bossbar add 8spectimer {"translate":"game.WalkOff.Time","color":"light_purple","bold":true}
bossbar add 8redtimer {"translate":"game.WalkOff.Time","color":"red","bold":true}
bossbar add 8greentimer {"translate":"game.WalkOff.Time","color":"green","bold":true}
bossbar add 8orangetimer {"translate":"game.WalkOff.Time","color":"gold","bold":true}
bossbar set 8bluetimer color blue
bossbar set 8spectimer color pink
bossbar set 8redtimer color red
bossbar set 8greentimer color green
bossbar set 8orangetimer color yellow
bossbar set 8bluetimer max 600
bossbar set 8spectimer max 600
bossbar set 8redtimer max 600
bossbar set 8greentimer max 600
bossbar set 8orangetimer max 600
bossbar set 8bluetimer players @a[team=blue]
bossbar set 8bluetimer visible true
bossbar set 8spectimer players @a[tag=playing,tag=!ingame]
bossbar set 8spectimer visible true
bossbar set 8redtimer players @a[team=red]
bossbar set 8redtimer visible true
bossbar set 8greentimer players @a[team=green]
bossbar set 8greentimer visible true
bossbar set 8orangetimer players @a[team=orange]
bossbar set 8orangetimer visible true
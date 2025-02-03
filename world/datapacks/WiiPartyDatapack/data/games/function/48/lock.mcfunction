tag @s add 48locked
clear @s carrot_on_a_stick

# Disable movement
attribute @s minecraft:generic.movement_speed base set 0
attribute @s minecraft:generic.jump_strength base set 0

function games:48/calc_result
scoreboard players operation @s 48score = result= 48scores

playsound minecraft:block.end_portal_frame.fill master @a[tag=playing] ~ ~ ~ 25 1

tellraw @a[tag=playing] [{"bold":false,"translate":"game.WalkOff.Lock","color":"gray","with":[{"selector": "@s","bold":true}]}]

# End if all are locked
execute store result score left= 48scores if entity @a[tag=ingame,tag=!48locked]
execute if score left= 48scores matches 0 run schedule function games:48/start_cutscene 2s


function games:48/display

title @s actionbar ""

scoreboard players reset @s rightClick
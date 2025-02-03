tag @s remove 48locked

# Enable movement
attribute @s minecraft:generic.movement_speed base set 0.1
attribute @s minecraft:generic.jump_strength base set 0.41999998688697815

scoreboard players set @s 48score 0

playsound minecraft:block.end_portal_frame.fill master @a[tag=playing] ~ ~ ~ 25 2

tellraw @a[tag=playing] [{"bold":false,"translate":"game.WalkOff.Unlock","color":"gray","with":[{"selector": "@s","bold":true}]}]

function games:48/display

scoreboard players reset @s rightClick
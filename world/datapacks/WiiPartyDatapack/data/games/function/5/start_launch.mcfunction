execute as @a[tag=playing] at @s run playsound minecraft:entity.tnt.primed master @s ~ ~ ~ 3 1

scoreboard players set ingame= 5scores 4

execute as @a[tag=ingame,sort=random] at @s run function games:5/start_spectating

summon minecraft:item_display 5002 14.7 5020 {Tags:["specMain"],Silent:1b,Rotation:[180.0f,0.0f],Invulnerable:1b,teleport_duration:1,NoGravity:1b}
summon minecraft:area_effect_cloud 5002 17.7 5020 {Tags:["specMain"],Rotation:[180.0f,0.0f],Age:-2147483648,Duration:-1,WaitTime:-2147483648}

team join noCollision @e[tag=specMain]

kill @e[type=minecraft:villager,tag=detonator]
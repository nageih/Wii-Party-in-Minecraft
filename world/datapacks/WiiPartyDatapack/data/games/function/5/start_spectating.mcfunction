summon minecraft:item_display ~ ~1.7 ~ {Tags:["specStand","tempSpec"],Silent:1b,Rotation:[180.0f,0.0f],Invulnerable:1b,teleport_duration:1,NoGravity:1b}

scoreboard players operation @e[tag=tempSpec,limit=1] 5id = @s 5id

gamemode spectator @s

spectate @e[tag=tempSpec,limit=1] @s

team join noCollision @e[tag=tempSpec]

tag @e[tag=tempSpec] remove tempSpec
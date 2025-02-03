title @a[tag=playing,tag=!ingame] title {"translate":"board.Tiles.Dino.HoldStill","color":"light_purple","bold":true}
title @a[team=blue] title {"translate":"board.Tiles.Dino.HoldStill","color":"#0088ff","bold":true}
title @a[team=red] title {"translate":"board.Tiles.Dino.HoldStill","color":"red","bold":true}
title @a[team=green] title {"translate":"board.Tiles.Dino.HoldStill","color":"green","bold":true}
title @a[team=orange] title {"translate":"board.Tiles.Dino.HoldStill","color":"gold","bold":true}

execute as @a[tag=playing] at @s run playsound minecraft:block.beacon.activate master @a ~ ~ ~ 3

scoreboard players set dino= tiles 2

execute if score good= tiles matches 1 run summon phantom -153.94 48.90 131.08 {Silent:1b,Invulnerable:1b,PersistenceRequired:1b,NoAI:1b,Tags:["dino"]}
execute if score good= tiles matches 2 run summon phantom -108.42 29.49 7.02 {Silent:1b,Invulnerable:1b,PersistenceRequired:1b,NoAI:1b,Tags:["dino"]}

execute as @a[tag=turn] run attribute @s minecraft:generic.gravity base set 0

summon armor_stand -286 21 31 {Invulnerable:1b,Invisible:1b,Tags:["dinoposition"],NoGravity:1b,attributes:[{id:"minecraft:generic.scale",base:0.1}]}

function general:island/barrierstostruct

execute if score good= tiles matches 1 run scoreboard players set @a[tag=turn] newBoardPos 40
execute if score good= tiles matches 2 run scoreboard players set @a[tag=turn] newBoardPos 65
execute as @a[tag=turn] run scoreboard players operation @s boardPos = @s newBoardPos
kill @e[tag=tileGlow]
function board:dice_roll/glowing_tile
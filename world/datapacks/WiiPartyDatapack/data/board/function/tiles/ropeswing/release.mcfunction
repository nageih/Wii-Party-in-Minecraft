#scoreboard players set direction swing 0
scoreboard players set stage swing 0
scoreboard players set global tiles 0
execute as @a[tag=turn] run attribute @s minecraft:generic.gravity base set 0
execute if score eventRoll= diceRoll matches 1 run summon armor_stand -286 23 26 {Invulnerable:1b,Invisible:1b,Motion:[0.0,0.0,-0.525],Tags:["ropestand"],attributes:[{id:"minecraft:generic.scale",base:0.1}]}
execute if score eventRoll= diceRoll matches 2 run summon armor_stand -286 23 26 {Invulnerable:1b,Invisible:1b,Motion:[0.193,1.0,-1.22],Tags:["ropestand"],attributes:[{id:"minecraft:generic.scale",base:0.1}]}
execute if score eventRoll= diceRoll matches 3 run summon armor_stand -286 23 26 {Invulnerable:1b,Invisible:1b,Motion:[1.6,1.0,-2.445],Tags:["ropestand"],attributes:[{id:"minecraft:generic.scale",base:0.1}]}
execute if score eventRoll= diceRoll matches 4 run summon armor_stand -286 23 26 {Invulnerable:1b,Invisible:1b,Motion:[2.727,1.0,-3.385],Tags:["ropestand"],attributes:[{id:"minecraft:generic.scale",base:0.1}]}
execute if score eventRoll= diceRoll matches 5 run summon armor_stand -286 23 26 {Invulnerable:1b,Invisible:1b,Motion:[2.07,1.0,-4.424],Tags:["ropestand"],attributes:[{id:"minecraft:generic.scale",base:0.1}]}
execute if score eventRoll= diceRoll matches 6 run summon armor_stand -286 23 26 {Invulnerable:1b,Invisible:1b,Motion:[2.25,1.0,-5.45],Tags:["ropestand"],attributes:[{id:"minecraft:generic.scale",base:0.1}]}
execute if entity @a[tag=turn,team=blue] run tellraw @a[tag=playing] [{"translate":"tiles.RopeSwing.Rolled","color":"gray","with":[{"selector":"@a[tag=turn]","color":"#0088FF"},{"score":{"name":"eventRoll=","objective":"diceRoll"},"color":"gray","bold":true}]}]
execute if entity @a[tag=turn,team=red] run tellraw @a[tag=playing] [{"translate":"tiles.RopeSwing.Rolled","color":"gray","with":[{"selector":"@a[tag=turn]","color":"red"},{"score":{"name":"eventRoll=","objective":"diceRoll"},"color":"gray","bold":true}]}]
execute if entity @a[tag=turn,team=green] run tellraw @a[tag=playing] [{"translate":"tiles.RopeSwing.Rolled","color":"gray","with":[{"selector":"@a[tag=turn]","color":"green"},{"score":{"name":"eventRoll=","objective":"diceRoll"},"color":"gray","bold":true}]}]
execute if entity @a[tag=turn,team=orange] run tellraw @a[tag=playing] [{"translate":"tiles.RopeSwing.Rolled","color":"gray","with":[{"selector":"@a[tag=turn]","color":"gold"},{"score":{"name":"eventRoll=","objective":"diceRoll"},"color":"gray","bold":true}]}]
execute at @a[tag=turn] run playsound minecraft:block.note_block.iron_xylophone master @a ~ ~ ~ 20 0.5 1
execute if score eventRoll= diceRoll matches 1 run scoreboard players set swinging tiles 1
execute if score eventRoll= diceRoll matches 2 run scoreboard players set swinging tiles 2
execute if score eventRoll= diceRoll matches 3 run scoreboard players set swinging tiles 3
execute if score eventRoll= diceRoll matches 4 run scoreboard players set swinging tiles 4
execute if score eventRoll= diceRoll matches 5 run scoreboard players set swinging tiles 5
execute if score eventRoll= diceRoll matches 6 run scoreboard players set swinging tiles 6
scoreboard players reset ropeSwing diceRoll

scoreboard players set ropeswing= tiles 3

kill @e[type=armor_stand,tag=ropeposition]

# Sets all the diceDespawn timers to the duration= score so that they both explode at the same time
scoreboard players operation @e[type=minecraft:chicken,tag=diceroll] diceDespawn = duration= diceDespawn



execute unless score if6 tiles matches 1 as @a[tag=turn] run scoreboard players operation addResult= diceRoll = eventRoll= diceRoll
execute unless score if6 tiles matches 1 as @a[tag=turn] run function board:dice_roll/update_new_tile

execute if entity @a[tag=turn,team=blue] run tellraw @a[tag=playing] [{"translate":"board.DiceRoll.MoveTo","color":"#0088FF","with":[{"score":{"name":"@a[tag=turn,limit=1]","objective":"newBoardPos"},"color":"#0088FF","bold":true}]}]
execute if entity @a[tag=turn,team=red] run tellraw @a[tag=playing] [{"translate":"board.DiceRoll.MoveTo","color":"red","with":[{"score":{"name":"@a[tag=turn,limit=1]","objective":"newBoardPos"},"color":"red","bold":true}]}]
execute if entity @a[tag=turn,team=green] run tellraw @a[tag=playing] [{"translate":"board.DiceRoll.MoveTo","color":"green","with":[{"score":{"name":"@a[tag=turn,limit=1]","objective":"newBoardPos"},"color":"green","bold":true}]}]
execute if entity @a[tag=turn,team=orange] run tellraw @a[tag=playing] [{"translate":"board.DiceRoll.MoveTo","color":"gold","with":[{"score":{"name":"@a[tag=turn,limit=1]","objective":"newBoardPos"},"color":"gold","bold":true}]}]

execute as @e[type=armor_stand,tag=ropestand] store result entity @s Air double 1 run time query gametime

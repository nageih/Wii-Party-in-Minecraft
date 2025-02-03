#   Author        =   @ T4Bl3rUs
#   Description   =   Ran at the very start of the minigame
#   Called By     =   


# This shows that the game is in the starting phase
scoreboard players set ingame= 38scores 0

# Sets the global minigame score to the current minigame number, this is to ensure that the tick function is being run
scoreboard players set global minigame 38

# Set spectator limits
scoreboard players set rad= specOptions 20
scoreboard players set x= specOptions 37970
scoreboard players set z= specOptions 37986
scoreboard players set miny= specOptions 11
scoreboard players set maxy= specOptions 22
scoreboard players set enabled= specOptions 1

# Teleport all players to the minigame
tp @a[tag=ingame,team=blue] 37960 15 37985
tp @a[tag=ingame,team=red] 37958 15 37983
tp @a[tag=ingame,team=green] 37958 15 37985
tp @a[tag=ingame,team=orange] 37960 15 37983

execute as @a[tag=playing,tag=!ingame] run tp @s @r[tag=ingame]

# Ding sound effect
execute as @a[tag=playing] at @s run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 3 0.7

# Removes all players position tags, just for debugging purposes
function general:reset_tags

# Gives all players saturation so they dont take hunger
effect give @a[tag=ingame] minecraft:saturation infinite 255 true

# Give all players the weakness effect to make sure they can't punch other players to throw them off, this effect is cleared when it is their turn to shoot however
effect give @a[tag=ingame] minecraft:weakness infinite 255 true

# schedule lecterns
#schedule function games:38/set_lecterns 2t

# Enable  triggers
#scoreboard players enable @a[tag=ingame] play
#scoreboard players enable @a[tag=ingame] practice

# Spawns the starting lecterns
#data modify storage minecraft:tutorials title set from storage minecraft:tutorials game.38.title
#data modify storage minecraft:tutorials desc set from storage minecraft:tutorials game.38.desc
#data modify storage minecraft:tutorials temp set from storage minecraft:tutorials game.38.video
#data modify storage minecraft:tutorials temp2 set from storage minecraft:tutorials game.38.video
#function general:tutorial/reset

scoreboard players set timer= 38scores -1

# Spawn the mobs
function games:38/summons

# Reset mods
data modify storage minecraft:mods game.38.time set from storage minecraft:mods game.38.time_not_sel
data modify storage minecraft:mods game.38.time[1] set from storage minecraft:mods game.38.time_sel[1]
scoreboard players set timer= 38mods 901

data modify storage minecraft:mods game.38.entity set from storage minecraft:mods game.38.entity_locked
execute if entity @a[tag=ingame,scores={38cat=1}] run data modify storage minecraft:mods game.38.entity[1] set from storage minecraft:mods game.38.entity_not_sel[1]
execute if entity @a[tag=ingame,scores={38fox=1}] run data modify storage minecraft:mods game.38.entity[2] set from storage minecraft:mods game.38.entity_not_sel[2]
data modify storage minecraft:mods game.38.entity[0] set from storage minecraft:mods game.38.entity_sel[0]
scoreboard players set entity= 38mods 1

# Force change mods
scoreboard players set timer= 38mods 601
scoreboard players set entity= 38mods 3


# Cba to run this in the world
scoreboard players set chance= 38cat -1


function games:38/start_play

# These tellraws explain the game, these will only display if you are playing with tutorials off.
tellraw @a[team=blue] {"nbt":"colors.blue","storage":"minecraft:config","interpret":true,"extra":[{"translate":"game.Shutterpup"}],"source":"storage","type":"nbt"}
tellraw @a[team=red] {"nbt":"colors.red","storage":"minecraft:config","interpret":true,"extra":[{"translate":"game.Shutterpup"}],"source":"storage","type":"nbt"}
tellraw @a[team=green] {"nbt":"colors.green","storage":"minecraft:config","interpret":true,"extra":[{"translate":"game.Shutterpup"}],"source":"storage","type":"nbt"}
tellraw @a[team=orange] {"nbt":"colors.orange","storage":"minecraft:config","interpret":true,"extra":[{"translate":"game.Shutterpup"}],"source":"storage","type":"nbt"}

#   Author        =   @ T4Bl3rUs
#   Description   =   Sets up the game and selects the faces
#   Called By     =   

scoreboard players set endtime= 18scores -2
tag @a remove finished
function general:reset_tags
execute as @e[type=minecraft:magma_cube,x=19157,y=45,z=19154,distance=..100] at @s run tp @s ~ -10000 ~
effect give @a[tag=playing] minecraft:weakness infinite 255 true
scoreboard players reset @a coas

#Tps
tp @a[team=blue] 19164 40 19161
tp @a[team=red] 19164 40 19148
tp @a[team=green] 19151 40 19148
tp @a[team=orange] 19151 40 19161
tp @a[tag=playing,tag=!ingame] 19158.0 48 19155.0

# Set spectator limits
scoreboard players set rad= specOptions 45
scoreboard players set x= specOptions 19158
scoreboard players set z= specOptions 19155
scoreboard players set miny= specOptions 26
scoreboard players set maxy= specOptions 89
scoreboard players set enabled= specOptions 1

# Ding sound effect
execute as @a[tag=playing] at @s run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 3 0.7

# Gives all players saturation so they dont take hunger
effect give @a[tag=ingame] minecraft:saturation infinite 255 true

# schedule lecterns
#schedule function games:18/set_lecterns 2t

# Enable  triggers
#scoreboard players enable @a[tag=ingame] play
#scoreboard players enable @a[tag=ingame] practice

# Spawns the starting lecterns
#data modify storage minecraft:tutorials title set from storage minecraft:tutorials game.18.title
#data modify storage minecraft:tutorials desc set from storage minecraft:tutorials game.18.desc
#data modify storage minecraft:tutorials temp set from storage minecraft:tutorials game.18.video
#data modify storage minecraft:tutorials temp2 set from storage minecraft:tutorials game.18.video
#function general:tutorial/reset

scoreboard players set ingame= 18scores 0
scoreboard players set start= 18scores 0

team modify t.18b prefix {"translate":""}
team modify t.18r prefix {"translate":""}
team modify t.18g prefix {"translate":""}
team modify t.18o prefix {"translate":""}
team modify t.18b suffix {"translate":"game.FriendlyFaceOff.StillGoing","color":"yellow"}
team modify t.18r suffix {"translate":"game.FriendlyFaceOff.StillGoing","color":"yellow"}
team modify t.18g suffix {"translate":"game.FriendlyFaceOff.StillGoing","color":"yellow"}
team modify t.18o suffix {"translate":"game.FriendlyFaceOff.StillGoing","color":"yellow"}

#Starts the game
scoreboard players set global minigame 18

schedule function games:18/start_play 10t

# These tellraws explain the game, these will only display if you are playing with tutorials off.
tellraw @a[team=blue] {"nbt":"colors.blue","storage":"minecraft:config","interpret":true,"extra":[{"translate":"game.FriendlyFaceOff"}],"source":"storage","type":"nbt"}
tellraw @a[team=red] {"nbt":"colors.red","storage":"minecraft:config","interpret":true,"extra":[{"translate":"game.FriendlyFaceOff"}],"source":"storage","type":"nbt"}
tellraw @a[team=green] {"nbt":"colors.green","storage":"minecraft:config","interpret":true,"extra":[{"translate":"game.FriendlyFaceOff"}],"source":"storage","type":"nbt"}
tellraw @a[team=orange] {"nbt":"colors.orange","storage":"minecraft:config","interpret":true,"extra":[{"translate":"game.FriendlyFaceOff"}],"source":"storage","type":"nbt"}
tellraw @a[tag=playing,tag=!ingame] {"nbt":"colors.spectator","storage":"minecraft:config","interpret":true,"extra":[{"translate":"game.FriendlyFaceOff"}],"source":"storage","type":"nbt"}

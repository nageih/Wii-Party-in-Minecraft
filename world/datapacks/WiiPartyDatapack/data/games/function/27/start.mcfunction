#   Author        =   @ T4Bl3rUs
#   Description   =   Ran at the very start of the minigame
#   Called By     =   


# This shows that the game is in the starting phase
scoreboard players set ingame= 27scores 0

# Sets the global minigame score to the current minigame number, this is to ensure that the tick function is being run
scoreboard players set global minigame 27

# Set spectator limits
scoreboard players set rad= specOptions 25
scoreboard players set x= specOptions 26000
scoreboard players set z= specOptions 25988
scoreboard players set miny= specOptions 14
scoreboard players set maxy= specOptions 50
scoreboard players set enabled= specOptions 1

# Teleport all players to the minigame
#tp @a[tag=ingame] 26000 25.1 26000
tag @r[tag=ingame] add player1 
tag @r[tag=ingame,tag=!player1] add player2

# Ding sound effect
execute as @a[tag=playing] at @s run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 3 0.7

# Removes all players position tags, just for debugging purposes
schedule function general:reset_tags 1t

# Gives all players saturation so they dont take hunger
effect give @a[tag=ingame] minecraft:saturation infinite 255 true


schedule function games:27/set_lecterns 1t
schedule function games:27/start_play 1t

# Spawns the starting lecterns
# data modify storage minecraft:tutorials title set from storage minecraft:tutorials game.27.title
# data modify storage minecraft:tutorials desc set from storage minecraft:tutorials game.27.desc
# data modify storage minecraft:tutorials temp set from storage minecraft:tutorials game.27.video
# data modify storage minecraft:tutorials temp2 set from storage minecraft:tutorials game.27.video
# function general:tutorial/reset


data modify storage minecraft:mods game.27.theme set from storage minecraft:mods game.27.theme_locked
execute if entity @a[tag=ingame,scores={27theme2=1}] run data modify storage minecraft:mods game.27.theme[1] set from storage minecraft:mods game.27.theme_not_sel[1]
data modify storage minecraft:mods game.27.theme[0] set from storage minecraft:mods game.27.theme_sel[0]
scoreboard players set theme= 27mods 1
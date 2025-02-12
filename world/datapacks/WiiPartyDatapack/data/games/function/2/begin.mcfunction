#   Author        =   @ JevinLevin
#   Description   =   Ran once all the players have entered the arena, starts off the start animation
#   Called By     =   games:2/repeating


# Sets the ingame score to 2, which indicates that all players have entered the arena and the starting animation should start
scoreboard players set ingame 2scores 2
scoreboard players set time= 2scores 1200

# Summons the first zombie for the starting animation
summon minecraft:zombie 1998.0 13 2010 {Invulnerable:1b,PersistenceRequired:1b,NoAI:1b,Health:10000.0f,Rotation:[-90.0f,0.0f],Tags:["zombietag","startzombie"],Attributes:[{Name:"minecraft:generic.follow_range",Base:200.0d}]}

# Spawns poof particles at the zombie
particle minecraft:poof 1998 13 2010 0.6 0.6 0.6 0.0001 50 force

# Stops players from moving (mostly)
# Movement
effect give @a[tag=ingame] minecraft:slowness infinite 255 true
# Jumping
execute as @a[tag=ingame] run attribute @s minecraft:generic.jump_strength base set 0

# Stores the number of players in the alive= score
execute store result score alive= 2scores if entity @a[tag=ingame,tag=!dead]

# Summons armor stands on all the flower pots to block players who picking up flowers
summon minecraft:armor_stand 2001 11 2002 {NoGravity:1b,Invulnerable:1b,Invisible:1b,Silent:1b,Tags:["2flowerpot"]}
summon minecraft:armor_stand 2000 11 2003 {NoGravity:1b,Invulnerable:1b,Invisible:1b,Silent:1b,Tags:["2flowerpot"]}
summon minecraft:armor_stand 2002 11 2005 {NoGravity:1b,Invulnerable:1b,Invisible:1b,Silent:1b,Tags:["2flowerpot"]}

# Summons an invisible armor stand at each player, to teleport them to it during the animations so they cant move
execute at @a[tag=ingame] run summon minecraft:armor_stand ~ ~ ~ {Invisible:1b,Tags:["2freeze"],DisabledSlots:4144959,Silent:1b}

function games:2/play_intro
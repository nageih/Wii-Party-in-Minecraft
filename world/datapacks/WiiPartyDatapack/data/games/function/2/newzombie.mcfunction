#   Author        =   @ JevinLevin
#   Description   =   Spawns new zombie for each current zombie to be swapped with
#   Called By     =   games:2/agro


# Summons the new zombie, does it at Y 0 so that it isnt visible for a brief moment
summon minecraft:zombie ~ 0 ~ {PersistenceRequired:1b,Health:10000.0f,Rotation:[-90.0f,0.0f],Tags:["zombietag","newzombie","temp"],attributes:[{id:"minecraft:generic.follow_range",base:200.0d},{id:"minecraft:generic.movement_speed",base:0.28d}]}

# Sets the 2agro id of the new zombie to the same as the old zombie
scoreboard players operation @e[type=minecraft:zombie,tag=newzombie,tag=temp,limit=1] 2agro = @s 2agro

# Gives the new zombie invisibility
effect give @e[type=minecraft:zombie,tag=newzombie,tag=temp] minecraft:invisibility infinite 1 true

# Makes the new zombie join the 1zombie team so they can have no friendlyFire
team join 1zombie @e[type=minecraft:zombie,tag=newzombie,tag=temp]

# Removes the temp tag
tag @e[type=minecraft:zombie,tag=newzombie,tag=temp] remove temp
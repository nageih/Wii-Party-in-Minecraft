#   Author        =   @ JevinLevin
#   Description   =   Handles the start animation
#   Called By     =   games:2/repeating


# Adds 1 to the end= score which tracks how many ticks its been for the timer
scoreboard players add start= 2scores 1

# The gate states, run at 6 tick intervals and simulates the gate shutting
# At 16 ticks the gate shuts partially
execute if score start= 2scores matches 16 run function games:2/gates/2
# At 16 ticks it plays a pitched down chest close sound, which sounds like a gate closing
execute if score start= 2scores matches 16 run playsound minecraft:block.chest.close master @a 1989 11 2010 5 0.5
# At 22 ticks the gate shuts even more
execute if score start= 2scores matches 22 run function games:2/gates/3
# At 28 ticks the gate fully closes
execute if score start= 2scores matches 28 run function games:2/gates/4
# At 28 ticks it plays a pitched down blaze being hit, which kinda sounds like a clash sound which kinda sounds like a gate being closed
execute if score start= 2scores matches 28 run playsound minecraft:entity.blaze.hurt master @a 1989 11 2010 5 0.7

# Between 41 and 50 ticks it changes the `  s rotation to make it look like he's turning around
execute if score start= 2scores matches 41..50 as @e[type=minecraft:zombie,tag=startzombie] at @s run tp @s 1998.0 13 2010 ~18 ~

# When the zombie stops rotating it plays a spoopy sound
execute if score start= 2scores matches 50 run playsound minecraft:entity.wither.spawn master @a 1998 13 2010 0.5

# At 5 seconds it gets rid of the zombie, by spawning poof particles, playing a whoosh sound and teleporting it into the void
execute if score start= 2scores matches 100 at @e[type=minecraft:zombie,tag=startzombie] run particle minecraft:poof ~ ~ ~ 0.6 0.6 0.6 0.0001 50 force
execute if score start= 2scores matches 100 at @e[type=minecraft:zombie,tag=startzombie] run playsound minecraft:entity.illusioner.cast_spell master @a ~ ~ ~ 3 2
execute if score start= 2scores matches 100 run tp @e[type=minecraft:zombie,tag=startzombie] 0 -70 0

# Start
execute if score start= 2scores matches 90 run title @a[team=blue] title {"nbt":"colors.blue","storage":"minecraft:config","interpret":true,"extra":[{"translate":"generic.Start","bold":true}],"source":"storage","type":"nbt"}
execute if score start= 2scores matches 90 run title @a[team=red] title {"nbt":"colors.red","storage":"minecraft:config","interpret":true,"extra":[{"translate":"generic.Start","bold":true}],"source":"storage","type":"nbt"}
execute if score start= 2scores matches 90 run title @a[team=green] title {"nbt":"colors.green","storage":"minecraft:config","interpret":true,"extra":[{"translate":"generic.Start","bold":true}],"source":"storage","type":"nbt"}
execute if score start= 2scores matches 90 run title @a[team=orange] title {"nbt":"colors.orange","storage":"minecraft:config","interpret":true,"extra":[{"translate":"generic.Start","bold":true}],"source":"storage","type":"nbt"}
execute if score start= 2scores matches 90 run title @a[tag=playing,tag=!ingame] title {"nbt":"colors.spectator","storage":"minecraft:config","interpret":true,"extra":[{"translate":"generic.Start","bold":true}],"source":"storage","type":"nbt"}
execute if score start= 2scores matches 90 as @a[tag=playing] at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 3 1
execute if score start= 2scores matches 90 as @a[tag=playing] at @s run playsound ouo:start master @s ~ ~ ~ 3 1
execute if score start= 2scores matches 90 as @a[tag=playing] at @s run playsound music:zombie_tag voice @s


# At 90 ticks, it spawns the 3 starting zombies in different positioned, underground
execute if score start= 2scores matches 90 run summon minecraft:zombie 1995 10 2017.0 {PersistenceRequired:1b,Health:10000.0f,Rotation:[-90.0f,0.0f],Tags:["zombietag","default"],attributes:[{id:"minecraft:generic.follow_range",base:200.0d},{id:"minecraft:generic.movement_speed",base:0.28d}]}
execute if score start= 2scores matches 90 run summon minecraft:zombie 2000.5 9 2003.0 {PersistenceRequired:1b,Health:10000.0f,Rotation:[-90.0f,0.0f],Tags:["zombietag","default"],attributes:[{id:"minecraft:generic.follow_range",base:200.0d},{id:"minecraft:generic.movement_speed",base:0.28d}]}
execute if score start= 2scores matches 90 run summon minecraft:zombie 2005 11 2014 {PersistenceRequired:1b,Health:10000.0f,Rotation:[-90.0f,0.0f],Tags:["zombietag","default"],attributes:[{id:"minecraft:generic.follow_range",base:200.0d},{id:"minecraft:generic.movement_speed",base:0.28d}]}
# Gives all the zombies a unique scoreboard value, used for the system to refresh the zombie targeting
execute if score start= 2scores matches 90 as @e[type=minecraft:zombie,tag=zombietag] run function games:2/give_agro
# Removes the ID tag given to them
execute if score start= 2scores matches 90 run tag @e[type=minecraft:zombie,tag=zombietag] remove id
# All the recently joined zombies will then join the 1zombie team, so that they wont attack other player zombies 
execute if score start= 2scores matches 90 run team join 1zombie @e[type=minecraft:zombie,tag=zombietag,tag=default]


# Between 90 and 111 ticks it will teleport the recently spawned zombie up out of the ground
execute if score start= 2scores matches 90..111 as @e[type=minecraft:zombie,tag=default] at @s run tp @s ~ ~0.1 ~

# At 90 ticks it clears the slowness and jump boost from the players so they can move again
execute if score start= 2scores matches 90..110 run effect clear @a[tag=ingame] minecraft:slowness
execute if score start= 2scores matches 90 run execute as @a[tag=ingame] run attribute @s minecraft:generic.jump_strength base set 0.41999998688697815
execute if score start= 2scores matches 90 run kill @e[type=minecraft:armor_stand,tag=2freeze]

# Sets the ingame score to 3 to show that the gameplay has started
execute if score start= 2scores matches 111 run scoreboard players set ingame 2scores 3

# Sets the start= score to 0 so that this function can be run properly the next time
#execute if score start= 2scores matches 111 run scoreboard players set start= 2scores 0


### NO LONGER NEEDED WITH JUMP STRENGTH SET TO 0
# Teleports the players to the nearest area effect cloud so they cant move during the animations
#execute if score start= 2scores matches 0..90 as @a at @s at @e[type=minecraft:armor_stand,tag=2freeze,sort=nearest,limit=1] run tp @s ~ ~ ~
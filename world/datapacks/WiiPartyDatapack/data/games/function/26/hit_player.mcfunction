#   Author        =   @ JevinLevin
#   Description   =   Ran as a player when they get hit. Makes them fall to the ground and stop moving
#   Called By     =   games:26/player


# Tps the player to the ycoord they are on
#execute align y run tp @s @s
# Then it tps them to the ground
#execute at @s run function games:26/force_ground

# Sets the score that keeps the player knocked for 40 seconds
scoreboard players set @s 26knocked 40

# Gives a bunch of effects to immobilise the player
    # Stops them from moving
    #effect give @s slowness infinite 255 true
    # Stops them from hitting
effect give @s minecraft:weakness infinite 255 true
    # Stops their attack animation
effect give @s minecraft:haste infinite 125 true
    # Stops them from jumping
attribute @s minecraft:generic.jump_strength base set 0

#effect give @s minecraft:jump_boost 1000000 150 true
    # Stops them from jumping
    #effect give @s blindness infinite 255 true

# Summons a boat above the player to force them to lie down
#execute at @s run summon boat ~ ~.75 ~ {Type:"acacia",Tags:["26knocked"],Passengers:[{id:"minecraft:area_effect_cloud",Duration:40},{id:"minecraft:area_effect_cloud",Duration:40}],Invulnerable:1b}

# Summons a bunch of slimes so that any enemies near the player are pushed away
#summon slime ~ ~-10 ~ {Size:2,NoAI:1b,Invulnerable:1b,Tags:["push","tempPush"],ActiveEffects:[{Id:14b,Amplifier:1b,Duration:1000,ShowParticles:0b}],Silent:1b}
#summon slime ~ ~-10 ~ {Size:2,NoAI:1b,Invulnerable:1b,Tags:["push","tempPush"],ActiveEffects:[{Id:14b,Amplifier:1b,Duration:1000,ShowParticles:0b}],Silent:1b}
#summon slime ~ ~-10 ~ {Size:2,NoAI:1b,Invulnerable:1b,Tags:["push","tempPush"],ActiveEffects:[{Id:14b,Amplifier:1b,Duration:1000,ShowParticles:0b}],Silent:1b}
#summon slime ~ ~-10 ~ {Size:2,NoAI:1b,Invulnerable:1b,Tags:["push","tempPush"],ActiveEffects:[{Id:14b,Amplifier:1b,Duration:1000,ShowParticles:0b}],Silent:1b}
#summon slime ~ ~-10 ~ {Size:2,NoAI:1b,Invulnerable:1b,Tags:["push","tempPush"],ActiveEffects:[{Id:14b,Amplifier:1b,Duration:1000,ShowParticles:0b}],Silent:1b}

# Makes the slimes join the same team as the knocked player
#execute if entity @s[team=blue] as @e[tag=tempPush] run team join blue
#execute if entity @s[team=red] as @e[tag=tempPush] run team join red
#execute if entity @s[team=green] as @e[tag=tempPush] run team join green
#execute if entity @s[team=orange] as @e[tag=tempPush] run team join orange

# Removes the slimes' temp tag
#tag @e[tag=tempPush] remove tempPush

execute align xz positioned ~.5 ~ ~.5 run tp @s ~ ~ ~

tag @s add tempImmune
execute at @s align xz as @a[dx=0,dy=1,dz=0,tag=!tempImmune] align xz positioned ~.5 ~ ~.5 run function games:26/too_close
tag @s remove tempImmune

setblock ~ 20 ~ minecraft:glass
setblock ~ 20 ~ minecraft:barrier

summon minecraft:slime ~ ~-10 ~ {Size:3,NoAI:1b,Invulnerable:1b,Tags:["hitBlock","tempBlock"],Silent:1b,active_effects:[{id:"minecraft:invisibility",amplifier:1b,duration:1000000,show_particles:0b}]}
tp @e[tag=tempBlock] ~ 18 ~
team join noCollision @e[tag=tempBlock]
tag @e[tag=tempBlock] remove tempBlock


# Summons an armor stand at the players location so they can be teleported to it to stop them from moving
execute at @s run summon minecraft:armor_stand ~ ~ ~ {Invulnerable:1b,Invisible:1b,Tags:["knocked","tempKnocked"],Silent:1b}
# Sets that armor stands id to be the same as the player
scoreboard players operation @e[tag=tempKnocked] id = @s id
# Removes the armor stands temp tag
tag @e[tag=tempKnocked] remove tempKnocked

# Teleports the player for some reason? (too scared to remove)
#execute at @s run tp @e[tag=tempPush] ~ ~ ~

playsound minecraft:entity.puffer_fish.sting master @a ~ ~ ~ 1 0.75
#   Author        =   @ JevinLevin
#   Description   =   Summons a slime to be a mole
#   Called By     =   games:26/new_mole


# Generates random number from 1 - 10
execute store result score random= 26scores run random value 1..11

# 1 in 5 chance of a golden mole
# If it lands between 1 and 8 then it spawns a regular mole
execute if score random= 26scores matches 1..8 run summon minecraft:slime ~ ~-10 ~ {NoAI:1b,Silent:1b,Size:3,Tags:["mole","tempslime"],Health:10000.0f,active_effects:[{id:"minecraft:invisibility",amplifier:1b,duration:1000,show_particles:0b}]}
# If it lands on 9 or 10 then it summons a golden mole instead
execute if score random= 26scores matches 9..10 run summon minecraft:slime ~ ~-10 ~ {NoAI:1b,Silent:1b,Size:3,Tags:["mole","golden","tempslime"],Health:10000.0f,active_effects:[{id:"minecraft:invisibility",amplifier:1b,duration:1000,show_particles:0b}]}

execute if score random= 26scores matches 11 run summon minecraft:slime ~ ~-10 ~ {NoAI:1b,Silent:1b,Size:3,Tags:["mole","sus","tempslime"],Health:10000.0f,active_effects:[{id:"minecraft:invisibility",amplifier:1b,duration:1000,show_particles:0b}]}

execute as @e[tag=tempslime] run tp @s ~ ~-1 ~

tag @e[tag=tempslime] remove tempslime

# Summons armor stand with the mole model
# Normal
execute at @e[type=minecraft:slime,tag=mole,sort=nearest,limit=1] if score random= 26scores matches 1..8 run summon minecraft:armor_stand ~ ~ ~ {Tags:["mole"],NoGravity:1b,Marker:1b,Silent:1b,Invulnerable:1b,Invisible:1b,DisabledSlots:4144959}
# Golden
execute at @e[type=minecraft:slime,tag=mole,sort=nearest,limit=1] if score random= 26scores matches 9..10 run summon minecraft:armor_stand ~ ~ ~ {Tags:["mole","golden"],NoGravity:1b,Marker:1b,Silent:1b,Invulnerable:1b,Invisible:1b,DisabledSlots:4144959}

execute at @e[type=minecraft:slime,tag=mole,sort=nearest,limit=1] if score random= 26scores matches 11 run summon minecraft:armor_stand ~ ~ ~ {Tags:["mole","sus"],NoGravity:1b,Marker:1b,Silent:1b,Invulnerable:1b,Invisible:1b,DisabledSlots:4144959}

# Gives the AEC the moled tag to show that it is currently occupied
tag @s add moled
#   Author        =   @ JevinLevin
#   Description   =   Main tick function for the minigame
#   Called By     =   games:repeat

scoreboard players add time= 2scores 1

# Runs the start function once all players are out of the starting box and inside the arena
execute if score ingame 2scores matches 1 unless entity @a[x=1972,y=11,z=1995,dx=17,dy=3,dz=50,tag=ingame] run function games:2/begin

# Runs the startanimation function every tick while the ingame score is set to 2
execute if score ingame 2scores matches 2 run function games:2/startanimation
execute if score ingame 2scores matches 3 run scoreboard players add start= 2scores 1

# During the game if there is only 1 player alive then run the endstart function
execute store result score alive= 2scores if entity @a[tag=ingame,tag=!dead]
execute if score ingame 2scores matches 3 if score alive= 2scores matches 0..1 run function games:2/endstart

# Runs the endanimation function every tick while the ingame score is set to 4
execute if score ingame 2scores matches 4 run function games:2/endanimation

# Return to arena if escape
execute if score ingame 2scores matches 3 as @a[tag=ingame,x=1979,y=11,z=2003,dx=9,dy=5,dz=12] positioned 1990 11 2010 run playsound entity.player.teleport master @s
execute if score ingame 2scores matches 3 as @a[tag=ingame,x=1979,y=11,z=2003,dx=9,dy=5,dz=12] at @s run tp @s 1990 11 2010 -90 0

# Advancement
execute as @a[tag=dead] at @s if entity @a[distance=..1.4,tag=ingame,tag=!dead] run scoreboard players add @s advancements 1

# Runs as all player zombies, if they get within 1.4 block of a non zombie player it runs the hit function, turning them into a zombie
execute if score ingame 2scores matches 3 at @a[tag=dead] as @a[distance=..1.4,tag=ingame,tag=!dead] run function games:2/ifhit

# Constantly gives all players instant health during the game so that they cant die
effect give @a[tag=ingame] minecraft:instant_health infinite 5 true

# In the ending animation, the time is set to morning which causes the zombies to burn. This command will stop that
execute if score ingame 2scores matches 4 as @e[type=minecraft:zombie,tag=zombietag] run data merge entity @s {Fire:0s}

# Runs a function that controls the players hunger to make sure they stop sprinting when they turn into a zombie
execute if score ingame 2scores matches 1..3 run function games:2/hunger

execute as @e[type=minecraft:zombie,tag=zombietag] store result entity @s attributes[{id:"minecraft:generic.movement_speed"}].base double 0.000191666667 run scoreboard players get time= 2scores

title @a[tag=ingame,tag=dead,tag=blue] actionbar {"translate":"game.ZombieTag.Tip","color":"#0088ff"}
title @a[tag=ingame,tag=dead,tag=red] actionbar {"translate":"game.ZombieTag.Tip","color":"red"}
title @a[tag=ingame,tag=dead,tag=green] actionbar {"translate":"game.ZombieTag.Tip","color":"green"}
title @a[tag=ingame,tag=dead,tag=orange] actionbar {"translate":"game.ZombieTag.Tip","color":"gold"}

## Changes the zombies agro to the closest player
## Increments a score timer to know when to summon a new snowball
#execute if score ingame 2scores matches 3 run scoreboard players add agro= 2scores 1
## Summons a snowball above the zombie so that it hits it
#execute if score agro= 2scores matches 50 as @e[type=zombie,tag=zombietag] at @s run summon snowball ~ ~2.3 ~ {Tags:["2agro"]}
## Sets the owner NBT of the newly summoned snowball to the closest player
#execute if score agro= 2scores matches 50 as @e[type=snowball,tag=2agro] at @s run data modify entity @s Owner set from entity @a[limit=1,sort=nearest] UUID
## Once the score reaches the limit, sets it back down to 0 to repeat the process
#execute if score agro= 2scores matches 50 run scoreboard players set agro= 2scores 0
#
#execute as @e[type=zombie,tag=zombietag] run data merge entity @s {HurtTime:20s}

# Changes the zombies agro to the closest player
execute if score ingame 2scores matches 3 as @e[type=minecraft:zombie,tag=zombietag,tag=!newzombie] at @s run function games:2/agro

function general:spectator/main
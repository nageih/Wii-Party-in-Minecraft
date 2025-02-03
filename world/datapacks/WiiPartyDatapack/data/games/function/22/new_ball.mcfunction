# Summons the ball with the motion to yeet it towards the players spot for them to punch it into the goal
summon minecraft:slime 22921 3.1 22985 {Silent:1b,Tags:["ball","temp"],Size:2,attributes:[{id:"minecraft:generic.knockback_resistance",base:1},{id:"minecraft:generic.max_health",base:1024},{id:"minecraft:generic.scale",base:1.5}],active_effects:[{id:"minecraft:invisibility",amplifier:1,duration:-1,show_particles:0b}]}
execute as @e[type=slime,tag=ball] at @s run tp @s ~ ~10 ~

execute at @e[type=slime,tag=temp,tag=ball] run summon armor_stand ~ ~ ~ {Invisible:1b,Tags:["balldisplay"],Silent:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"minecraft:carrot_on_a_stick",count:1,components:{"minecraft:custom_model_data":22001}}]}
execute as @e[type=armor_stand,tag=balldisplay] at @s run scoreboard players operation @s 22size = @e[type=minecraft:armor_stand,dx=0,tag=ball,limit=1] 22size
execute as @e[type=armor_stand,tag=balldisplay] run function games:22/scale_ball

schedule function games:22/apply_motion 1t

# Gives the slime weakness so that it doesnt try to attack the player
effect give @e[type=minecraft:slime,tag=temp] minecraft:weakness infinite 255 true

# Plays a shoot sound at the ball to alert players
execute at @e[type=minecraft:slime,tag=temp,tag=ball] run playsound minecraft:entity.illusioner.cast_spell master @a ~ ~ ~ 10 2

# Grabs the score from the armor stand that is given to them in the random_size function and stores it in the Size nbt of the slime
execute positioned 22921 13.1 22985 as @e[type=minecraft:armor_stand,dx=0,tag=ball] at @s store result entity @e[type=minecraft:slime,tag=temp,tag=ball,limit=1] Size double 1 run scoreboard players get @s 22size

# Scale slime based on size
execute positioned 22921 13.1 22985 if score @e[type=armor_stand,dx=0,tag=ball,limit=1] 22size matches 0 run data merge entity @e[type=minecraft:slime,tag=temp,tag=ball,limit=1] {attributes:[{id:"minecraft:generic.knockback_resistance",base:1},{id:"minecraft:generic.max_health",base:1024},{id:"minecraft:generic.scale",base:2}]}
execute positioned 22921 13.1 22985 if score @e[type=armor_stand,dx=0,tag=ball,limit=1] 22size matches 1 run data merge entity @e[type=minecraft:slime,tag=temp,tag=ball,limit=1] {attributes:[{id:"minecraft:generic.knockback_resistance",base:1},{id:"minecraft:generic.max_health",base:1024},{id:"minecraft:generic.scale",base:2}]}
execute positioned 22921 13.1 22985 if score @e[type=armor_stand,dx=0,tag=ball,limit=1] 22size matches 2 run data merge entity @e[type=minecraft:slime,tag=temp,tag=ball,limit=1] {attributes:[{id:"minecraft:generic.knockback_resistance",base:1},{id:"minecraft:generic.max_health",base:1024},{id:"minecraft:generic.scale",base:1.5}]}
execute positioned 22921 13.1 22985 if score @e[type=armor_stand,dx=0,tag=ball,limit=1] 22size matches 3 run data merge entity @e[type=minecraft:slime,tag=temp,tag=ball,limit=1] {attributes:[{id:"minecraft:generic.knockback_resistance",base:1},{id:"minecraft:generic.max_health",base:1024},{id:"minecraft:generic.scale",base:1.25}]}
execute positioned 22921 13.1 22985 if score @e[type=armor_stand,dx=0,tag=ball,limit=1] 22size matches 4 run data merge entity @e[type=minecraft:slime,tag=temp,tag=ball,limit=1] {attributes:[{id:"minecraft:generic.knockback_resistance",base:1},{id:"minecraft:generic.max_health",base:1024},{id:"minecraft:generic.scale",base:1}]}

# Kills the armor stand that was representing the ball since it has now been replaced with the slime
execute positioned 22921 13.1 22985 run kill @e[type=minecraft:armor_stand,dx=0,tag=ball]


# Stores the position of the shootfaced area effect cloud into the motion of the slime, to simulate the ball being kicked
data modify entity @s Motion set from entity @e[type=minecraft:area_effect_cloud,tag=temp,limit=1] Pos

# Plays a kick sound effect at the ball
execute at @s run playsound minecraft:entity.zombie.attack_wooden_door master @a ~ ~ ~ 0.35 1.5

# Gives the ball the hit_ball tag, used to check if the ball bounces and if it goes out of bounds
tag @s add hit_ball

# Gives the ball the resistance effect to stop it taking damage
# I don't think this actually does anything, but im too scared to remove just incase it breaks something
effect give @s minecraft:resistance infinite 255 true
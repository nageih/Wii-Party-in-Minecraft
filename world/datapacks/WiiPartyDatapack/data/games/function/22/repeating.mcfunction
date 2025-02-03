# Checks for player with the hit_ball advancement (which is given if a player hits a slime with the 'ball' tag) and if so runs the hit_ball function
execute as @a[tag=ingame,advancements={games:22/hitball=true}] at @s run function games:22/hit_ball
# Revokes that advancement from everyone so that it doesnt repeat the next tick
advancement revoke @a only games:22/hitball

execute as @e[type=minecraft:slime,tag=ball] run tp @e[type=armor_stand,tag=balldisplay] @s
execute at @e[type=minecraft:armor_stand,tag=balldisplay] run particle minecraft:flame ~ ~ ~ 0 0 0 0 1

# If a ball hits the ground, it runs the bounce as function as that entity
execute as @e[type=minecraft:slime,tag=ball,tag=hit_ball,nbt={OnGround:1b}] at @s run function games:22/bounce

# If the ball goes inside the goal it runs the score function as that entity
execute as @e[type=minecraft:slime,tag=ball] at @s if entity @s[x=22912,y=13,z=23008,dx=-4,dy=4,dz=-16] run function games:22/score

# All these check if the player misses the goal or fails their shot
    # Increments the balls 22shootTimer score by 1 every tick after the ball is hit, used to calculate how long since its been shot and if the ball missed
execute as @e[type=minecraft:slime,tag=ball,tag=hit_ball] run scoreboard players add @s 22shootTimer 1
    # If the ball doesnt fail or go inside the goal for 4 seconds after its hit, it assumes the player missed and runs the fail_hit function as the ball
execute as @e[type=minecraft:slime,tag=ball,tag=hit_ball,scores={22shootTimer=80..}] at @s run function games:22/fail_hit
    # If the ball goes out of bounds, into an area where it is impossible to go inside the goal it immediately assumes they missed and runs the fail_hit function as the ball
execute as @e[type=minecraft:slime,tag=ball,tag=hit_ball] at @s unless entity @s[x=22907,y=13,z=22990,dx=24,dy=30,dz=20] run function games:22/fail_hit
    # If the ball bounces 3 times it will assume the player has missed and runs the fail_hit function as the ball
execute as @e[type=minecraft:slime,tag=ball,tag=hit_ball,scores={22bounce=3..}] at @s run function games:22/fail_hit
    # If the ball hasn't yet been hit (basically as it is summoned) the 22ballTimer score will increment by 1 every tick. This is to check if the player misses the shot
execute as @e[type=minecraft:slime,tag=ball,tag=!hit_ball] run scoreboard players add @s 22ballTimer 1
    # If the ball hasn't been hit for 1 second, the game immediately assumes the player missed the ball and runs the fail_hit function as the ball
execute as @e[type=minecraft:slime,tag=ball,tag=!hit_ball,scores={22ballTimer=20..}] at @s run function games:22/fail_hit

# Constantly gives the slime the instant_health effect to make sure it doesnt die. Not sure if this is actually necessary but i dont want to remove it just incase
effect give @e[type=minecraft:slime,tag=ball] minecraft:instant_health 5 10 true

# Teleports all players who aren't taking the shot out of the shooting area if they are inside it
execute if score ingame 22scores matches 1.. as @a[tag=ingame,tag=!22turn] at @s if entity @s[x=22933,y=13,z=22953,dx=-40,dy=10,dz=100] run tp @s 22934 ~ ~

execute as @s[team=blue] as @e[type=minecraft:item_display,tag=4cart,tag=blue] run tag @s add tempCart
execute as @s[team=red] as @e[type=minecraft:item_display,tag=4cart,tag=red] run tag @s add tempCart
execute as @s[team=green] as @e[type=minecraft:item_display,tag=4cart,tag=green] run tag @s add tempCart
execute as @s[team=orange] as @e[type=minecraft:item_display,tag=4cart,tag=orange] run tag @s add tempCart

tag @s add 4super
tag @n[tag=tempCart] add 4super
data modify entity @n[tag=tempCart] item.components.minecraft:custom_model_data set value 4006


tag @e remove tempCart

# Plays a levelup sound at the player
playsound minecraft:entity.player.levelup master @a ~ ~ ~ 3 1.5

# Displays end rod particles at the player
particle minecraft:end_rod ~ ~1.5 ~ 0.75 0.75 0.75 0.001 50 force

# Sets the players 4powerup score to 80, used to time how long they have the powerup effects for
scoreboard players set @s 4powerup 80
scoreboard players set @s[scores={4shootCooldown=5..}] 4shootCooldown 5

# Kills the nearest powerup armor stand
kill @e[type=minecraft:armor_stand,tag=4powerup,sort=nearest,limit=1]
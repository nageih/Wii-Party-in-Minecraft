scoreboard players remove @a[tag=ingame] 23turndelay 1
execute if score choosing= 23scores matches 1 as @a[tag=ingame,tag=!dead] at @s unless score @s 23turndelay matches 1.. run function games:23/get_direction
execute if score choosing= 23scores matches 1 as @a[tag=ingame,tag=!dead] at @s run function games:23/direction_indicator
# End choosing phase if coming up to ramp
execute if score choosing= 23scores matches 1 at @e[type=minecart,tag=23cart,tag=23first] if block ~-4 ~-2 ~ spruce_planks run function games:23/stop_choose
# Start choosing phase again once last cart reachses end
execute if score choosing= 23scores matches 0 at @e[type=minecart,tag=23cart,tag=23last] if block ~ ~-2 ~ jungle_planks run function games:23/end_phase


# If they reach the end
execute if score ingame 23scores matches 1.. at @e[type=minecart,tag=23] if block ~ ~-2 ~ cherry_planks run function games:23/endgame

# Tilt back cart after turning
execute as @e[type=minecart,tag=23cart] at @s if block ~ ~-2 ~ acacia_planks as @e[type=item_display,tag=23cart,limit=1,sort=nearest] run function games:23/tilt_reset

execute as @e[type=minecart,tag=23cart] at @s run function games:23/move_cart

execute as @e[type=minecart,tag=23cart] at @s if entity @e[type=marker,tag=23crash,distance=..1] run function games:23/crash

# Move carts left and right if they need
execute as @e[type=minecart,tag=23cart,tag=23moveleft] at @s run function games:23/move_side {"x":"."}
execute as @e[type=minecart,tag=23cart,tag=23moveright] at @s run function games:23/move_side {"x":"-."}


# KILL IF TOO MANY RAILS
execute store result score rails= 23scores if entity @e[type=glow_item_frame,tag=23rail]
execute if score rails= 23scores matches 1000.. run function games:23/set_rails
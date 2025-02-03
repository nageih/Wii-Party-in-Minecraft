#   Author        =   @ JevinLevin
#   Description   =   Runs the tick functions for all the special function
#   Called By     =   board:repeating


# Runs the boost tick function as the turtle getting teleported
    # Regular boosts
    execute if score boostTimer= tiles matches 1.. as @e[type=turtle,tag=boostStand] at @s run function board:tiles/boost/main
    # Yeeters
    execute if score yeetTimer= tiles matches 1.. as @e[type=turtle,tag=boostStand] at @s run function board:tiles/boost/main_yeet

# Kills the boat once the area effect cloud runs out
execute unless entity @e[type=area_effect_cloud,tag=boostBoat] if entity @e[type=boat,tag=boostBoat] run kill @e[type=boat,tag=boostBoat]

# Runs the main ufo function every tick
execute if score ufo= tiles matches 1.. run function board:tiles/ufo/main

# Runs the main tornado function every tick
execute if score tornado= tiles matches 1.. run function board:tiles/tornado/main

# Runs the main dino function every tick
execute if score dino= tiles matches 1.. run function board:tiles/dino/main

# Runs the main volcano function every tick
execute if score volcano= tiles matches 1.. run function board:tiles/volcano/main
# Runs the volcano back boost
execute if score volcanoBoostTimer= tiles matches 0.. run function board:tiles/volcano/landed/main

# Runs the main skull function every tick
execute if score skull= tiles matches 1.. as @e[type=area_effect_cloud,tag=skullStart] at @s run function board:tiles/skull/main

execute if score shout= tiles matches 1.. as @e[type=area_effect_cloud,tag=shoutStart] at @s run function board:tiles/shout_space/main

# Runs the main ropeswing function every tick
execute if score ropeswing= tiles matches 1.. run function board:tiles/ropeswing/main
execute if score ribcage= tiles matches 1.. run function board:tiles/ribcage/main
execute if score jump= tiles matches 1.. run function board:tiles/jump/main
execute if score final= tiles matches 1.. run function board:tiles/final/main


# Make elder guardians passive
execute at @e[type=elder_guardian] as @a[gamemode=adventure,limit=1,sort=nearest] if entity @s[team=blue] run team join blue @e[type=elder_guardian,limit=1,sort=nearest]
execute at @e[type=elder_guardian] as @a[gamemode=adventure,limit=1,sort=nearest] if entity @s[team=red] run team join red @e[type=elder_guardian,limit=1,sort=nearest]
execute at @e[type=elder_guardian] as @a[gamemode=adventure,limit=1,sort=nearest] if entity @s[team=green] run team join green @e[type=elder_guardian,limit=1,sort=nearest]
execute at @e[type=elder_guardian] as @a[gamemode=adventure,limit=1,sort=nearest] if entity @s[team=orange] run team join orange @e[type=elder_guardian,limit=1,sort=nearest]

# PLACE DRAONG WALL BARRIERS
execute if score dragonwall= tiles matches 1 run fill -231 14 -15 -231 15 -15 barrier
execute if score dragonwall= tiles matches 1 run fill -230 14 -16 -230 15 -16 barrier
execute if score dragonwall= tiles matches 1 run fill -229 15 -17 -229 15 -17 barrier
execute if score dragonwall= tiles matches 1 run fill -228 14 -18 -228 15 -18 barrier
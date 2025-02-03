#   Author        =   @ JevinLevin
#   Description   =   Causes the barrels to start dropping
#   Called By     =   games:3/start_animation


# Sets the ingame score to 3 to show that the barrels start dropping
scoreboard players set ingame 3scores 3

# Resets the start= score as the start animation is over
scoreboard players reset start= 3scores

# Removes the barrel blocks so they can be replaced with falling blocks
fill 2994 34 3003 3006 34 2982 minecraft:air replace minecraft:barrel

# Summons a new falling block that looks like a barrel at the top of all the chains
execute at @e[type=minecraft:area_effect_cloud,tag=2chain,tag=blue] run summon minecraft:falling_block ~ ~ ~ {BlockState:{Name:"minecraft:barrel",Properties:{facing:"up"}},Time:-2147483648,Tags:["barrel","blue"],TileEntityData:{Lock:"no"}}
execute at @e[type=minecraft:area_effect_cloud,tag=2chain,tag=red] run summon minecraft:falling_block ~ ~ ~ {BlockState:{Name:"minecraft:barrel",Properties:{facing:"up"}},Time:-2147483648,Tags:["barrel","red"],TileEntityData:{Lock:"no"}}
execute at @e[type=minecraft:area_effect_cloud,tag=2chain,tag=green] run summon minecraft:falling_block ~ ~ ~ {BlockState:{Name:"minecraft:barrel",Properties:{facing:"up"}},Time:-2147483648,Tags:["barrel","green"],TileEntityData:{Lock:"no"}}
execute at @e[type=minecraft:area_effect_cloud,tag=2chain,tag=orange] run summon minecraft:falling_block ~ ~ ~ {BlockState:{Name:"minecraft:barrel",Properties:{facing:"up"}},Time:-2147483648,Tags:["barrel","orange"],TileEntityData:{Lock:"no"}}

# If the barrel is on the opposite side to the player, it gives them the far tag. Used for sound playing
execute as @e[type=minecraft:falling_block,tag=barrel] at @s if entity @s[z=3003,dz=0] run tag @s add far

# Teleports the falling block to the same y level (34), for some reason this smoothens out the falling animation
execute as @e[type=minecraft:falling_block,tag=barrel] at @s run tp @s ~ 34 ~
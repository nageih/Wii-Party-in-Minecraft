#   Author        =   @ JevinLevin
#   Description   =   Resets the minigame if ran at any point
#   Called By     =   N/A


# Resets the global minigame score after the game ends
scoreboard players reset global minigame

# Resets scores
scoreboard players reset random= 26scores
scoreboard players reset @a 26points
scoreboard players reset ingame= 26scores
scoreboard players reset timer= 26scores
scoreboard players reset practice= 26scores
scoreboard players reset end= 26scores

# Removes all tags
tag @a remove invalid
tag @a remove recover

# Kills all entities
kill @e[type=minecraft:area_effect_cloud,tag=hole]
tp @e[type=minecraft:slime,tag=mole] ~ -70 ~
tp @e[type=minecraft:armor_stand,tag=mole] ~ -70 ~
tp @e[type=minecraft:slime,tag=hitBlock] ~ -70 ~
kill @e[tag=mole]
kill @e[type=minecraft:armor_stand,tag=knocked]
kill @e[type=minecraft:text_display,tag=points]
kill @e[tag=26boat]

# Puts all players who have died back into adventure
gamemode adventure @a[tag=ingame]

# Hides the scoreboard
scoreboard objectives setdisplay sidebar

# Sets all players title time back to the default
title @a[tag=playing] times 10 20 10

# Clears the subtitle incase one is already being displayed
title @a[tag=playing] title " "
title @a[tag=playing] subtitle " "

# Clears all scheduled functions
schedule clear games:26/new_mole
schedule clear games:26/end
schedule clear games:26/start_title
schedule clear games:26/remove_lecterns
schedule clear games:26/begin


# Stops players from seeing the bossbar
bossbar set minecraft:26blue visible false
bossbar set minecraft:26red visible false
bossbar set minecraft:26green visible false
bossbar set minecraft:26orange visible false

# Stops the players from being able to collide with mobs again
team modify blue collisionRule never
team modify red collisionRule never
team modify green collisionRule never
team modify orange collisionRule never


# Clears hammer 
clear @a[tag=ingame] minecraft:carrot_on_a_stick[minecraft:custom_data={hammer:1b}]

# Removes all fake stair item frames
kill @e[type=minecraft:item_frame,tag=26fakeStair]

# Removes the tutorial lecterns
function games:26/remove_lecterns

function general:practice/end

# Clears effects
effect clear @s minecraft:slowness
effect clear @s minecraft:weakness
effect clear @s minecraft:jump_boost
attribute @s minecraft:generic.jump_strength base set 0.41999998688697815
effect clear @s minecraft:haste
effect clear @s minecraft:blindness
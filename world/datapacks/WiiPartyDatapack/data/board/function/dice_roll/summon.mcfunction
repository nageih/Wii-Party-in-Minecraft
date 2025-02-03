#   Author        =   @ JevinLevin
#   Description   =   Spawns two new armor stands that represent the dice. Ran once the player right clicks with a dice
#   Called By     =   board:dice_roll/main_player


# Gives the dice the tempThrow tag
tag @s add tempThrow
# Shootfaces an area effect cloud forward in the direction the player is facing from the position 0,0,0. Used to give the armor stand motion based on that position
    # If the player isnt looking up
execute unless score ropeswing= tiles matches 1.. positioned 0.0 0.0 0.0 run summon minecraft:area_effect_cloud ^ ^ ^0.3 {Age:-2147483648,Duration:1,WaitTime:-2147483648,Tags:["temp"]}
    # If the player is looking up
execute unless score ropeswing= tiles matches 1.. if score @s playerRotY matches 0.. positioned 0.0 1.0 0.0 run summon minecraft:area_effect_cloud ^ ^ ^0.3 {Age:-2147483648,Duration:1,WaitTime:-2147483648,Tags:["temp"]}
    # If the player isnt looking up
execute if score ropeswing= tiles matches 1.. positioned 0.0 0.0 0.0 run summon minecraft:area_effect_cloud ^ ^ ^0.6 {Age:-2147483648,Duration:1,WaitTime:-2147483648,Tags:["temp"]}
    # If the player is looking up
execute if score ropeswing= tiles matches 1.. if score @s playerRotY matches 0.. positioned 0.0 1.0 0.0 run summon minecraft:area_effect_cloud ^ ^ ^0.6 {Age:-2147483648,Duration:1,WaitTime:-2147483648,Tags:["temp"]}

# Summons 2 armor stands. One used for the motion of the dice, the other one used to display the dice model on it.
# Originally this was so that i could adjust the position of the dice model without affecting the armor stands motion.
# However im pretty sure this isnt necessary anymore since i changed the system but im too scared to change it (would have to recode a bunch of shit)
execute positioned ^ ^ ^.5 run summon minecraft:armor_stand ~ ~-.5 ~ {Tags:["throw","temp","bounce","diceroll"],Invisible:1b,Invulnerable:1b,Silent:1b,Small:1b,NoBasePlate:0b,DisabledSlots:4144959}
execute positioned ^ ^ ^.5 run summon minecraft:armor_stand ~ ~-.5 ~ {Tags:["throwdisplay","temp","diceroll","bounce"],Invisible:1b,Invulnerable:1b,Silent:1b,Small:1b,NoBasePlate:0b,DisabledSlots:4144959,ArmorItems:[{},{},{},{id:"minecraft:carrot_on_a_stick",count:1}],Pose:{Head:[0.1f,0.1f,0.1f]}}

# Runs the new_dice function as they new armor stands
execute as @e[type=minecraft:armor_stand,tag=diceroll,tag=temp] run function board:dice_roll/new_dice

# Replaces the players mainhand with air, so that their dice is used up
item replace entity @s weapon.mainhand with minecraft:air

# Plays minecraft throwing sound
playsound minecraft:entity.experience_bottle.throw master @a ~ ~ ~ 1.5 0.5

# Removes the temp tags from the armor stands
tag @e[type=minecraft:armor_stand,tag=temp] remove temp
tag @e[type=minecraft:armor_stand,tag=temp] remove t
tag @e[type=minecraft:armor_stand,tag=temp] remove d

# Resets the players rightClick score
scoreboard players reset @s rightClick

# Gives player the thrown tag
tag @s add thrown

# Removes the dice's tempThrow tag
tag @s remove tempThrow
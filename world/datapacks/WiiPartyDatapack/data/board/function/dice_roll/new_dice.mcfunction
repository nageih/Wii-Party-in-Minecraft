#   Author        =   @ JevinLevin
#   Description   =   Ran as a new armor stand once its summoned
#   Called By     =   board:dice_roll/summon


# Gives the t tag to the armor stand if it is a 'throw' stand
tag @s[tag=throw] add t
# Gives the d tag to the armor stand if it is a 'throwdisplay' stand
tag @s[tag=throwdisplay] add d

# Gives the dice a unique scoreboard id
    # Increases the current= score by 1 to create a new score id. Does it only if the entity has the t tag as this function is ran twice per dice
execute if entity @s[tag=t] run scoreboard players add current= diceId 1
    # Sets the t dice's id to the current= score
scoreboard players operation @s[tag=t] diceId = current= diceId
    # Sets the d dice's id to the same as the previous dice
scoreboard players operation @s[tag=d] diceId = @e[type=minecraft:armor_stand,tag=t] diceId

# Sets the armor stands motion to a value matching the direction the player is look so that it goes in that direction
data modify entity @s Motion set from entity @e[type=minecraft:area_effect_cloud,tag=temp,limit=1] Pos
kill @e[type=minecraft:area_effect_cloud,tag=temp,limit=1]

# Runs the calculate motion to set the armor stands new firstMotion score
function board:dice_roll/calculate

# If the armor stands motion is too low, then it needs to make sure it goes up a little more
    # First it increases the y motion so it goes up more
execute if score @s firstMotionY matches 0..399999 run data modify entity @s Motion[1] set value 0.3d
    # Sets its firstMotionY score to 400000 so that is can bounce normally too
execute if score @s firstMotionY matches 0..399999 run scoreboard players set @s firstMotionY 400000

# Sets the armor stands head pose to match the players x rotation
execute store result entity @s Pose.Head[1] float 1 run scoreboard players get @a[tag=tempThrow,limit=1] playerRotX

# Gives the d armor stand the tempDice tag
tag @s[tag=d] add tempDice

# Runs a predicate as the player who threw the dice to check which dice they threw, then gives the dice a tag depending on what they are holding
    # Normal Dice
execute as @a[tag=tempThrow,limit=1] if predicate board:normal_dice run tag @e[type=minecraft:armor_stand,tag=tempDice,limit=1] add normal
    # Golden Dice
execute as @a[tag=tempThrow,limit=1] if predicate board:golden_dice run tag @e[type=minecraft:armor_stand,tag=tempDice,limit=1] add golden
    # Silver Dice
execute as @a[tag=tempThrow,limit=1] if predicate board:silver_dice run tag @e[type=minecraft:armor_stand,tag=tempDice,limit=1] add silver
    # Bronze Dice
execute as @a[tag=tempThrow,limit=1] if predicate board:bronze_dice run tag @e[type=minecraft:armor_stand,tag=tempDice,limit=1] add bronze
    # Negative Dice
execute as @a[tag=tempThrow,limit=1] if predicate board:negative_dice run tag @e[type=minecraft:armor_stand,tag=tempDice,limit=1] add negative
    # Dinosaur Dice
execute as @a[tag=tempThrow,limit=1] if predicate board:dino_dice run tag @e[type=minecraft:armor_stand,tag=tempDice,limit=1] add dino

# Chooses a random number from the loottable corresponding to the dice type. Then stores this result in the custom model data of the dice, to give the dice a unique combination of faces
    # Normal Dice
execute store result entity @s[tag=normal] ArmorItems[3].components."minecraft:custom_model_data" double 1 run loot spawn ~ -70 ~ loot board:normal_dice
    # Golden Dice
execute store result entity @s[tag=golden] ArmorItems[3].components."minecraft:custom_model_data" double 1 run loot spawn ~ -70 ~ loot board:golden_dice
    # Silver Dice
execute store result entity @s[tag=silver] ArmorItems[3].components."minecraft:custom_model_data" double 1 run loot spawn ~ -70 ~ loot board:silver_dice
    # Bronze Dice
execute store result entity @s[tag=bronze] ArmorItems[3].components."minecraft:custom_model_data" double 1 run loot spawn ~ -70 ~ loot board:bronze_dice
    # Negative Dice
execute store result entity @s[tag=negative] ArmorItems[3].components."minecraft:custom_model_data" double 1 run loot spawn ~ -70 ~ loot board:negative_dice
    # Dino Dice
execute store result entity @s[tag=dino] ArmorItems[3].components."minecraft:custom_model_data" double 1 run loot spawn ~ -70 ~ loot board:dino_dice

# Removes the d tags tempDice tag
tag @s[tag=d] remove tempDice

execute if score rolling= draw matches 1 run scoreboard players operation @s drawId = @a[tag=tempThrow,limit=1] drawId

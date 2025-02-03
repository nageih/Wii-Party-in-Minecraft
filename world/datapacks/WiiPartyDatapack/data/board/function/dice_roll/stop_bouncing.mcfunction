#   Author        =   @ JevinLevin
#   Description   =   Runs as the armor stand once it has stopped bouncing
#   Called By     =   board:dice_roll/check_bounce


# Gives the stand the stopbouncing
tag @s add stopbouncing

# Rounds the armor stand's diceSpinX to the last 90
    # Stores the players diceSpinX into the temp= score
scoreboard players operation temp= diceSpinX = @s[tag=throwdisplay] diceSpinX
    # Mods the temp= score by 90
scoreboard players operation temp= diceSpinX %= 90 Numbers
    # Removes the mod result from the armor stand's diceSpinX
scoreboard players operation @s[tag=throwdisplay] diceSpinX -= temp= diceSpinX

## # Rounds the armor stand's diceSpinX to the nearest
##     # Stores the players diceSpinX into the temp= score
## scoreboard players operation temp= diceSpinX = @s[tag=throwdisplay] diceSpinX
##     # Mods the temp= score by 90
## scoreboard players operation temp= diceSpinX %= 90 Numbers
## # Subtract that from 90
## scoreboard players operation temp2= diceSpinX = 90 Numbers
## scoreboard players operation temp2= diceSpinX -= temp= diceSpinX
##     # Adds the  result from the armor stand's diceSpinX
## execute if score temp2= diceSpinX >= temp= diceSpinX run scoreboard players operation @s[tag=throwdisplay] diceSpinX += temp2= diceSpinX
## execute if score temp2= diceSpinX < temp= diceSpinX run scoreboard players operation @s[tag=throwdisplay] diceSpinX -= temp= diceSpinX

# Sets the armor stand's head pose to the nearest 90 degree so that it sits flat on the floor
    # If the score is 360, then it sets it back down to 0
execute if score @s diceSpinX matches 360 run scoreboard players set @s diceSpinX 0
    # Checks what score the diceSpinX is, then gives the stand the correct head pose
execute if score @s diceSpinX matches 0 run data modify entity @s[tag=throwdisplay] Pose.Head[0] set value 0.0f
execute if score @s diceSpinX matches 90 run data modify entity @s[tag=throwdisplay] Pose.Head[0] set value 90.0f
execute if score @s diceSpinX matches 180 run data modify entity @s[tag=throwdisplay] Pose.Head[0] set value 180.0f
execute if score @s diceSpinX matches 270 run data modify entity @s[tag=throwdisplay] Pose.Head[0] set value 270.0f

# Stores the armor stands custom model data into the diceModel score
execute store result score @s diceModel run data get entity @s ArmorItems[3].components."minecraft:custom_model_data"

# This hardcoded mess determines what number the dice lands on by checking what side is facing up
# First it checks what kind of dice it is. When it checks the diceSpinX score of it to check what side is facing up.
# Then it sets the normal=, golden=, silver= or bronze= score to the number it landed on
    # Normal Dice (not double)
execute unless score double= dice matches 1 if score @s[tag=normal] diceModel matches 101 if score @s diceSpinX matches 0 run scoreboard players set normal= dice 1
execute unless score double= dice matches 1 if score @s[tag=normal] diceModel matches 101 if score @s diceSpinX matches 90 run scoreboard players set normal= dice 5
execute unless score double= dice matches 1 if score @s[tag=normal] diceModel matches 101 if score @s diceSpinX matches 180 run scoreboard players set normal= dice 6
execute unless score double= dice matches 1 if score @s[tag=normal] diceModel matches 101 if score @s diceSpinX matches 270 run scoreboard players set normal= dice 2
execute unless score double= dice matches 1 if score @s[tag=normal] diceModel matches 102 if score @s diceSpinX matches 0 run scoreboard players set normal= dice 4
execute unless score double= dice matches 1 if score @s[tag=normal] diceModel matches 102 if score @s diceSpinX matches 90 run scoreboard players set normal= dice 3
execute unless score double= dice matches 1 if score @s[tag=normal] diceModel matches 102 if score @s diceSpinX matches 180 run scoreboard players set normal= dice 1
execute unless score double= dice matches 1 if score @s[tag=normal] diceModel matches 102 if score @s diceSpinX matches 270 run scoreboard players set normal= dice 6
execute unless score double= dice matches 1 if score @s[tag=normal] diceModel matches 103 if score @s diceSpinX matches 0 run scoreboard players set normal= dice 5
execute unless score double= dice matches 1 if score @s[tag=normal] diceModel matches 103 if score @s diceSpinX matches 90 run scoreboard players set normal= dice 2
execute unless score double= dice matches 1 if score @s[tag=normal] diceModel matches 103 if score @s diceSpinX matches 180 run scoreboard players set normal= dice 4
execute unless score double= dice matches 1 if score @s[tag=normal] diceModel matches 103 if score @s diceSpinX matches 270 run scoreboard players set normal= dice 1
execute unless score double= dice matches 1 if score @s[tag=normal] diceModel matches 104 if score @s diceSpinX matches 0 run scoreboard players set normal= dice 3
execute unless score double= dice matches 1 if score @s[tag=normal] diceModel matches 104 if score @s diceSpinX matches 90 run scoreboard players set normal= dice 6
execute unless score double= dice matches 1 if score @s[tag=normal] diceModel matches 104 if score @s diceSpinX matches 180 run scoreboard players set normal= dice 5
execute unless score double= dice matches 1 if score @s[tag=normal] diceModel matches 104 if score @s diceSpinX matches 270 run scoreboard players set normal= dice 4
execute unless score double= dice matches 1 if score @s[tag=normal] diceModel matches 105 if score @s diceSpinX matches 0 run scoreboard players set normal= dice 2
execute unless score double= dice matches 1 if score @s[tag=normal] diceModel matches 105 if score @s diceSpinX matches 90 run scoreboard players set normal= dice 1
execute unless score double= dice matches 1 if score @s[tag=normal] diceModel matches 105 if score @s diceSpinX matches 180 run scoreboard players set normal= dice 3
execute unless score double= dice matches 1 if score @s[tag=normal] diceModel matches 105 if score @s diceSpinX matches 270 run scoreboard players set normal= dice 5
execute unless score double= dice matches 1 if score @s[tag=normal] diceModel matches 106 if score @s diceSpinX matches 0 run scoreboard players set normal= dice 6
execute unless score double= dice matches 1 if score @s[tag=normal] diceModel matches 106 if score @s diceSpinX matches 90 run scoreboard players set normal= dice 4
execute unless score double= dice matches 1 if score @s[tag=normal] diceModel matches 106 if score @s diceSpinX matches 180 run scoreboard players set normal= dice 2
execute unless score double= dice matches 1 if score @s[tag=normal] diceModel matches 106 if score @s diceSpinX matches 270 run scoreboard players set normal= dice 3
    # Normal Dice (double)
execute if score double= dice matches 1 if score @s[tag=normal] diceModel matches 101 if score @s diceSpinX matches 0 run scoreboard players set doubleroll= dice 1
execute if score double= dice matches 1 if score @s[tag=normal] diceModel matches 101 if score @s diceSpinX matches 90 run scoreboard players set doubleroll= dice 5
execute if score double= dice matches 1 if score @s[tag=normal] diceModel matches 101 if score @s diceSpinX matches 180 run scoreboard players set doubleroll= dice 6
execute if score double= dice matches 1 if score @s[tag=normal] diceModel matches 101 if score @s diceSpinX matches 270 run scoreboard players set doubleroll= dice 2
execute if score double= dice matches 1 if score @s[tag=normal] diceModel matches 102 if score @s diceSpinX matches 0 run scoreboard players set doubleroll= dice 4
execute if score double= dice matches 1 if score @s[tag=normal] diceModel matches 102 if score @s diceSpinX matches 90 run scoreboard players set doubleroll= dice 3
execute if score double= dice matches 1 if score @s[tag=normal] diceModel matches 102 if score @s diceSpinX matches 180 run scoreboard players set doubleroll= dice 1
execute if score double= dice matches 1 if score @s[tag=normal] diceModel matches 102 if score @s diceSpinX matches 270 run scoreboard players set doubleroll= dice 6
execute if score double= dice matches 1 if score @s[tag=normal] diceModel matches 103 if score @s diceSpinX matches 0 run scoreboard players set doubleroll= dice 5
execute if score double= dice matches 1 if score @s[tag=normal] diceModel matches 103 if score @s diceSpinX matches 90 run scoreboard players set doubleroll= dice 2
execute if score double= dice matches 1 if score @s[tag=normal] diceModel matches 103 if score @s diceSpinX matches 180 run scoreboard players set doubleroll= dice 4
execute if score double= dice matches 1 if score @s[tag=normal] diceModel matches 103 if score @s diceSpinX matches 270 run scoreboard players set doubleroll= dice 1
execute if score double= dice matches 1 if score @s[tag=normal] diceModel matches 104 if score @s diceSpinX matches 0 run scoreboard players set doubleroll= dice 3
execute if score double= dice matches 1 if score @s[tag=normal] diceModel matches 104 if score @s diceSpinX matches 90 run scoreboard players set doubleroll= dice 6
execute if score double= dice matches 1 if score @s[tag=normal] diceModel matches 104 if score @s diceSpinX matches 180 run scoreboard players set doubleroll= dice 5
execute if score double= dice matches 1 if score @s[tag=normal] diceModel matches 104 if score @s diceSpinX matches 270 run scoreboard players set doubleroll= dice 4
execute if score double= dice matches 1 if score @s[tag=normal] diceModel matches 105 if score @s diceSpinX matches 0 run scoreboard players set doubleroll= dice 2
execute if score double= dice matches 1 if score @s[tag=normal] diceModel matches 105 if score @s diceSpinX matches 90 run scoreboard players set doubleroll= dice 1
execute if score double= dice matches 1 if score @s[tag=normal] diceModel matches 105 if score @s diceSpinX matches 180 run scoreboard players set doubleroll= dice 3
execute if score double= dice matches 1 if score @s[tag=normal] diceModel matches 105 if score @s diceSpinX matches 270 run scoreboard players set doubleroll= dice 5
execute if score double= dice matches 1 if score @s[tag=normal] diceModel matches 106 if score @s diceSpinX matches 0 run scoreboard players set doubleroll= dice 6
execute if score double= dice matches 1 if score @s[tag=normal] diceModel matches 106 if score @s diceSpinX matches 90 run scoreboard players set doubleroll= dice 4
execute if score double= dice matches 1 if score @s[tag=normal] diceModel matches 106 if score @s diceSpinX matches 180 run scoreboard players set doubleroll= dice 2
execute if score double= dice matches 1 if score @s[tag=normal] diceModel matches 106 if score @s diceSpinX matches 270 run scoreboard players set doubleroll= dice 3
    # Golden Dice
execute if score @s[tag=golden] diceModel matches 111 if score @s diceSpinX matches 0 run scoreboard players set golden= dice 1
execute if score @s[tag=golden] diceModel matches 111 if score @s diceSpinX matches 90 run scoreboard players set golden= dice 5
execute if score @s[tag=golden] diceModel matches 111 if score @s diceSpinX matches 180 run scoreboard players set golden= dice 6
execute if score @s[tag=golden] diceModel matches 111 if score @s diceSpinX matches 270 run scoreboard players set golden= dice 2
execute if score @s[tag=golden] diceModel matches 112 if score @s diceSpinX matches 0 run scoreboard players set golden= dice 4
execute if score @s[tag=golden] diceModel matches 112 if score @s diceSpinX matches 90 run scoreboard players set golden= dice 3
execute if score @s[tag=golden] diceModel matches 112 if score @s diceSpinX matches 180 run scoreboard players set golden= dice 1
execute if score @s[tag=golden] diceModel matches 112 if score @s diceSpinX matches 270 run scoreboard players set golden= dice 6
execute if score @s[tag=golden] diceModel matches 113 if score @s diceSpinX matches 0 run scoreboard players set golden= dice 5
execute if score @s[tag=golden] diceModel matches 113 if score @s diceSpinX matches 90 run scoreboard players set golden= dice 2
execute if score @s[tag=golden] diceModel matches 113 if score @s diceSpinX matches 180 run scoreboard players set golden= dice 4
execute if score @s[tag=golden] diceModel matches 113 if score @s diceSpinX matches 270 run scoreboard players set golden= dice 1
execute if score @s[tag=golden] diceModel matches 114 if score @s diceSpinX matches 0 run scoreboard players set golden= dice 3
execute if score @s[tag=golden] diceModel matches 114 if score @s diceSpinX matches 90 run scoreboard players set golden= dice 6
execute if score @s[tag=golden] diceModel matches 114 if score @s diceSpinX matches 180 run scoreboard players set golden= dice 5
execute if score @s[tag=golden] diceModel matches 114 if score @s diceSpinX matches 270 run scoreboard players set golden= dice 4
execute if score @s[tag=golden] diceModel matches 115 if score @s diceSpinX matches 0 run scoreboard players set golden= dice 2
execute if score @s[tag=golden] diceModel matches 115 if score @s diceSpinX matches 90 run scoreboard players set golden= dice 1
execute if score @s[tag=golden] diceModel matches 115 if score @s diceSpinX matches 180 run scoreboard players set golden= dice 3
execute if score @s[tag=golden] diceModel matches 115 if score @s diceSpinX matches 270 run scoreboard players set golden= dice 5
execute if score @s[tag=golden] diceModel matches 116 if score @s diceSpinX matches 0 run scoreboard players set golden= dice 6
execute if score @s[tag=golden] diceModel matches 116 if score @s diceSpinX matches 90 run scoreboard players set golden= dice 4
execute if score @s[tag=golden] diceModel matches 116 if score @s diceSpinX matches 180 run scoreboard players set golden= dice 2
execute if score @s[tag=golden] diceModel matches 116 if score @s diceSpinX matches 270 run scoreboard players set golden= dice 3
    # Silver Dice
execute if score @s[tag=silver] diceModel matches 121 if score @s diceSpinX matches 0 run scoreboard players set silver= dice 1
execute if score @s[tag=silver] diceModel matches 121 if score @s diceSpinX matches 90 run scoreboard players set silver= dice 2
execute if score @s[tag=silver] diceModel matches 121 if score @s diceSpinX matches 180 run scoreboard players set silver= dice 1
execute if score @s[tag=silver] diceModel matches 121 if score @s diceSpinX matches 270 run scoreboard players set silver= dice 2
execute if score @s[tag=silver] diceModel matches 122 if score @s diceSpinX matches 0 run scoreboard players set silver= dice 3
execute if score @s[tag=silver] diceModel matches 122 if score @s diceSpinX matches 90 run scoreboard players set silver= dice 3
execute if score @s[tag=silver] diceModel matches 122 if score @s diceSpinX matches 180 run scoreboard players set silver= dice 1
execute if score @s[tag=silver] diceModel matches 122 if score @s diceSpinX matches 270 run scoreboard players set silver= dice 1
execute if score @s[tag=silver] diceModel matches 123 if score @s diceSpinX matches 0 run scoreboard players set silver= dice 2
execute if score @s[tag=silver] diceModel matches 123 if score @s diceSpinX matches 90 run scoreboard players set silver= dice 2
execute if score @s[tag=silver] diceModel matches 123 if score @s diceSpinX matches 180 run scoreboard players set silver= dice 3
execute if score @s[tag=silver] diceModel matches 123 if score @s diceSpinX matches 270 run scoreboard players set silver= dice 1
execute if score @s[tag=silver] diceModel matches 124 if score @s diceSpinX matches 0 run scoreboard players set silver= dice 3
execute if score @s[tag=silver] diceModel matches 124 if score @s diceSpinX matches 90 run scoreboard players set silver= dice 1
execute if score @s[tag=silver] diceModel matches 124 if score @s diceSpinX matches 180 run scoreboard players set silver= dice 2
execute if score @s[tag=silver] diceModel matches 124 if score @s diceSpinX matches 270 run scoreboard players set silver= dice 3
execute if score @s[tag=silver] diceModel matches 125 if score @s diceSpinX matches 0 run scoreboard players set silver= dice 2
execute if score @s[tag=silver] diceModel matches 125 if score @s diceSpinX matches 90 run scoreboard players set silver= dice 1
execute if score @s[tag=silver] diceModel matches 125 if score @s diceSpinX matches 180 run scoreboard players set silver= dice 3
execute if score @s[tag=silver] diceModel matches 125 if score @s diceSpinX matches 270 run scoreboard players set silver= dice 2
execute if score @s[tag=silver] diceModel matches 126 if score @s diceSpinX matches 0 run scoreboard players set silver= dice 1
execute if score @s[tag=silver] diceModel matches 126 if score @s diceSpinX matches 90 run scoreboard players set silver= dice 3
execute if score @s[tag=silver] diceModel matches 126 if score @s diceSpinX matches 180 run scoreboard players set silver= dice 2
execute if score @s[tag=silver] diceModel matches 126 if score @s diceSpinX matches 270 run scoreboard players set silver= dice 3
    # Bronze Dice
execute if score @s[tag=bronze] diceModel matches 131 if score @s diceSpinX matches 0 run scoreboard players set bronze= dice 1
execute if score @s[tag=bronze] diceModel matches 131 if score @s diceSpinX matches 90 run scoreboard players set bronze= dice 2
execute if score @s[tag=bronze] diceModel matches 131 if score @s diceSpinX matches 180 run scoreboard players set bronze= dice 1
execute if score @s[tag=bronze] diceModel matches 131 if score @s diceSpinX matches 270 run scoreboard players set bronze= dice 2
execute if score @s[tag=bronze] diceModel matches 132 if score @s diceSpinX matches 0 run scoreboard players set bronze= dice 2
execute if score @s[tag=bronze] diceModel matches 132 if score @s diceSpinX matches 90 run scoreboard players set bronze= dice 1
execute if score @s[tag=bronze] diceModel matches 132 if score @s diceSpinX matches 180 run scoreboard players set bronze= dice 1
execute if score @s[tag=bronze] diceModel matches 132 if score @s diceSpinX matches 270 run scoreboard players set bronze= dice 1
execute if score @s[tag=bronze] diceModel matches 133 if score @s diceSpinX matches 0 run scoreboard players set bronze= dice 2
execute if score @s[tag=bronze] diceModel matches 133 if score @s diceSpinX matches 90 run scoreboard players set bronze= dice 2
execute if score @s[tag=bronze] diceModel matches 133 if score @s diceSpinX matches 180 run scoreboard players set bronze= dice 2
execute if score @s[tag=bronze] diceModel matches 133 if score @s diceSpinX matches 270 run scoreboard players set bronze= dice 1
execute if score @s[tag=bronze] diceModel matches 134 if score @s diceSpinX matches 0 run scoreboard players set bronze= dice 1
execute if score @s[tag=bronze] diceModel matches 134 if score @s diceSpinX matches 90 run scoreboard players set bronze= dice 1
execute if score @s[tag=bronze] diceModel matches 134 if score @s diceSpinX matches 180 run scoreboard players set bronze= dice 2
execute if score @s[tag=bronze] diceModel matches 134 if score @s diceSpinX matches 270 run scoreboard players set bronze= dice 2
execute if score @s[tag=bronze] diceModel matches 135 if score @s diceSpinX matches 0 run scoreboard players set bronze= dice 2
execute if score @s[tag=bronze] diceModel matches 135 if score @s diceSpinX matches 90 run scoreboard players set bronze= dice 1
execute if score @s[tag=bronze] diceModel matches 135 if score @s diceSpinX matches 180 run scoreboard players set bronze= dice 1
execute if score @s[tag=bronze] diceModel matches 135 if score @s diceSpinX matches 270 run scoreboard players set bronze= dice 2
execute if score @s[tag=bronze] diceModel matches 136 if score @s diceSpinX matches 0 run scoreboard players set bronze= dice 1
execute if score @s[tag=bronze] diceModel matches 136 if score @s diceSpinX matches 90 run scoreboard players set bronze= dice 2
execute if score @s[tag=bronze] diceModel matches 136 if score @s diceSpinX matches 180 run scoreboard players set bronze= dice 2
execute if score @s[tag=bronze] diceModel matches 136 if score @s diceSpinX matches 270 run scoreboard players set bronze= dice 1
    # Negative Dice
execute if score @s[tag=negative] diceModel matches 151 if score @s diceSpinX matches 0 run scoreboard players set negative= dice 1
execute if score @s[tag=negative] diceModel matches 151 if score @s diceSpinX matches 90 run scoreboard players set negative= dice 5
execute if score @s[tag=negative] diceModel matches 151 if score @s diceSpinX matches 180 run scoreboard players set negative= dice 6
execute if score @s[tag=negative] diceModel matches 151 if score @s diceSpinX matches 270 run scoreboard players set negative= dice 2
execute if score @s[tag=negative] diceModel matches 152 if score @s diceSpinX matches 0 run scoreboard players set negative= dice 4
execute if score @s[tag=negative] diceModel matches 152 if score @s diceSpinX matches 90 run scoreboard players set negative= dice 3
execute if score @s[tag=negative] diceModel matches 152 if score @s diceSpinX matches 180 run scoreboard players set negative= dice 1
execute if score @s[tag=negative] diceModel matches 152 if score @s diceSpinX matches 270 run scoreboard players set negative= dice 6
execute if score @s[tag=negative] diceModel matches 153 if score @s diceSpinX matches 0 run scoreboard players set negative= dice 5
execute if score @s[tag=negative] diceModel matches 153 if score @s diceSpinX matches 90 run scoreboard players set negative= dice 2
execute if score @s[tag=negative] diceModel matches 153 if score @s diceSpinX matches 180 run scoreboard players set negative= dice 4
execute if score @s[tag=negative] diceModel matches 153 if score @s diceSpinX matches 270 run scoreboard players set negative= dice 1
execute if score @s[tag=negative] diceModel matches 154 if score @s diceSpinX matches 0 run scoreboard players set negative= dice 3
execute if score @s[tag=negative] diceModel matches 154 if score @s diceSpinX matches 90 run scoreboard players set negative= dice 6
execute if score @s[tag=negative] diceModel matches 154 if score @s diceSpinX matches 180 run scoreboard players set negative= dice 5
execute if score @s[tag=negative] diceModel matches 154 if score @s diceSpinX matches 270 run scoreboard players set negative= dice 4
execute if score @s[tag=negative] diceModel matches 155 if score @s diceSpinX matches 0 run scoreboard players set negative= dice 2
execute if score @s[tag=negative] diceModel matches 155 if score @s diceSpinX matches 90 run scoreboard players set negative= dice 1
execute if score @s[tag=negative] diceModel matches 155 if score @s diceSpinX matches 180 run scoreboard players set negative= dice 3
execute if score @s[tag=negative] diceModel matches 155 if score @s diceSpinX matches 270 run scoreboard players set negative= dice 5
execute if score @s[tag=negative] diceModel matches 156 if score @s diceSpinX matches 0 run scoreboard players set negative= dice 6
execute if score @s[tag=negative] diceModel matches 156 if score @s diceSpinX matches 90 run scoreboard players set negative= dice 4
execute if score @s[tag=negative] diceModel matches 156 if score @s diceSpinX matches 180 run scoreboard players set negative= dice 2
execute if score @s[tag=negative] diceModel matches 156 if score @s diceSpinX matches 270 run scoreboard players set negative= dice 3
    # Dinosaur Dice
execute if score @s[tag=dino] diceModel matches 161 if score @s diceSpinX matches 0 run scoreboard players set dino= dice 1
execute if score @s[tag=dino] diceModel matches 161 if score @s diceSpinX matches 90 run scoreboard players set dino= dice 5
execute if score @s[tag=dino] diceModel matches 161 if score @s diceSpinX matches 180 run scoreboard players set dino= dice 6
execute if score @s[tag=dino] diceModel matches 161 if score @s diceSpinX matches 270 run scoreboard players set dino= dice 2
execute if score @s[tag=dino] diceModel matches 162 if score @s diceSpinX matches 0 run scoreboard players set dino= dice 4
execute if score @s[tag=dino] diceModel matches 162 if score @s diceSpinX matches 90 run scoreboard players set dino= dice 3
execute if score @s[tag=dino] diceModel matches 162 if score @s diceSpinX matches 180 run scoreboard players set dino= dice 1
execute if score @s[tag=dino] diceModel matches 162 if score @s diceSpinX matches 270 run scoreboard players set dino= dice 6
execute if score @s[tag=dino] diceModel matches 163 if score @s diceSpinX matches 0 run scoreboard players set dino= dice 5
execute if score @s[tag=dino] diceModel matches 163 if score @s diceSpinX matches 90 run scoreboard players set dino= dice 2
execute if score @s[tag=dino] diceModel matches 163 if score @s diceSpinX matches 180 run scoreboard players set dino= dice 4
execute if score @s[tag=dino] diceModel matches 163 if score @s diceSpinX matches 270 run scoreboard players set dino= dice 1
execute if score @s[tag=dino] diceModel matches 164 if score @s diceSpinX matches 0 run scoreboard players set dino= dice 3
execute if score @s[tag=dino] diceModel matches 164 if score @s diceSpinX matches 90 run scoreboard players set dino= dice 6
execute if score @s[tag=dino] diceModel matches 164 if score @s diceSpinX matches 180 run scoreboard players set dino= dice 5
execute if score @s[tag=dino] diceModel matches 164 if score @s diceSpinX matches 270 run scoreboard players set dino= dice 4
execute if score @s[tag=dino] diceModel matches 165 if score @s diceSpinX matches 0 run scoreboard players set dino= dice 2
execute if score @s[tag=dino] diceModel matches 165 if score @s diceSpinX matches 90 run scoreboard players set dino= dice 1
execute if score @s[tag=dino] diceModel matches 165 if score @s diceSpinX matches 180 run scoreboard players set dino= dice 3
execute if score @s[tag=dino] diceModel matches 165 if score @s diceSpinX matches 270 run scoreboard players set dino= dice 5
execute if score @s[tag=dino] diceModel matches 166 if score @s diceSpinX matches 0 run scoreboard players set dino= dice 6
execute if score @s[tag=dino] diceModel matches 166 if score @s diceSpinX matches 90 run scoreboard players set dino= dice 4
execute if score @s[tag=dino] diceModel matches 166 if score @s diceSpinX matches 180 run scoreboard players set dino= dice 2
execute if score @s[tag=dino] diceModel matches 166 if score @s diceSpinX matches 270 run scoreboard players set dino= dice 3

execute if score rolling= draw matches 1 run scoreboard players operation currentId drawId = @s drawId
execute if score rolling= draw matches 1 as @a[tag=ingame] if score @s drawId = currentId drawId run scoreboard players operation @s drawRoll = normal= dice

execute if score ufo= tiles matches 1 run scoreboard players operation roll= tiles = normal= dice

execute if score tornado= tiles matches 1 run scoreboard players operation roll= tiles = normal= dice

execute if score dino= tiles matches 1 run scoreboard players operation roll= tiles = dino= dice

    # Stores their roll scores into their diceRoll score
execute unless score double= dice matches 1 run scoreboard players operation @s[tag=normal] diceRoll = normal= dice
execute if score double= dice matches 1 run scoreboard players operation @s[tag=normal] diceRoll = doubleroll= dice
scoreboard players operation @s[tag=golden] diceRoll = golden= dice
scoreboard players operation @s[tag=silver] diceRoll = silver= dice
scoreboard players operation @s[tag=bronze] diceRoll = bronze= dice
scoreboard players operation @s[tag=negative] diceRoll = negative= dice
scoreboard players operation @s[tag=dino] diceRoll = dino= dice

# Adds on whatever roll it got to the diceRoll score if no event
    # Normal Dice (not double)
execute unless score eventRoll= tiles matches 1.. unless score double= dice matches 1 if entity @s[tag=normal] run scoreboard players operation @a[tag=turn] diceRoll += normal= dice
    # Normal Dice (double)
execute unless score eventRoll= tiles matches 1.. if score double= dice matches 1 if entity @s[tag=normal] run scoreboard players operation @a[tag=turn] diceRoll += doubleroll= dice
    # Golden Dice
execute unless score eventRoll= tiles matches 1.. if entity @s[tag=golden] run scoreboard players operation @a[tag=turn] diceRoll += golden= dice
    # Silver Dice
execute unless score eventRoll= tiles matches 1.. if entity @s[tag=silver] run scoreboard players operation @a[tag=turn] diceRoll += silver= dice
    # Bronze Dice
execute unless score eventRoll= tiles matches 1.. if entity @s[tag=bronze] run scoreboard players operation @a[tag=turn] diceRoll += bronze= dice

# Eventgs
execute if score eventRoll= tiles matches 1.. run scoreboard players operation eventRoll= diceRoll = normal= dice
# Final additional dice
execute if score eventRoll= tiles matches 1.. if score final= tiles matches 1 if entity @a[tag=turn,tag=startFinal,tag=1st] run scoreboard players operation eventRoll= diceRoll += golden= dice
execute if score eventRoll= tiles matches 1.. if score final= tiles matches 1 if entity @a[tag=turn,tag=startFinal,tag=2nd] run scoreboard players operation eventRoll= diceRoll += silver= dice
execute if score eventRoll= tiles matches 1.. if score final= tiles matches 1 if entity @a[tag=turn,tag=startFinal,tag=3rd] run scoreboard players operation eventRoll= diceRoll += bronze= dice
execute if score eventRoll= tiles matches 1.. if score final= tiles matches 1 if entity @a[tag=turn,tag=startFinal] if score double= dice matches 1 run scoreboard players operation eventRoll= diceRoll += doubleroll= dice

# Checks for a double
execute if score golden= dice matches 1.. if score normal= dice = golden= dice run scoreboard players set double= dice 1
execute if score silver= dice matches 1.. if score normal= dice = silver= dice run scoreboard players set double= dice 1
execute if score bronze= dice matches 1.. if score normal= dice = bronze= dice run scoreboard players set double= dice 1


# Summons a text hologram with their roll on it
execute unless score dino= tiles matches 1.. at @s[tag=throw] run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:10,CustomNameVisible:1b,Tags:["diceText","temp"]}
tag @s add currentDice
execute if entity @s[tag=golden] run data merge block -976 12 -1153 {front_text:{messages:['[{"score":{"name":"@e[tag=currentDice]","objective":"diceRoll"},"font":"minecraft:gold","bold":true}]','{"text":""}','{"text":""}','{"text":""}']}}
execute if entity @s[tag=silver] run data merge block -976 12 -1153 {front_text:{messages:['[{"score":{"name":"@e[tag=currentDice]","objective":"diceRoll"},"font":"minecraft:silver","bold":true}]','{"text":""}','{"text":""}','{"text":""}']}}
execute if entity @s[tag=bronze] run data merge block -976 12 -1153 {front_text:{messages:['[{"score":{"name":"@e[tag=currentDice]","objective":"diceRoll"},"font":"minecraft:bronze","bold":true}]','{"text":""}','{"text":""}','{"text":""}']}}
execute if entity @s[tag=normal] run data merge block -976 12 -1153 {front_text:{messages:['[{"score":{"name":"@e[tag=currentDice]","objective":"diceRoll"},"color":"white","bold":true}]','{"text":""}','{"text":""}','{"text":""}']}}
execute if entity @s[tag=negative] run data merge block -976 12 -1153 {front_text:{messages:['[{"score":{"name":"@e[tag=currentDice]","objective":"diceRoll"},"font":"minecraft:red","bold":true}]','{"text":""}','{"text":""}','{"text":""}']}}
tag @s remove currentDice
data modify entity @e[type=minecraft:area_effect_cloud,tag=diceText,tag=temp,limit=1] CustomName set from block -976 12 -1153 front_text.messages[0]
tag @e[type=minecraft:area_effect_cloud,tag=diceText,tag=temp] remove temp

# Runs the settle function as the dice with the throw tag
execute if entity @s[tag=throw] at @s run function board:dice_roll/settle

# Makes the armor stand a marker, so that it can be set on fire and not make a hitmarker sound when punched
data merge entity @s {Marker:1b}

# Plays bong sound
execute at @s[tag=throw] run playsound minecraft:block.end_portal_frame.fill master @a ~ ~ ~ 1.5 1
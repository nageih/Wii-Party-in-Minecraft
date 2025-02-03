

scoreboard players set temp tiles 1
execute if score temp tiles matches 1 if score @s boardPos matches ..5 if score @s newBoardPos matches 7.. run function board:dice_roll/skiprope
execute if score temp tiles matches 1 if score @s boardPos matches ..14 if score @s newBoardPos matches 16.. if score dragonAlive= tiles matches 1 run function board:dice_roll/skipdragon
execute if score temp tiles matches 1 if score @s boardPos matches ..33 if score @s newBoardPos matches 35.. run function board:dice_roll/skipribcage
execute if score temp tiles matches 1 if score @s boardPos matches ..43 if score @s newBoardPos matches 44.. run function board:dice_roll/skipjump
execute if score temp tiles matches 1 if score @s boardPos matches ..72 if score @s newBoardPos matches 74.. if score spikeAlive= tiles matches 1 run function board:dice_roll/skipspike

execute if score temp tiles matches 1 run scoreboard players operation @s boardPos = @s newBoardPos
scoreboard players reset temp tiles


# Runs the tp_board_pos function that teleports the player to their tile
function board:dice_roll/tp_board_pos

# Teleports the spectators to the player
execute as @a[tag=turn] run function board:dice_roll/spectator_tp

# Plays teleport sound at the player
execute at @s run playsound minecraft:item.chorus_fruit.teleport master @a ~ ~ ~ 3 1

# Clears the players skip item
clear @s minecraft:carrot_on_a_stick[minecraft:custom_data={skip:1b}]

# If the function is run as a result of the player taking too long, then it displays this message in chat saying that the player took too long
execute if score @s diceTimer = timermax= dice run tellraw @a[tag=playing] {"translate":"board.DiceRoll.TookTooLong","color":"gray","bold":true,"with":[{"selector":"@s"}]}

scoreboard players add @s diceTimer 1
#   Author        =   @ JevinLevin
#   Description   =   Ran if the player tried to roll a dice in an invalid spot
#   Called By     =   board:dice_roll/main_player


# Plays error sound
playsound minecraft:block.note_block.didgeridoo master @s ~ ~ ~ 3

# Shows title for the player saying why they cant throw
title @s actionbar {"translate":"board.DiceRoll.Invalid","color":"red","bold":true}

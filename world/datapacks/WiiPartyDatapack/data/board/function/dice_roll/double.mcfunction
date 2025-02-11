#   Author        =   @ JevinLevin
#   Description   =   Ran if a player lands 2 of the same numbers
#   Called By     =   board:dice_roll/settle

# Plays ding sound
execute at @a[tag=turn] run playsound minecraft:block.note_block.bell master @a ~ ~ ~ 2 0.5 1

# Displays title saying that the player got a double
execute if entity @a[tag=turn,team=blue] run title @a[tag=playing] title {"translate":"board.DiceRoll.Double","color":"#0088ff","bold":true}
execute if entity @a[tag=turn,team=red] run title @a[tag=playing] title {"translate":"board.DiceRoll.Double","color":"red","bold":true}
execute if entity @a[tag=turn,team=green] run title @a[tag=playing] title {"translate":"board.DiceRoll.Double","color":"green","bold":true}
execute if entity @a[tag=turn,team=orange] run title @a[tag=playing] title {"translate":"board.DiceRoll.Double","color":"gold","bold":true}

# Displays subtitle telling the player to roll again
title @a[tag=playing] subtitle {"translate":"board.DiceRoll.RollAgain","color":"gray","bold":true}
title @a[team=blue] subtitle {"translate":"board.DiceRoll.RollAgain","color":"gray","bold":true}
title @a[team=red] subtitle {"translate":"board.DiceRoll.RollAgain","color":"gray","bold":true}
title @a[team=green] subtitle {"translate":"board.DiceRoll.RollAgain","color":"gray","bold":true}
title @a[team=orange] subtitle {"translate":"board.DiceRoll.RollAgain","color":"gray","bold":true}

# Gives the player a new normal dice to roll
execute as @a[tag=turn] run function board:dice_roll/give/normal

# Advancement
advancement grant @a[tag=turn] only advancements:island/double

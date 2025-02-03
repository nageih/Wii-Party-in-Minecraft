#   Author        =   @ JevinLevin
#   Description   =   Ran if a player lands 2 of the same numbers
#   Called By     =   board:dice_roll/settle

# Plays ding sound
execute at @a[tag=turn] run playsound minecraft:block.note_block.bell master @a ~ ~ ~ 2 0.5 1

# Displays title saying that the player got a double
title @a[tag=playing] title {"translate":"board.DiceRoll.Double","color":"light_purple","bold":true}
title @a[team=blue] title {"translate":"board.DiceRoll.Double","color":"#0088ff","bold":true}
title @a[team=red] title {"translate":"board.DiceRoll.Double","color":"red","bold":true}
title @a[team=green] title {"translate":"board.DiceRoll.Double","color":"green","bold":true}
title @a[team=orange] title {"translate":"board.DiceRoll.Double","color":"gold","bold":true}

# Displays subtitle telling the player to roll again
title @a[tag=playing] subtitle {"translate":"board.DiceRoll.RollAgain","color":"gray","bold":true}
title @a[team=blue] subtitle {"translate":"board.DiceRoll.RollAgain","color":"gray","bold":true}
title @a[team=red] subtitle {"translate":"board.DiceRoll.RollAgain","color":"gray","bold":true}
title @a[team=green] subtitle {"translate":"board.DiceRoll.RollAgain","color":"gray","bold":true}
title @a[team=orange] subtitle {"translate":"board.DiceRoll.RollAgain","color":"gray","bold":true}

# Gives the player a new normal dice to roll
execute as @a[tag=turn] run function board:dice_roll/give/normal
#give @a[tag=turn] minecraft:carrot_on_a_stick[minecraft:custom_model_data=101,minecraft:custom_name='{"translate":"board.DiceRoll.NormalDice","bold":true,"italic":false,"color":"white"}',minecraft:lore=['{"translate":"board.DiceRoll.RightClick","italic":false,"color":"gray"}'],minecraft:unbreakable={show_in_tooltip:0b},minecraft:custom_data={dice:1b,normal:1b}] 1

# Advancement
advancement grant @a[tag=turn] only advancements:island/double

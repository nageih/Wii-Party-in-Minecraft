tp @s ~ ~ ~

playsound minecraft:block.note_block.didgeridoo master @s ~ ~ ~ 3

tellraw @s[team=blue] {"translate":"board.DiceRoll.OutOfBounds","bold":true,"color":"#0088ff"}
tellraw @s[team=red] {"translate":"board.DiceRoll.OutOfBounds","bold":true,"color":"red"}
tellraw @s[team=green] {"translate":"board.DiceRoll.OutOfBounds","bold":true,"color":"green"}
tellraw @s[team=orange] {"translate":"board.DiceRoll.OutOfBounds","bold":true,"color":"gold"}
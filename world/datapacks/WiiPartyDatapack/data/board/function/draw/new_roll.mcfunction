tag @r[tag=drawRoll,tag=!drawRolled] add drawRollNow

# tellraw @a[tag=playing] [{"text":"","color":"gray"},{"selector":"@a[tag=drawRollNow]"},{"text":"'s turn to roll."}]
tellraw @a[tag=playing] [{"translate":"draw.NewTurn","color":"gray","with":[{"selector":"@a[tag=drawRollNow]"}]}]

execute as @a[tag=drawRollNow,limit=1,sort=random] run function board:dice_roll/give/normal

scoreboard players set drawRoll= tiles 1
scoreboard players set eventRoll= tiles 1
scoreboard players set eventRoll= diceRoll 0
scoreboard players set double= dice 0
scoreboard players set rolling= draw 1
scoreboard players operation @a[tag=drawRollNow] draw = eventRoll= diceRoll

# tellraw @a[tag=playing] [{"text":"","color":"gray"},{"selector":"@a[tag=drawRollNow]"},{"text":" rolled a "},{"score":{"name": "eventRoll=","objective": "diceRoll"}},{"text":"!"}]
tellraw @a[tag=playing] [{"translate":"draw.Rolled","color":"gray","with":[{"selector":"@a[tag=drawRollNow]"},{"score":{"name": "eventRoll=","objective": "diceRoll"}}]}]

execute as @a[tag=playing] at @s run playsound block.note_block.bit master @s ~ ~ ~ 10000


tag @a[tag=drawRollNow] add drawRolled
tag @a remove drawRollNow

function board:draw/check_next_roll
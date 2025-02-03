tag @a remove drawFound
tag @a remove drawRoll
tag @a remove drawRolled
tag @a remove drawRollNow
tag @a remove d1
tag @a remove d2
tag @a remove d3
tag @a remove d4

scoreboard players reset drawRoll= tiles
scoreboard players set eventRoll= tiles 0
scoreboard players set eventRoll= diceRoll 0

clear @a minecraft:carrot_on_a_stick[minecraft:custom_data={dice:1b,normal:1b}]

schedule clear board:draw/new_placement
schedule clear board:draw/new_roll
schedule clear board:draw/all_rolled

stopsound @a voice

effect give @a[tag=ingame] weakness infinite 255 true
effect clear @a[tag=ingame] resistance

team modify blue collisionRule never
team modify red collisionRule never
team modify green collisionRule never
team modify orange collisionRule never
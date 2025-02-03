

scoreboard players set global tiles 2
clear @a[tag=turn] minecraft:carrot_on_a_stick[minecraft:custom_data={skip:1b}]

scoreboard players set final= tiles 1
scoreboard players set eventRoll= tiles 1
scoreboard players reset eventRoll diceRoll
scoreboard players reset addResult= tiles
scoreboard players set double= dice 0

# Animation
function board:tiles/final/start_anim

spreadplayers -194 56 5 5 true @a[tag=playing,tag=!turn]

schedule function board:tiles/final/start_title 30t

# Kills the glowing falling blcoks that represents the tile the player has to go to
    # First it teleports them all into the V O I D
execute as @e[tag=tileGlow] at @s run tp @s ~ -1000 ~
    # Air toggles the falling blocks to update their position faster
execute as @e[type=minecraft:falling_block,tag=tileGlow] store result entity @s Air double 1 run time query gametime
kill @e[tag=tileGlow]


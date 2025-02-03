#   Author        =   @ JevinLevin
#   Description   =   Plays the recovery animation for the recently knocked player
#   Called By     =   games:26/player


# Increases the recover score by 1 every tick
scoreboard players add @s 26recover 1

# Gives the player invis or removes it depending on the timer. This results in an animation that looks like they are flashing invis and vis, like in the original game when a player is hit.
effect give @s[scores={26recover=1..3}] minecraft:invisibility infinite 1 true
effect clear @s[scores={26recover=4..6}] minecraft:invisibility
effect give @s[scores={26recover=7..9}] minecraft:invisibility infinite 1 true
effect clear @s[scores={26recover=10..12}] minecraft:invisibility
effect give @s[scores={26recover=13..15}] minecraft:invisibility infinite 1 true
effect clear @s[scores={26recover=16..18}] minecraft:invisibility
effect give @s[scores={26recover=19..22}] minecraft:invisibility infinite 1 true
effect clear @s[scores={26recover=23..25}] minecraft:invisibility
effect give @s[scores={26recover=26..28}] minecraft:invisibility infinite 1 true
effect clear @s[scores={26recover=29..}] minecraft:invisibility

# Once 29 ticks have passed, resets the player
    # Removes the tags
tag @s[scores={26recover=29..}] remove recover
    # Removes slowness
    #effect clear @s[scores={26recover=29..}] slowness
    # Resets the score for next time
scoreboard players reset @s[scores={26recover=29..}] 26recover
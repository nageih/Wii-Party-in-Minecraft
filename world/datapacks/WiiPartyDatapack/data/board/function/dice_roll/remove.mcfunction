execute as @e[tag=diceroll] at @s run tp @s ~ -100 ~
kill @e[tag=diceroll]
scoreboard players set current= diceId 1
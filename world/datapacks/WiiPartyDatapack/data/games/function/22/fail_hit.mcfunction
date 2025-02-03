# Kills the slime, tps them into the void first to remove the death animation and particles
tp @s ~ -70 ~
kill @s

kill @e[type=armor_stand,tag=balldisplay]

# Displays particles around where the ball was to show that the player failed the shot
particle minecraft:large_smoke ~ ~0.5 ~ 0.5 0.5 0.5 0.001 8 normal

# Plays fail sound effect for all players
playsound minecraft:block.note_block.didgeridoo master @a ~ ~ ~ 50 1

# Gives the finished tag to the player if they reach their max number of shots, this helps the game realise when all players are finished
execute as @a[tag=22turn] if score @s 22turns matches 6.. run tag @s add finished

# Checks if there is a player who hasn't finished, if so it runs the next shot for the next player in 1.25 seconds
execute if score ingame 22scores matches 2 if entity @a[tag=ingame,tag=!finished] run schedule function games:22/new_shot 1.25s

# Checks if there is a player who hasn't finished, if not then it schedules the end function in 10 ticks
execute if score ingame 22scores matches 2 unless entity @a[tag=ingame,tag=!finished] run schedule function games:22/endrace 10t

# Displays angry particles above the player who took the shot's head, like in wii party
execute at @a[tag=22turn] run particle minecraft:angry_villager ~ ~2 ~ 0.5 0.5 0.5 0.001 10 force
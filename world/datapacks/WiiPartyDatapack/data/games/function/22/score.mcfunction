# Kills the slime, tps them into the void first to remove the death animation and particles
tp @s ~ -70 ~
kill @s

kill @e[type=armor_stand,tag=balldisplay]


# Displays particles around where the ball was to show that the player scores the shot
particle minecraft:firework ~ ~0.5 ~ 1 1 01 0.1 25 normal

# Plays victory ding sound effect for all players
playsound minecraft:entity.player.levelup master @a ~ ~ ~ 5 1.5

# Increments the player who took the shot's total goals score by 1 to show that they scores
scoreboard players add @a[tag=22turn] 22goals 1

# Gives the finished tag to the player if they reach their max number of shots, this helps the game realise when all players are finished
execute as @a[tag=22turn] if score @s 22turns matches 6.. run tag @s add finished

# Checks if there is a player who hasn't finished, if so it runs the next shot for the next player in 1.25 seconds
execute if score ingame 22scores matches 2 if entity @a[tag=ingame,tag=!finished] run schedule function games:22/new_shot 1.25s

# Checks if there is a player who hasn't finished, if not then it schedules the end function in 10 ticks
execute if score ingame 22scores matches 2 unless entity @a[tag=ingame,tag=!finished] run schedule function games:22/endrace 10t

# Displays happy particles above the player who took the shot's head
execute at @a[tag=22turn] run particle minecraft:happy_villager ~ ~2 ~ 0.5 0.5 0.5 0.001 20 force

function games:22/display
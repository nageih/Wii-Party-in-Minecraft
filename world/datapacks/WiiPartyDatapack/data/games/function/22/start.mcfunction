function general:reset_tags

# Sets the ingame score to 1, indicating that the game is starting
scoreboard players set ingame 22scores 1

# Sets the global minigame score to the current minigame number, this is to ensure that the tick function is being run
scoreboard players set global minigame 22

# Ding sound effect
execute as @a[tag=playing] at @s run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 3 0.7

# These tellraws explain the game
tellraw @a[tag=playing] ""
tellraw @a[team=blue] [{"translate":"game.GoalGettersName","color":"#0088ff","bold":true,"underlined": true}]
tellraw @a[team=red] [{"translate":"game.GoalGettersName","color":"red","bold":true,"underlined": true}]
tellraw @a[team=green] [{"translate":"game.GoalGettersName","color":"green","bold":true,"underlined": true}]
tellraw @a[team=orange] [{"translate":"game.GoalGettersName","color":"gold","bold":true,"underlined": true}]
tellraw @a[tag=playing,tag=!ingame] [{"translate":"game.GoalGettersName","color":"light_purple","bold":true,"underlined": true}]
tellraw @a[tag=playing] ""
tellraw @a[tag=playing] [{"translate":"game.HowToPlay","color":"gray","bold":true}]
tellraw @a[tag=playing] [{"translate":"game.GoalGetters.How.1","color":"gray","with":[{"text":"-"}]}]
tellraw @a[tag=playing] [{"translate":"game.GoalGetters.How.2","color":"gray","with":[{"text":"-"}]}]
tellraw @a[tag=playing] [{"translate":"game.GoalGetters.How.3","color":"gray","with":[{"text":"-"}]}]
tellraw @a[tag=playing] ""

# Teleport the players to the minigame
spreadplayers 22939 23000 5 5 true @a[tag=ingame]
# Teleport the spectators to the minigame
spreadplayers 22929 23000 10 10 true @a[tag=playing,tag=!ingame]

# Give all players the weakness effect to make sure they can't punch other players to throw them off, this effect is cleared when it is their turn to shoot however
effect give @a[tag=ingame] minecraft:weakness infinite 255 true

# Runs a function that gives all players a unique scoreboard value, used to determine their position on taking their shot.
function games:22/start_order

# Summons the armor stands meant to signify the balls on the side.
# Helpful for players to know the size of the ball they are going to hit
schedule function games:22/spawn_balls 5t

# Stores the value of players in the players= score 
execute store result score players= 22scores if entity @a[tag=ingame]

# Sets the value of the balls= score depending on the number of players
# This score is used to determine how many total balls need to appear on the side, to make sure that there aren't extra balls visible when the game ends
execute if score players= 22scores matches 1 run scoreboard players set balls= 22scores 4
execute if score players= 22scores matches 2 run scoreboard players set balls= 22scores 10
execute if score players= 22scores matches 3 run scoreboard players set balls= 22scores 16
execute if score players= 22scores matches 4 run scoreboard players set balls= 22scores 22

# Schedules the next segment, which will display a title
schedule function games:22/title1 3s

function games:22/display
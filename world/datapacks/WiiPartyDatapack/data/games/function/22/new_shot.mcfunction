# Gives the player who just had their shot weakness so that they can't PvP other players
effect give @a[tag=22turn] minecraft:weakness infinite 255 true

# Removes the 22turn tag from the player who just had their turn
tag @a remove 22turn

# Increments the current= score by 1 so that it can check for the next player in line
scoreboard players add current= 22order 1
# Checks if a player has the same score as the current= score, if so it gives them a tag
execute as @a[tag=ingame] if score @s 22order = current= 22order run tag @s add 22turn

# If there is no player with the tag then it means the current= score is too high. To fix it sets the current= score back to 1 and gives the player who is first in order the tag
execute unless entity @a[tag=22turn] run scoreboard players set current= 22order 1
execute unless entity @a[tag=22turn] run tag @a[scores={22order=1}] add 22turn

# Teleports the new player taking the shot to their spot to hit the ball
tp @a[tag=22turn] 22930 13 23001.0

# Removes the new players taking the shot's weakness so that they are able to actaully punch the slime (ball)
effect clear @a[tag=22turn] minecraft:weakness

# Increases the score that tracks the number of turns a player has had for the player who is taking the next shot
scoreboard players add @a[tag=22turn] 22turns 1

# Schedules the function that summons a new ball for the player to hit in 1.25 seconds
schedule function games:22/new_ball 1.25s

# Increases the totalturns= score 1 by one, this tracks how many total shots have been taken so that the number of balls on the side is correct
scoreboard players add totalturns= 22scores 1

# Runs the function to move the balls to the next spot in the line + summon a new ball
function games:22/move_balls
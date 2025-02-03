# Resets the global minigame score after the game ends
execute if score playing= lobby matches 1 if score testing options matches 0 run scoreboard players reset global minigame

# Schedules the the draw segment in 12 ticks
execute if score playing= lobby matches 1 if score testing options matches 0 run schedule function board:draw/startstart 1t

# Return to lobby if playing just minigame
execute if score playing= lobby matches 2 run schedule function lobby:return_to_lobby 1t


# Resets scores from the minigame
scoreboard players set start 22scores 0
scoreboard players set ingame 22scores 0
scoreboard players reset balls= 22scores
scoreboard players reset totalturns= 22scores
scoreboard players reset players= 22scores
scoreboard players reset @a 22goals
scoreboard players reset @a 22turns

# Kills all the ball armor stands, just incase 
tp @e[type=slime,tag=ball] ~ -70 ~
kill @e[type=slime,tag=ball]
kill @e[type=minecraft:armor_stand,tag=ball]
kill @e[type=armor_stand,tag=balldisplay]

scoreboard objectives setdisplay sidebar

# Removes the 22turn tag from all players
tag @a remove 22turn

# Removes the finished tag from all players, this tag is given to them once they complete all their shots
tag @a remove finished

scoreboard players set enabled= specOptions 0


schedule clear games:22/end
schedule clear games:22/new_shot
schedule clear games:22/endrace
schedule clear games:22/apply_motion
schedule clear games:22/new_ball
schedule clear games:22/spawn_balls
schedule clear games:22/title1
schedule clear games:22/title2
schedule clear games:22/begin
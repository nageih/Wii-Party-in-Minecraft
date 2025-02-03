# Resets the global minigame score after the game ends
execute if score playing= lobby matches 1 if score testing options matches 0 run scoreboard players reset global minigame

# Schedules the the draw segment in 12 ticks
execute if score playing= lobby matches 1 if score testing options matches 0 run schedule function board:draw/startstart 1t

# Return to lobby if playing just minigame
execute if score playing= lobby matches 2 run schedule function lobby:return_to_lobby 1t


# Resets scores
scoreboard players set ingame= 36scores 0
scoreboard players reset @a 36order

# Removes all tags
tag @a remove 36turn
tag @a remove 36finished

# Kills all entities
kill @e[type=item_display,tag=36card]

# Puts all players who have died back into adventure
gamemode adventure @a[tag=ingame]

# Hides the scoreboard
scoreboard objectives setdisplay sidebar

# Clears function scheduled if ended early
schedule clear games:36/begin
schedule clear games:36/end
schedule clear games:36/new_turn
schedule clear games:36/pick_valid
schedule clear games:36/pick_invalid
schedule clear games:36/new_turn
schedule clear games:36/finish


effect clear @a[tag=playing] night_vision
effect clear @a[tag=ingame] invisibility

schedule clear games:36/play_song 

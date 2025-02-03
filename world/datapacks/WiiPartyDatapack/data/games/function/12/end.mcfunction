#   Author        =   @ T4Bl3rUs
#   Description   =   Remove tags and clear useless entities
#   Called By     =   games:12/endrace

# Resets the global minigame score after the game ends
execute if score playing= lobby matches 1 if score testing options matches 0 run scoreboard players reset global minigame

# Schedules the the draw segment in 12 ticks
execute if score playing= lobby matches 1 if score testing options matches 0 run schedule function board:draw/startstart 1t

# Return to lobby if playing just minigame
execute if score playing= lobby matches 2 run schedule function lobby:return_to_lobby 1t


#Clear leftovers from the game
function general:reset_tags
tag @a remove caught
tag @a remove solo
kill @e[type=minecraft:area_effect_cloud,tag=game12headlock]
effect clear @a
scoreboard players set enabled= specOptions 0

schedule clear games:12/cd
schedule clear games:12/end
schedule clear games:12/title1
schedule clear games:12/title2_2
schedule clear games:12/title2
schedule clear games:12/begin_2
schedule clear games:12/begin 

team modify blue nametagVisibility always
team modify red nametagVisibility always
team modify green nametagVisibility always
team modify yellow nametagVisibility always

schedule clear games:12/play_song

# Resets the global minigame score after the game ends
execute if score playing= lobby matches 1 if score testing options matches 0 run scoreboard players reset global minigame

# Schedules the the draw segment in 12 ticks
execute if score playing= lobby matches 1 if score testing options matches 0 run schedule function board:draw/startstart 1t

# Return to lobby if playing just minigame
execute if score playing= lobby matches 2 run schedule function lobby:return_to_lobby 1t

# Resets scores from the minigame
scoreboard players set ingame 1scores 0
scoreboard players set level= 1scores 0
scoreboard players reset alive= 1scores
scoreboard players reset @a 1score
scoreboard players reset @a 1damage

# Removes the dead tag from all players
tag @a remove dead

# Puts all players ingame into adventure as some of them might be in spectator if they died
gamemode adventure @a[tag=ingame]

# Gives all players saturation so they stop taking hunger
effect give @a[tag=ingame] minecraft:saturation infinite 255 true

# Gives all players instant health just incase they took damage in the minigame
effect give @a[tag=ingame] minecraft:instant_health 3 10 true

# Kills all the entities used
kill @e[type=minecraft:area_effect_cloud,tag=cloud]
kill @e[type=minecraft:area_effect_cloud,tag=sidecheck]

# Removes the scoreboard from the sidebar
scoreboard objectives setdisplay sidebar

function games:1/reset

scoreboard players set enabled= specOptions 0

# Clears schedules
schedule clear games:1/end
schedule clear general:fade/main 
schedule clear games:1/newround
schedule clear games:1/endgame
schedule clear games:1/endround
schedule clear games:1/countdown/1
schedule clear games:1/countdown/2
schedule clear games:1/countdown/3
schedule clear games:1/countdown/4
schedule clear games:1/countdown/5
schedule clear games:1/countdown/6
schedule clear games:1/countdown/7
schedule clear games:1/countdown/8
schedule clear games:1/play_song
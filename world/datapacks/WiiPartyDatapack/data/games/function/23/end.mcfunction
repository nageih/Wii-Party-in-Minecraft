
execute as @e[type=marker,tag=23crash] at @s run function games:23/remove_crash
function games:23/set_rails

# Kills all the entities used
kill @e[type=item_display,tag=23cart]
kill @e[type=minecart,tag=23cart]
kill @e[type=marker,tag=23crash]
#kill @e[type=glow_item_frame,tag=23rail]

# Resets the global minigame score after the game ends
execute if score playing= lobby matches 1 if score testing options matches 0 run scoreboard players reset global minigame

# Schedules the the draw segment in 12 ticks
execute if score playing= lobby matches 1 if score testing options matches 0 run schedule function board:draw/startstart 1t

# Return to lobby if playing just minigame
execute if score playing= lobby matches 2 run schedule function lobby:return_to_lobby 1t

# Resets scores from the minigame
scoreboard players set ingame 23scores 0
scoreboard players set choosing= 23scores 0
scoreboard players reset phase= 23scores
scoreboard players reset players= 23scores
scoreboard players reset alive= 23scores
scoreboard players reset @a 23turndelay

# Removes the dead tag from all players
tag @a remove dead
tag @a remove 23left
tag @a remove 23right
tag @a remove 23forward
tag @a remove 23placed

# Puts all players ingame into adventure as some of them might be in spectator if they died
gamemode adventure @a[tag=ingame]

# Gives all players saturation so they stop taking hunger
effect give @a[tag=ingame] minecraft:saturation infinite 255 true

# Gives all players instant health just incase they took damage in the minigame
effect give @a[tag=ingame] minecraft:instant_health 3 10 true



# Removes the scoreboard from the sidebar
scoreboard objectives setdisplay sidebar

scoreboard players set enabled= specOptions 0

schedule clear games:23/starttitle
schedule clear games:23/start_choose
schedule clear games:23/end

fill 24151 14 24015 24214 14 24019 air
fill 24121 21 24019 24100 21 24015 air
fill 24064 29 24019 24031 29 24015 air
fill 24000 37 24019 23972 37 24015 air

schedule clear games:23/play_song

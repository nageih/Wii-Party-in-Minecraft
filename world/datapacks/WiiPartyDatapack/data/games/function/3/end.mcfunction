#   Author        =   @ JevinLevin
#   Description   =   Resets the minigame and starts the new segment
#   Called By     =   games:3/endgame

# Resets the global minigame score after the game ends
execute if score playing= lobby matches 1 if score testing options matches 0 run scoreboard players reset global minigame

# Schedules the the draw segment in 12 ticks
execute if score playing= lobby matches 1 if score testing options matches 0 run schedule function board:draw/startstart 1t

# Return to lobby if playing just minigame
execute if score playing= lobby matches 2 run schedule function lobby:return_to_lobby 1t


# Kill all entities used for the mingame that arent needed anymore
kill @e[type=minecraft:area_effect_cloud,tag=2chain]
kill @e[type=minecraft:falling_block,tag=barrel]
kill @e[type=armor_stand,tag=3player]

# Resets all scores
scoreboard players reset start= 3scores
scoreboard players reset timer= 3scores
scoreboard players reset @a 3time
scoreboard players reset timer= 3scores


# Hides the scoreboard
scoreboard objectives setdisplay sidebar

# Removes all tags
tag @a remove failed
tag @a remove stopped

# Removes all the barrels and chains left in the map
fill 2994 37 3003 3009 13 2981 minecraft:air replace minecraft:chain
fill 2994 37 3003 3009 13 2981 minecraft:air replace minecraft:barrel

scoreboard players set enabled= specOptions 0


schedule clear games:3/end 
schedule clear general:fade/main 
schedule clear games:3/endgame 
schedule clear games:3/droptitle
schedule clear games:3/drop
schedule clear games:3/setup
schedule clear games:3/starttitle
schedule clear games:3/set_heads
schedule clear games:3/begin
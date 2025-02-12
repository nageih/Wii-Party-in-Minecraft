# Resets the global minigame score after the game ends
execute if score playing= lobby matches 1 if score testing options matches 0 run scoreboard players reset global minigame

# Schedules the the draw segment in 12 ticks
execute if score playing= lobby matches 1 if score testing options matches 0 run schedule function board:draw/startstart 1t

# Return to lobby if playing just minigame
execute if score playing= lobby matches 2 run schedule function lobby:return_to_lobby 1t


# Resets scores
scoreboard players set ingame= 28scores 0
scoreboard players reset timer= 28scores
scoreboard players reset target= 28scores
scoreboard players reset closing= 28scores
scoreboard players reset closetimer= 28scores
scoreboard players reset revealing= 28scores
scoreboard players reset revealtimer= 28scores

# Removes all tags
tag @a remove 28stopped
tag @a remove 28exact

# Unmount
execute as @a[tag=ingame] run ride @s dismount
effect clear @a[tag=ingame] invisibility
effect clear @a[tag=playing] night_vision


# Kills all entities
kill @e[type=text_display,tag=28timer]
kill @e[type=text_display,tag=28main]
kill @e[type=item_display,tag=28close]
tp @e[type=magma_cube,tag=28display] ~ -70 ~
kill @e[type=magma_cube,tag=28display]
kill @e[type=armor_stand,tag=28player]

# Puts all players who have died back into adventure
gamemode adventure @a[tag=ingame]

# Hides the scoreboard
scoreboard objectives setdisplay sidebar

# Clears function scheduled if ended early
schedule clear games:28/begin
schedule clear games:28/ready
schedule clear games:28/end
schedule clear games:28/set_heads
schedule clear games:28/play_song



clear @a carrot_on_a_stick[minecraft:custom_data={28stop:1b}]
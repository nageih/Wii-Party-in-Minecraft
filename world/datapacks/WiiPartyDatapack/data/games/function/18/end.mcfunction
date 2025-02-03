# Resets the global minigame score after the game ends
execute if score playing= lobby matches 1 if score testing options matches 0 run scoreboard players reset global minigame

# Schedules the the draw segment in 12 ticks
execute if score playing= lobby matches 1 if score testing options matches 0 run schedule function board:draw/startstart 1t

# Return to lobby if playing just minigame
execute if score playing= lobby matches 2 run schedule function lobby:return_to_lobby 1t


# Removes all tags
tag @a remove finished

# Kills all entities
execute as @e[type=minecraft:magma_cube,x=19157,y=45,z=19154,distance=..100] at @s run tp @s ~ -10000 ~

# Hides the scoreboard
scoreboard objectives setdisplay sidebar


# Clears effects
effect clear @a[tag=ingame] minecraft:weakness
effect clear @a[tag=ingame] minecraft:strength

# Sets gamemode
gamemode adventure @a[tag=playing]

scoreboard players set enabled= specOptions 0

scoreboard players reset time= 18scores
scoreboard players reset ingame= 18scores

clear @a carrot_on_a_stick


schedule clear games:18/end
schedule clear games:18/start_title
schedule clear games:18/begin
schedule clear games:18/start_play
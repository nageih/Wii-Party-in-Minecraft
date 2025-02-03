


scoreboard players set start2 13scores 0
scoreboard players set start 13scores 0
scoreboard players set ingame 13scores 0
scoreboard players set ending 13scores 0


tag @a remove warnedl
tag @a remove warnedm
tag @a remove finished
tag @a remove dead


kill @e[type=minecraft:area_effect_cloud,tag=13end]
kill @e[type=marker,tag=flag]
kill @e[type=text_display,tag=13info]

# Puts all players ingame into adventure as some of them might be in spectator if they died
gamemode adventure @a[tag=ingame]

# Gives all players saturation so they stop taking hunger
effect give @a[tag=ingame] minecraft:saturation infinite 255 true

# Gives all players instant health just incase they took damage in the minigame
effect give @a[tag=ingame] minecraft:instant_health 3 10 true


effect clear @a[tag=ingame] minecraft:slowness


scoreboard players set enabled= specOptions 0

# Removes the scoreboard from the sidebar
scoreboard objectives setdisplay sidebar

schedule clear games:13/title1
schedule clear games:13/title2
schedule clear games:13/starttimer
schedule clear games:13/end

# Clears all players slowness and jump boost, given to stop playes from moving during the end animation
effect clear @a[tag=ingame] minecraft:slowness
execute as @a[tag=ingame] run attribute @s minecraft:generic.jump_strength base set 0.41999998688697815

# Resets the global minigame score after the game ends
execute if score playing= lobby matches 1 if score testing options matches 0 run scoreboard players reset global minigame

# Schedules the the draw segment in 12 ticks
execute if score playing= lobby matches 1 if score testing options matches 0 run schedule function board:draw/startstart 1t

# Return to lobby if playing just minigame
execute if score playing= lobby matches 2 run schedule function lobby:return_to_lobby 1t
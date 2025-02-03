function games:48/remove_signs


# Resets the global minigame score after the game ends
execute if score playing= lobby matches 1 if score testing options matches 0 run scoreboard players reset global minigame

# Schedules the the draw segment in 12 ticks
execute if score playing= lobby matches 1 if score testing options matches 0 run schedule function board:draw/startstart 1t

# Return to lobby if playing just minigame
execute if score playing= lobby matches 2 run schedule function lobby:return_to_lobby 1t

# Remove white carpet
# Place line showing target
execute store result storage game48 target double 1 run scoreboard players get distance= 48scores
execute positioned 48994 16 49132 run function games:48/remove_line with storage game48

# Resets scores
scoreboard players set ingame= 48scores 0

# Removes all tags
tag @a remove 48locked

# Kills all entities
kill @e[type=item_display,tag=48cutscene]
kill @e[type=armor_stand,tag=48player]

# Gets rid of all the bossbars
bossbar set minecraft:48bluetimer visible false
bossbar set minecraft:48redtimer visible false
bossbar set minecraft:48greentimer visible false
bossbar set minecraft:48orangetimer visible false
bossbar set minecraft:48spectimer visible false
bossbar set minecraft:48bluetimer players
bossbar set minecraft:48redtimer players
bossbar set minecraft:48greentimer players
bossbar set minecraft:48orangetimer players
bossbar set minecraft:48spectimer players


# Puts all players who have died back into adventure
gamemode adventure @a[tag=ingame]

# Hides the scoreboard
scoreboard objectives setdisplay sidebar

# Clears function scheduled if ended early
schedule clear games:48/begin
schedule clear games:48/end
schedule clear games:48/start_cutscene
schedule clear games:48/play_song


scoreboard players set enabled= specOptions 0


# Enable movement
execute as @a[tag=ingame] run attribute @s minecraft:generic.movement_speed base set 0.1
execute as @a[tag=ingame] run attribute @s minecraft:generic.jump_strength base set 0.41999998688697815
#   Author        =   @ T4Bl3rUs
#   Description   =   Ends the game
#   Called By     =   games:24/endrace

# Resets the global minigame score after the game ends
execute if score playing= lobby matches 1..2 if score testing options matches 0 run scoreboard players reset global minigame

# Schedules the the draw segment in 12 ticks
execute if score playing= lobby matches 1 if score testing options matches 0 run schedule function board:draw/startstart 1t

title @a[tag=playing] actionbar ""

kill @e[type=minecraft:minecart,tag=maze]
kill @e[type=armor_stand,tag=24player]
kill @e[type=marker,tag=24pad]
kill @e[type=item_display,tag=24pad]

effect clear @a[tag=ingame] speed
effect clear @a[tag=ingame] slowness
effect clear @a[tag=ingame] invisibility

#Remove tags
tag @a remove finished
tag @a remove wasd_test.do_unmounted

scoreboard players set enabled= specOptions 0
scoreboard players reset @a 24timer

scoreboard objectives setdisplay sidebar

# Return to lobby if playing just minigame
execute if score playing= lobby matches 2 run schedule function lobby:return_to_lobby 1t


schedule clear games:24/end
schedule clear games:24/title1
schedule clear games:24/title2
schedule clear games:24/begin
schedule clear games:24/set_heads
schedule clear games:24/play_song

# Gets rid of all the bossbars
bossbar set minecraft:24bluetimer visible false
bossbar set minecraft:24redtimer visible false
bossbar set minecraft:24greentimer visible false
bossbar set minecraft:24orangetimer visible false
bossbar set minecraft:24spectimer visible false
bossbar set minecraft:24bluetimer players
bossbar set minecraft:24redtimer players
bossbar set minecraft:24greentimer players
bossbar set minecraft:24orangetimer players
bossbar set minecraft:24spectimer players
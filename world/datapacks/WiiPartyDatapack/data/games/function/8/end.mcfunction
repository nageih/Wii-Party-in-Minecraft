
tp @e[type=minecraft:magma_cube,tag=carrot] 0 -70 0
kill @e[type=minecraft:magma_cube,tag=carrot]
kill @e[type=item_display,tag=carrot]
kill @e[type=item,nbt={Item:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{knife:1b}}}}]


tag @a remove finished

scoreboard players reset ingame 8scores
scoreboard players reset @a[tag=ingame] 8hits

bossbar set minecraft:8bluechop players
bossbar set minecraft:8redchop players
bossbar set minecraft:8greenchop players
bossbar set minecraft:8orangechop players

clear @a[tag=playing]

# Resets the global minigame score after the game ends
execute if score playing= lobby matches 1 if score testing options matches 0 run scoreboard players reset global minigame

# Schedules the the draw segment in 12 ticks
execute if score playing= lobby matches 1 if score testing options matches 0 run schedule function board:draw/startstart 1t

# Return to lobby if playing just minigame
execute if score playing= lobby matches 2 run schedule function lobby:return_to_lobby 1t




scoreboard players set enabled= specOptions 0

scoreboard objectives setdisplay sidebar

# Resets the global minigame score after the game ends
scoreboard players reset global minigame

# Gives all players saturation so they stop taking hunger
effect give @a[tag=ingame] minecraft:saturation infinite 255 true

# Gives all players instant health just incase they took damage in the minigame
effect give @a[tag=ingame] minecraft:instant_health 3 10 true

schedule clear games:8/end
schedule clear games:8/countdown/start
schedule clear games:8/startchopping
schedule clear games:6/countdown/end
schedule clear games:8/play_song


# Gets rid of all the bossbars
bossbar set minecraft:8bluetimer visible false
bossbar set minecraft:8redtimer visible false
bossbar set minecraft:8greentimer visible false
bossbar set minecraft:8orangetimer visible false
bossbar set minecraft:8spectimer visible false
bossbar set minecraft:8bluetimer players
bossbar set minecraft:8redtimer players
bossbar set minecraft:8greentimer players
bossbar set minecraft:8orangetimer players
bossbar set minecraft:8spectimer players
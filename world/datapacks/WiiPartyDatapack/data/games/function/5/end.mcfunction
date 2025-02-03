#   Author        =   @ JevinLevin
#   Description   =   Resets the minigame and starts the new segment
#   Called By     =   games:5/endgame

# Resets the global minigame score after the game ends
execute if score playing= lobby matches 1 if score testing options matches 0 run scoreboard players reset global minigame

# Schedules the the draw segment in 12 ticks
execute if score playing= lobby matches 1 if score testing options matches 0 run schedule function board:draw/startstart 1t

# Return to lobby if playing just minigame
execute if score playing= lobby matches 2 run schedule function lobby:return_to_lobby 1t


# Kill all entities used for the mingame that arent needed anymore
kill @e[type=minecraft:armor_stand,tag=firework]
kill @e[type=minecraft:slime,tag=firework]
kill @e[type=minecraft:item_frame,tag=detonator]
kill @e[type=minecraft:villager,tag=detonator]
tp @e[type=minecraft:item_display,tag=specStand] ~ -70 ~
tp @e[type=minecraft:item_display,tag=specMain] ~ -70 ~
kill @e[type=minecraft:item_display,tag=specStand]
kill @e[type=minecraft:item_display,tag=specMain]
kill @e[type=minecraft:area_effect_cloud,tag=specMain]


# Resets all scores
scoreboard players reset ingame= 5scores
scoreboard players reset players= 5scores
scoreboard players reset launchTimer= 5scores
scoreboard players reset endTimer= 5scores
scoreboard players reset typeNo= 5scores
scoreboard players reset patternNo= 5scores
scoreboard players reset colorNo= 5scores


# Hides the scoreboard
scoreboard objectives setdisplay sidebar

# Removes all tags
tag @a remove selected
tag @a remove scored
tag @a remove lookedAt


# Removes the raycast detection blocks
fill 5007 0 5012 4996 2 5010 minecraft:air

team modify blue seeFriendlyInvisibles true
team modify red seeFriendlyInvisibles true
team modify green seeFriendlyInvisibles true
team modify orange seeFriendlyInvisibles true

gamemode adventure @a[tag=ingame]

time set noon

clear @a[tag=ingame] minecraft:carrot_on_a_stick[minecraft:custom_data={5pointer:1b}]

scoreboard players set enabled= specOptions 0

schedule clear games:5/end
schedule clear general:fade/main 
schedule clear games:5/end_game
schedule clear games:5/begin
schedule clear games:5/spawn_fireworks 
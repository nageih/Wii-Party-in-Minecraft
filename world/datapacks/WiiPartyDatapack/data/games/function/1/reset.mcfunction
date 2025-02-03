

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

# Clears all scheduled function
schedule clear games:1/end
schedule clear general:fade/main
schedule clear games:1/newround
schedule clear games:1/endgame
schedule clear games:1/endround
schedule clear games:1/starttitle
schedule clear games:1/closeblue1/stage2
schedule clear games:1/closeblue1/stage3
schedule clear games:1/closeblue1/stage4
schedule clear games:1/closeblue1/stage5
schedule clear games:1/closeblue2/stage2
schedule clear games:1/closeblue2/stage3
schedule clear games:1/closeblue2/stage4
schedule clear games:1/closeblue2/stage5
schedule clear games:1/closeblue3/stage2
schedule clear games:1/closeblue3/stage3
schedule clear games:1/closeblue3/stage4
schedule clear games:1/closeblue3/stage5
schedule clear games:1/closered1/stage2
schedule clear games:1/closered1/stage3
schedule clear games:1/closered1/stage4
schedule clear games:1/closered1/stage5
schedule clear games:1/closered2/stage2
schedule clear games:1/closered2/stage3
schedule clear games:1/closered2/stage4
schedule clear games:1/closered2/stage5
schedule clear games:1/closered3/stage2
schedule clear games:1/closered3/stage3
schedule clear games:1/closered3/stage4
schedule clear games:1/closered3/stage5
schedule clear games:1/openblue1/stage2
schedule clear games:1/openblue1/stage3
schedule clear games:1/openblue1/stage4
schedule clear games:1/openblue1/stage5
schedule clear games:1/openblue2/stage2
schedule clear games:1/openblue2/stage3
schedule clear games:1/openblue2/stage4
schedule clear games:1/openblue2/stage5
schedule clear games:1/openblue3/stage2
schedule clear games:1/openblue3/stage3
schedule clear games:1/openblue3/stage4
schedule clear games:1/openblue3/stage5
schedule clear games:1/openred1/stage2
schedule clear games:1/openred1/stage3
schedule clear games:1/openred1/stage4
schedule clear games:1/openred1/stage5
schedule clear games:1/openred2/stage2
schedule clear games:1/openred2/stage3
schedule clear games:1/openred2/stage4
schedule clear games:1/openred2/stage5
schedule clear games:1/openred3/stage2
schedule clear games:1/openred3/stage3
schedule clear games:1/openred3/stage4
schedule clear games:1/openred3/stage5

ride @a[tag=selectChoose,limit=1] dismount

kill @e[type=marker,tag=selectMarker]
tp @e[type=magma_cube,tag=selectSpectate] 0 -250 0
kill @e[type=magma_cube,tag=selectSpectate]

scoreboard players reset timer= minigameSelect
scoreboard players reset selected= minigameSelect
scoreboard players reset final= minigameSelect
scoreboard players reset choosing= minigameSelect

tag @a remove selectChoose

gamemode adventure @a[tag=ingame]
effect clear @a[tag=playing] invisibility

schedule clear board:select/start_choose
schedule clear board:select/end
schedule clear general:fade/main
schedule clear board:select/start_select
schedule clear board:select/display_minigames
schedule clear board:select/choose_intro
schedule clear board:select/choose_left

stopsound @a[tag=playing] voice

# schedule clear games:1/start
# schedule clear games:2/start
# schedule clear games:3/start
# schedule clear games:4/start
# schedule clear games:5/start
# schedule clear games:6/start
# schedule clear games:8/start
# schedule clear games:10/start
# schedule clear games:13/start
# schedule clear games:18/start
# schedule clear games:22/start
# schedule clear games:23/start
# schedule clear games:26/start
# schedule clear games:28/start
# schedule clear games:36/start
# schedule clear games:38/start
# schedule clear games:24/start
# schedule clear games:48/start
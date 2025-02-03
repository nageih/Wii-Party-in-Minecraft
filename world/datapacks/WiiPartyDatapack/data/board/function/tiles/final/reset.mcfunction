
scoreboard players reset final= tiles
scoreboard players reset addResult= tiles
scoreboard players set eventRoll= tiles 0
scoreboard players reset wintimer= tiles

setblock -193 61 50 air
setblock -193 61 62 air

schedule clear board:tiles/final/win
schedule clear board:tiles/final/fail
schedule clear board:tiles/final/start
schedule clear board:tiles/final/fireworks/1
schedule clear board:tiles/final/fireworks/2
schedule clear board:tiles/final/fireworks/3
schedule clear board:tiles/final/fireworks/4
schedule clear board:tiles/final/fireworks/4
schedule clear board:tiles/final/fireworks/4
schedule clear board:tiles/final/end
schedule clear board:tiles/final/begin
schedule clear board:tiles/final/reset
schedule clear board:tiles/final/failanim
#schedule clear board:dice_roll/end_go
schedule clear board:tiles/final/explain
schedule clear board:tiles/final/start_title

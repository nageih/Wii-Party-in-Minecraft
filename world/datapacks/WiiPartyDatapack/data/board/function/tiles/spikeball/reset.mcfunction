


scoreboard players reset spikeball= tiles
scoreboard players reset addResult= tiles
scoreboard players set eventRoll= tiles 0

team modify blue collisionRule never
team modify red collisionRule never
team modify green collisionRule never
team modify orange collisionRule never

schedule clear board:tiles/spikeball/win
schedule clear board:tiles/spikeball/fail
schedule clear board:tiles/spikeball/reset 
#schedule clear board:dice_roll/end_go 
schedule clear board:tiles/spikeball/reset 
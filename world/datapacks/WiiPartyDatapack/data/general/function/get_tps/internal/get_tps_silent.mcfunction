execute store result score %tps= game run worldborder get
scoreboard players remove %tps= game 30000000
# Grows 100 blocks / tick (at 20 tps)
# Set it to 200000 instead of 2000 to have 2 decimals of precission
scoreboard players set tps= game 20000000
scoreboard players operation tps= game /= %tps= game
scoreboard players operation %tps= game = tps= game
scoreboard players operation %tps= game %= 100 Numbers
scoreboard players operation tps= game /= 100 Numbers
function general:get_tps/internal/start_silent
execute store result score %tps= game run worldborder get
scoreboard players remove %tps= game 30000000
# Grows 100 blocks / tick (at 20 tps)
# Set it to 200000 instead of 2000 to have 2 decimals of precission
scoreboard players set tps= game 20000000
scoreboard players operation tps= game /= %tps= game
scoreboard players operation %tps= game = tps= game
scoreboard players operation %tps= game %= 100 Numbers
scoreboard players operation tps= game /= 100 Numbers
tellraw @a ["",{"text":"The server has ","color":"yellow","type":"text"},{"score":{"name":"tps=","objective":"game"},"color":"green","type":"score"},{"text":".","color":"green","type":"text"},{"score":{"name":"%tps=","objective":"game"},"color":"green","type":"score"},{"text":" tps","color":"yellow","type":"text"}]
execute if score #tps_silent game matches 1 run function general:get_tps/get_tps_silent
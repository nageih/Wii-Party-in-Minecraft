scoreboard players reset pParkour= lobby
scoreboard players reset pMaze= lobby
scoreboard players reset pFinish= lobby

fill -2845 58 -3012 -2845 58 -3008 minecraft:acacia_log[axis=z]
fill -2845 60 -3012 -2845 60 -3008 minecraft:acacia_log[axis=z]
fill -2845 62 -3012 -2845 62 -3008 minecraft:acacia_log[axis=z]
fill -2845 64 -3012 -2845 64 -3008 minecraft:acacia_log[axis=z]
clone -2721 70 -3069 -2729 60 -3062 -2789 61 -3007

execute as @a[tag=lobbyParkour] run function lobby:island/return

tag @a remove lobbyParkour

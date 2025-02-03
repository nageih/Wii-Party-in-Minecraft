execute unless score pParkour= lobby matches 1 run function lobby:parkour/phase_1
execute if score pParkour= lobby matches 1 run function lobby:parkour/phase_2

scoreboard players set pMaze= lobby 1

tp @p -2856 57 -3010 -90 0

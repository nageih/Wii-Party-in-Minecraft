# Checks if the player is at the right tile, and runs the correct function if so
execute if entity @s[gamemode=adventure,x=-302,y=12,z=114,dx=9,dy=4,dz=2,scores={newBoardPos=1}] run schedule function board:tiles/volcano/landed/start 10t append
execute if entity @s[gamemode=adventure,x=-302,y=12,z=96,dx=9,dy=4,dz=2,scores={newBoardPos=2}] run function board:dice_roll/end_go
execute if entity @s[gamemode=adventure,x=-302,y=12,z=84,dx=9,dy=4,dz=2,scores={newBoardPos=3}] run function board:dice_roll/end_go
execute if entity @s[gamemode=adventure,x=-302,y=13,z=66,dx=11,dy=4,dz=2,scores={newBoardPos=4}] run function board:dice_roll/end_go
execute if entity @s[gamemode=adventure,x=-294,y=16,z=55,dx=10,dy=4,dz=2,scores={newBoardPos=5}] run function board:dice_roll/end_go
execute if entity @s[gamemode=adventure,x=-288,y=19,z=39,dx=10,dy=4,dz=2,scores={newBoardPos=6}] run function board:dice_roll/end_go
execute if entity @s[gamemode=adventure,x=-288,y=19,z=39,dx=10,dy=4,dz=2,scores={newBoardPos=7..}] run function board:tiles/ropeswing/start
execute if entity @s[gamemode=adventure,x=-287,y=18,z=22,dx=10,dy=4,dz=2,scores={newBoardPos=7}] run schedule function board:tiles/volcano/landed/start 10t append
execute if entity @s[gamemode=adventure,x=-287,y=14,z=12,dx=10,dy=4,dz=2,scores={newBoardPos=8}] run function board:dice_roll/end_go
execute if entity @s[gamemode=adventure,x=-268,y=14,z=-3,dx=-2,dy=4,dz=7,scores={newBoardPos=9}] run function board:dice_roll/end_go
execute if entity @s[gamemode=adventure,x=-264,y=14,z=-11,dx=12,dy=4,dz=2,scores={newBoardPos=10}] run schedule function board:tiles/volcano/landed/start 10t append
execute if entity @s[gamemode=adventure,x=-271,y=14,z=-22,dx=12,dy=4,dz=2,scores={newBoardPos=11}] run schedule function board:tiles/volcano/landed/start 10t append
execute if entity @s[gamemode=adventure,x=-270,y=13,z=-33,dx=15,dy=4,dz=2,scores={newBoardPos=12}] run schedule function board:tiles/volcano/landed/start 10t append
execute if entity @s[gamemode=adventure,x=-249,y=11,z=-42,dx=-2,dy=5,dz=12,scores={newBoardPos=13}] run function board:dice_roll/end_go
execute if entity @s[gamemode=adventure,x=-241,y=11,z=-36,dx=-2,dy=4,dz=8,scores={newBoardPos=14}] run schedule function board:tiles/volcano/landed/start 10t append
execute if entity @s[gamemode=adventure,x=-239,y=11,z=-26,dx=15,dy=4,dz=5,scores={newBoardPos=15}] run function board:dice_roll/end_go
execute if entity @s[gamemode=adventure,x=-239,y=11,z=-26,dx=15,dy=4,dz=5,scores={newBoardPos=16..}] if score dragonAlive= tiles matches 1 unless score eventRoll= tiles matches 1.. run function board:tiles/dragonwall/start
execute if entity @s[gamemode=adventure,x=-230,y=10,z=-13,dx=9,dy=4,dz=2,scores={newBoardPos=16}] run function board:dice_roll/end_go
execute if entity @s[gamemode=adventure,x=-217,y=11,z=5,dx=9,dy=4,dz=2,scores={newBoardPos=17}] run function board:dice_roll/end_go
execute if entity @s[gamemode=adventure,x=-196,y=12,z=12,dx=2,dy=4,dz=9,scores={newBoardPos=18}] run function board:dice_roll/end_go
execute if entity @s[gamemode=adventure,x=-177,y=12,z=20,dx=2,dy=4,dz=9,scores={newBoardPos=19}] run function board:dice_roll/end_go
execute if entity @s[gamemode=adventure,x=-158,y=12,z=27,dx=2,dy=4,dz=9,scores={newBoardPos=20}] run function board:dice_roll/end_go
execute positioned -149 10 40 if entity @s[gamemode=adventure,distance=..3.2,scores={newBoardPos=21}] run schedule function board:tiles/volcano/landed/start 10t append
execute if entity @s[gamemode=adventure,x=-139,y=7,z=42,dx=2,dy=4,dz=9,scores={newBoardPos=22}] run function board:dice_roll/end_go
execute if entity @s[gamemode=adventure,x=-129,y=7,z=35,dx=2,dy=4,dz=9,scores={newBoardPos=23}] run schedule function board:tiles/volcano/landed/start 10t append
execute if entity @s[gamemode=adventure,x=-123,y=7,z=44,dx=9,dy=4,dz=2,scores={newBoardPos=24}] run schedule function board:tiles/volcano/landed/start 10t append
execute if entity @s[gamemode=adventure,x=-122,y=7,z=55,dx=10,dy=4,dz=2,scores={newBoardPos=25}] run function board:dice_roll/end_go
execute if entity @s[gamemode=adventure,x=-126,y=7,z=70,dx=2,dy=4,dz=9,scores={newBoardPos=26}] run function board:dice_roll/end_go
execute if entity @s[gamemode=adventure,x=-143,y=7,z=66,dx=2,dy=4,dz=9,scores={newBoardPos=27}] run function board:dice_roll/end_go
execute positioned -151 8.5 81 if entity @s[gamemode=adventure,distance=..3.5,scores={newBoardPos=28}] run function board:dice_roll/end_go
execute if entity @s[gamemode=adventure,x=-163,y=12,z=89,dx=9,dy=4,dz=2,scores={newBoardPos=29}] run function board:dice_roll/end_go
execute if entity @s[gamemode=adventure,x=-171,y=14,z=104,dx=9,dy=4,dz=2,scores={newBoardPos=30}] run schedule function board:tiles/volcano/landed/start 10t append
execute if entity @s[gamemode=adventure,x=-171,y=18,z=119,dx=9,dy=4,dz=2,scores={newBoardPos=31}] run function board:dice_roll/end_go
execute if entity @s[gamemode=adventure,x=-186,y=23,z=116,dx=2,dy=4,dz=9,scores={newBoardPos=32}] run schedule function board:tiles/volcano/landed/start 10t append
execute if entity @s[gamemode=adventure,x=-199,y=26,z=110,dx=2,dy=4,dz=9,scores={newBoardPos=33}] run schedule function board:tiles/volcano/landed/start 10t append
execute if entity @s[gamemode=adventure,x=-208,y=25,z=115,dx=2,dy=4,dz=11,scores={newBoardPos=34}] run function board:dice_roll/end_go
execute if entity @s[gamemode=adventure,x=-208,y=25,z=115,dx=2,dy=4,dz=11,scores={newBoardPos=35..}] unless score ribcage= tiles matches 1.. run function board:tiles/ribcage/start
execute if entity @s[gamemode=adventure,x=-231,y=25,z=111,dx=2,dy=4,dz=10,scores={newBoardPos=35}] run function board:dice_roll/end_go
execute if entity @s[gamemode=adventure,x=-244,y=25,z=103,dx=2,dy=4,dz=10,scores={newBoardPos=36}] run schedule function board:tiles/volcano/landed/start 10t append
execute if entity @s[gamemode=adventure,x=-259,y=25,z=96,dx=2,dy=4,dz=12,scores={newBoardPos=37}] run schedule function board:tiles/volcano/landed/start 10t append
execute if entity @s[gamemode=adventure,x=-268,y=25,z=87,dx=9,dy=4,dz=2,scores={newBoardPos=38}] run schedule function board:tiles/volcano/landed/start 10t append
execute if entity @s[gamemode=adventure,x=-262,y=25,z=78,dx=11,dy=4,dz=2,scores={newBoardPos=39}] run schedule function board:tiles/volcano/landed/start 10t append
execute if entity @s[gamemode=adventure,x=-248,y=28,z=69,dx=2,dy=4,dz=10,scores={newBoardPos=40}] run schedule function board:tiles/volcano/landed/start 10t append
execute if entity @s[gamemode=adventure,x=-232,y=33,z=56,dx=2,dy=4,dz=10,scores={newBoardPos=41}] run function board:dice_roll/end_go
execute positioned -224 35 54 if entity @s[gamemode=adventure,distance=..3,scores={newBoardPos=42}] run function board:dice_roll/end_go
execute positioned -220 35 51 if entity @s[gamemode=adventure,distance=..2,scores={newBoardPos=43}] run function board:dice_roll/end_go
execute positioned -220 35 51 if entity @s[gamemode=adventure,distance=..2,scores={newBoardPos=44..}] unless score jump= tiles matches 1.. run function board:tiles/jump/start
execute positioned -211 33 40 if entity @s[gamemode=adventure,distance=..2,scores={newBoardPos=44}] run function board:dice_roll/end_go
execute positioned -204 29 30 if entity @s[gamemode=adventure,distance=..3,scores={newBoardPos=45}] run schedule function board:tiles/boost/start 10t append
execute if entity @s[gamemode=adventure,x=-199,y=29,z=19,dx=8,dy=4,dz=2,scores={newBoardPos=46}] run function board:dice_roll/end_go
execute if entity @s[gamemode=adventure,x=-198,y=26,z=12,dx=11,dy=5,dz=2,scores={newBoardPos=47}] run schedule function board:tiles/volcano/landed/start 10t append
execute if entity @s[gamemode=adventure,x=-202,y=26,z=-2,dx=8,dy=4,dz=2,scores={newBoardPos=48}] run function board:dice_roll/end_go
execute if entity @s[gamemode=adventure,x=-203,y=25,z=-18,dx=8,dy=4,dz=2,scores={newBoardPos=49}] run schedule function board:tiles/volcano/landed/start 10t append
execute if entity @s[gamemode=adventure,x=-212,y=24,z=-25,dx=8,dy=4,dz=2,scores={newBoardPos=50}] run function board:dice_roll/end_go
execute if entity @s[gamemode=adventure,x=-215,y=21,z=-36,dx=8,dy=4,dz=2,scores={newBoardPos=51}] run function board:dice_roll/end_go
execute if entity @s[gamemode=adventure,x=-206,y=20,z=-54,dx=2,dy=4,dz=10,scores={newBoardPos=52}] run schedule function board:tiles/volcano/landed/start 10t append
execute if entity @s[gamemode=adventure,x=-195,y=20,z=-32,dx=11,dy=4,dz=2,scores={newBoardPos=53}] run schedule function board:tiles/volcano/landed/start 10t append
execute if entity @s[gamemode=adventure,x=-183,y=20,z=-17,dx=10,dy=4,dz=2,scores={newBoardPos=54}] run schedule function board:tiles/volcano/landed/start 10t append
execute if entity @s[gamemode=adventure,x=-169,y=20,z=-11,dx=2,dy=4,dz=10,scores={newBoardPos=55}] run function board:dice_roll/end_go
execute if entity @s[gamemode=adventure,x=-159,y=20,z=-6,dx=2,dy=4,dz=10,scores={newBoardPos=56}] run function board:dice_roll/end_go
execute if entity @s[gamemode=adventure,x=-145,y=20,z=-2,dx=2,dy=4,dz=10,scores={newBoardPos=57}] run schedule function board:tiles/volcano/landed/start 10t append
execute if entity @s[gamemode=adventure,x=-130,y=20,z=1,dx=2,dy=4,dz=10,scores={newBoardPos=58}] run function board:dice_roll/end_go
execute if entity @s[gamemode=adventure,x=-116,y=20,z=12,dx=2,dy=4,dz=10,scores={newBoardPos=59}] run function board:dice_roll/end_go
execute if entity @s[gamemode=adventure,x=-111,y=20,z=26,dx=10,dy=4,dz=2,scores={newBoardPos=60}] run schedule function board:tiles/volcano/landed/start 10t append
execute if entity @s[gamemode=adventure,x=-108,y=20,z=43,dx=10,dy=4,dz=2,scores={newBoardPos=61}] run function board:dice_roll/end_go
execute if entity @s[gamemode=adventure,x=-104,y=20,z=58,dx=10,dy=4,dz=2,scores={newBoardPos=62}] run function board:dice_roll/end_go
execute if entity @s[gamemode=adventure,x=-106,y=17,z=73,dx=10,dy=4,dz=2,scores={newBoardPos=63}] run schedule function board:tiles/volcano/landed/start 10t append
execute if entity @s[gamemode=adventure,x=-107,y=15,z=84,dx=5,dy=4,dz=2,scores={newBoardPos=64}] run function board:dice_roll/end_go
execute if entity @s[gamemode=adventure,x=-115,y=13,z=92,dx=6,dy=4,dz=2,scores={newBoardPos=65}] run schedule function board:tiles/volcano/landed/start 10t append
execute if entity @s[gamemode=adventure,x=-122,y=12,z=96,dx=2,dy=4,dz=10,scores={newBoardPos=66}] run function board:dice_roll/end_go
execute if entity @s[gamemode=adventure,x=-129,y=13,z=93,dx=2,dy=4,dz=10,scores={newBoardPos=67}] run schedule function board:tiles/volcano/landed/start 10t append
execute if entity @s[gamemode=adventure,x=-133,y=15,z=93,dx=2,dy=4,dz=10,scores={newBoardPos=68}] run function board:dice_roll/end_go
execute if entity @s[gamemode=adventure,x=-136,y=17,z=92,dx=2,dy=4,dz=11,scores={newBoardPos=69}] run schedule function board:tiles/volcano/landed/start 10t append
execute if entity @s[gamemode=adventure,x=-139,y=18,z=92,dx=2,dy=4,dz=11,scores={newBoardPos=70}] run function board:dice_roll/end_go
execute if entity @s[gamemode=adventure,x=-143,y=19,z=93,dx=2,dy=4,dz=10,scores={newBoardPos=71}] run function board:dice_roll/end_go
execute if entity @s[gamemode=adventure,x=-148,y=22,z=93,dx=2,dy=4,dz=10,scores={newBoardPos=72}] run function board:dice_roll/end_go
execute if entity @s[gamemode=adventure,x=-153,y=24,z=94,dx=2,dy=4,dz=10,scores={newBoardPos=73}] run function board:dice_roll/end_go
execute if entity @s[gamemode=adventure,x=-153,y=24,z=94,dx=2,dy=4,dz=10,scores={newBoardPos=74..}] if score spikeAlive= tiles matches 1 unless score eventRoll= tiles matches 1.. run function board:tiles/spikeball/start
execute if entity @s[gamemode=adventure,x=-160,y=25,z=95,dx=2,dy=4,dz=11,scores={newBoardPos=74}] run schedule function board:tiles/volcano/landed/start 10t append
execute if entity @s[gamemode=adventure,x=-170,y=27,z=90,dx=2,dy=4,dz=5,scores={newBoardPos=75}] run function board:dice_roll/end_go
execute if entity @s[gamemode=adventure,x=-183,y=28,z=85,dx=2,dy=4,dz=11,scores={newBoardPos=76}] run schedule function board:tiles/volcano/landed/start 10t append
execute if entity @s[gamemode=adventure,x=-194,y=30,z=80,dx=2,dy=8,dz=15,scores={newBoardPos=77}] run function board:dice_roll/end_go
execute if entity @s[gamemode=adventure,x=-201,y=35,z=77,dx=3,dy=7,dz=10,scores={newBoardPos=78}] run function board:dice_roll/end_go
execute if entity @s[gamemode=adventure,x=-206,y=38,z=77,dx=2,dy=4,dz=6,scores={newBoardPos=79}] run function board:dice_roll/end_go
execute if entity @s[gamemode=adventure,x=-219,y=39,z=75,dx=2,dy=4,dz=10,scores={newBoardPos=80}] run function board:dice_roll/end_go
execute if entity @s[gamemode=adventure,x=-231,y=44,z=71,dx=2,dy=4,dz=8,scores={newBoardPos=81}] run schedule function board:tiles/volcano/landed/start 10t append
execute if entity @s[gamemode=adventure,x=-235,y=47,z=65,dx=10,dy=4,dz=2,scores={newBoardPos=82}] run function board:dice_roll/end_go
execute if entity @s[gamemode=adventure,x=-235,y=49,z=59,dx=10,dy=4,dz=2,scores={newBoardPos=83}] run function board:dice_roll/end_go
execute if entity @s[gamemode=adventure,x=-232,y=53,z=49,dx=10,dy=4,dz=2,scores={newBoardPos=84}] run schedule function board:tiles/volcano/landed/start 10t append
execute if entity @s[gamemode=adventure,x=-226,y=54,z=39,dx=10,dy=4,dz=2,scores={newBoardPos=85}] run schedule function board:tiles/volcano/landed/start 10t append
execute if entity @s[gamemode=adventure,x=-215,y=54,z=33,dx=2,dy=4,dz=10,scores={newBoardPos=86}] run function board:dice_roll/end_go
execute if entity @s[gamemode=adventure,x=-202,y=56,z=34,dx=2,dy=4,dz=10,scores={newBoardPos=87}] run function board:dice_roll/end_go
execute if entity @s[gamemode=adventure,x=-200,y=57,z=41,dx=10,dy=4,dz=2,scores={newBoardPos=88}] run schedule function board:tiles/volcano/landed/start 10t append
execute if entity @s[gamemode=adventure,x=-197,y=57,z=47,dx=10,dy=4,dz=2,scores={newBoardPos=89}] run schedule function board:tiles/volcano/landed/start 10t append
execute positioned -194 57 56 if entity @s[gamemode=adventure,distance=..5,scores={newBoardPos=90}] unless score final= tiles matches 1.. run function board:tiles/final/start
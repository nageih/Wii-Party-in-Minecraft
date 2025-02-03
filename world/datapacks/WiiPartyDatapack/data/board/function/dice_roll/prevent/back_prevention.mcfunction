#   Author        =   @ JevinLevin
#   Description   =   Sets barrier walls behind the player as they are traveling to their new tile, to prevent them going backwards for no reason
#   Called By     =   board:dice_roll/tiles

# First it checks their position for if they are close to a tile
# If so, it fills a wall behind them with barrier replace airs

# This function is an abosolute fucking mess so i pray nothing breaks so i dont have to go back and edit it


execute as @a[x=-302,y=12,z=114,dx=9,dy=4,dz=2,tag=turn] run fill -302 12 118 -294 17 118 minecraft:barrier replace minecraft:air
execute as @a[x=-302,y=12,z=96,dx=9,dy=4,dz=2,tag=turn] run fill -294 12 100 -302 17 100 minecraft:barrier replace minecraft:air
execute as @a[x=-302,y=12,z=84,dx=9,dy=4,dz=2,tag=turn] run fill -301 12 88 -295 17 88 minecraft:barrier replace minecraft:air
execute as @a[x=-302,y=13,z=66,dx=11,dy=4,dz=2,tag=turn] run fill -292 20 70 -299 13 70 minecraft:barrier replace minecraft:air
execute as @a[x=-294,y=16,z=55,dx=10,dy=4,dz=2,tag=turn] run fill -289 23 59 -296 16 59 minecraft:barrier replace minecraft:air
execute as @a[x=-288,y=19,z=39,dx=10,dy=4,dz=2,tag=turn] run fill -289 20 43 -285 25 43 minecraft:barrier replace minecraft:air
execute as @a[x=-287,y=18,z=22,dx=10,dy=4,dz=2,tag=turn] run fill -286 29 26 -286 29 26 minecraft:barrier replace minecraft:air
execute as @a[x=-287,y=14,z=12,dx=10,dy=4,dz=2,tag=turn] run fill -287 16 16 -284 25 16 minecraft:barrier replace minecraft:air
execute as @a[x=-268,y=14,z=-3,dx=-2,dy=4,dz=7,tag=turn] run fill -272 23 5 -272 15 -1 minecraft:barrier replace minecraft:air
execute as @a[x=-264,y=14,z=-11,dx=12,dy=4,dz=2,tag=turn] run fill -264 23 -7 -254 15 -7 minecraft:barrier replace minecraft:air
execute as @a[x=-271,y=14,z=-22,dx=12,dy=4,dz=2,tag=turn] run fill -258 14 -18 -265 24 -18 minecraft:barrier replace minecraft:air
execute as @a[x=-270,y=13,z=-33,dx=15,dy=4,dz=2,tag=turn] run fill -258 14 -29 -270 24 -29 minecraft:barrier replace minecraft:air
execute as @a[x=-249,y=11,z=-42,dx=-2,dy=5,dz=12,tag=turn] run fill -253 12 -41 -253 23 -34 minecraft:barrier replace minecraft:air
execute as @a[x=-241,y=11,z=-36,dx=-2,dy=4,dz=8,tag=turn] run fill -245 12 -40 -245 23 -32 minecraft:barrier replace minecraft:air
execute as @a[x=-239,y=11,z=-26,dx=15,dy=4,dz=5,tag=turn] run fill -231 12 -28 -240 22 -28 minecraft:barrier replace minecraft:air
execute as @a[x=-230,y=10,z=-13,dx=9,dy=4,dz=2,tag=turn] run fill -224 19 -15 -234 9 -15 minecraft:barrier replace minecraft:air
execute as @a[x=-217,y=11,z=5,dx=9,dy=4,dz=2,tag=turn] run fill -218 19 3 -212 11 3 minecraft:barrier replace minecraft:air
execute as @a[x=-196,y=12,z=12,dx=2,dy=4,dz=9,tag=turn] run fill -198 12 16 -198 18 11 minecraft:barrier replace minecraft:air
execute as @a[x=-177,y=12,z=20,dx=2,dy=4,dz=9,tag=turn] run fill -179 12 25 -179 18 20 minecraft:barrier replace minecraft:air
execute as @a[x=-158,y=12,z=27,dx=2,dy=4,dz=9,tag=turn] run fill -160 12 26 -160 18 32 minecraft:barrier replace minecraft:air
execute positioned -149 10 40 as @a[distance=..3.2,tag=turn] run fill -148 11 37 -154 15 37 minecraft:barrier replace minecraft:air
execute as @a[x=-139,y=7,z=42,dx=2,dy=4,dz=9,tag=turn] run fill -141 7 52 -141 16 42 minecraft:barrier replace minecraft:air
execute as @a[x=-129,y=7,z=35,dx=2,dy=4,dz=9,tag=turn] run fill -128 7 41 -135 15 41 minecraft:barrier replace minecraft:air
execute as @a[x=-123,y=7,z=44,dx=9,dy=4,dz=2,tag=turn] run fill -123 7 42 -117 14 42 minecraft:barrier replace minecraft:air
execute as @a[x=-122,y=7,z=55,dx=10,dy=4,dz=2,tag=turn] run fill -114 7 53 -122 15 53 minecraft:barrier replace minecraft:air
execute as @a[x=-126,y=7,z=70,dx=2,dy=4,dz=9,tag=turn] run fill -122 7 74 -122 13 68 minecraft:barrier replace minecraft:air
execute as @a[x=-143,y=7,z=66,dx=2,dy=4,dz=9,tag=turn] run fill -139 7 66 -139 14 70 minecraft:barrier replace minecraft:air
execute positioned -151 8.5 81 as @a[distance=..3.5,tag=turn] run fill -146 7 76 -152 18 76 minecraft:barrier replace minecraft:air
execute as @a[x=-163,y=12,z=89,dx=9,dy=4,dz=2,tag=turn] run fill -162 18 87 -151 11 87 minecraft:barrier replace minecraft:air
execute as @a[x=-171,y=14,z=104,dx=9,dy=4,dz=2,tag=turn] run fill -170 22 102 -162 13 102 minecraft:barrier replace minecraft:air
execute as @a[x=-171,y=18,z=119,dx=9,dy=4,dz=2,tag=turn] run fill -159 17 117 -168 27 117 minecraft:barrier replace minecraft:air
execute as @a[x=-186,y=23,z=116,dx=2,dy=4,dz=9,tag=turn] run fill -182 22 124 -182 33 116 minecraft:barrier replace minecraft:air
execute as @a[x=-199,y=26,z=110,dx=2,dy=4,dz=9,tag=turn] run fill -195 26 117 -195 33 109 minecraft:barrier replace minecraft:air
execute as @a[x=-208,y=25,z=115,dx=2,dy=4,dz=11,tag=turn] run fill -204 33 125 -204 25 114 minecraft:barrier replace minecraft:air
execute as @a[x=-231,y=25,z=111,dx=2,dy=4,dz=10,tag=turn] run fill -227 33 115 -227 25 125 minecraft:barrier replace minecraft:air
execute as @a[x=-244,y=25,z=103,dx=2,dy=4,dz=10,tag=turn] run fill -240 25 105 -240 33 112 minecraft:barrier replace minecraft:air
execute as @a[x=-259,y=25,z=96,dx=2,dy=4,dz=12,tag=turn] run fill -255 25 107 -255 33 99 minecraft:barrier replace minecraft:air
execute as @a[x=-268,y=25,z=87,dx=9,dy=4,dz=2,tag=turn] run fill -258 25 91 -268 34 91 minecraft:barrier replace minecraft:air
execute as @a[x=-262,y=25,z=78,dx=11,dy=4,dz=2,tag=turn] run fill -256 25 82 -264 34 82 minecraft:barrier replace minecraft:air
execute as @a[x=-248,y=28,z=69,dx=2,dy=4,dz=10,tag=turn] run fill -250 27 77 -250 36 68 minecraft:barrier replace minecraft:air
execute as @a[x=-232,y=33,z=56,dx=2,dy=4,dz=10,tag=turn] run fill -234 33 63 -234 37 58 minecraft:barrier replace minecraft:air
execute positioned -224 35 54 as @a[distance=..3,tag=turn] run fill -224 42 58 -233 33 58 minecraft:barrier replace minecraft:air
execute positioned -220 35 51 as @a[distance=..2,tag=turn] run fill -223 34 55 -223 43 52 minecraft:barrier replace minecraft:air
execute positioned -211 33 40 as @a[distance=..2,tag=turn] run fill -214 33 42 -214 41 42 minecraft:barrier replace minecraft:air
execute positioned -211 33 40 as @a[distance=..2,tag=turn] run fill -213 33 43 -213 41 43 minecraft:barrier replace minecraft:air
execute positioned -204 29 30 as @a[distance=..3,tag=turn] run fill -205 29 34 -208 39 34 minecraft:barrier replace minecraft:air
execute as @a[x=-199,y=29,z=19,dx=8,dy=4,dz=2,tag=turn] run fill -195 29 23 -200 33 23 minecraft:barrier replace minecraft:air
execute as @a[x=-198,y=26,z=12,dx=11,dy=5,dz=2,tag=turn] run fill -188 27 16 -198 37 16 minecraft:barrier replace minecraft:air
execute as @a[x=-202,y=26,z=-2,dx=8,dy=4,dz=2,tag=turn] run fill -203 26 2 -195 34 2 minecraft:barrier replace minecraft:air
execute as @a[x=-203,y=25,z=-18,dx=8,dy=4,dz=2,tag=turn] run fill -195 26 -14 -200 34 -14 minecraft:barrier replace minecraft:air
execute as @a[x=-212,y=24,z=-25,dx=8,dy=4,dz=2,tag=turn] run fill -209 25 -21 -204 33 -21 minecraft:barrier replace minecraft:air
execute as @a[x=-215,y=21,z=-36,dx=8,dy=4,dz=2,tag=turn] run fill -215 22 -32 -212 31 -32 minecraft:barrier replace minecraft:air
execute as @a[x=-206,y=20,z=-54,dx=2,dy=4,dz=10,tag=turn] run fill -208 20 -44 -208 28 -53 minecraft:barrier replace minecraft:air
execute as @a[x=-195,y=20,z=-32,dx=11,dy=4,dz=2,tag=turn] run fill -195 20 -34 -186 28 -34 minecraft:barrier replace minecraft:air
execute as @a[x=-183,y=20,z=-17,dx=10,dy=4,dz=2,tag=turn] run fill -186 20 -19 -175 28 -19 minecraft:barrier replace minecraft:air
execute as @a[x=-169,y=20,z=-11,dx=2,dy=4,dz=10,tag=turn] run fill -171 20 -6 -172 27 -15 minecraft:barrier replace minecraft:air
execute as @a[x=-159,y=20,z=-6,dx=2,dy=4,dz=10,tag=turn] run fill -161 20 1 -161 28 -7 minecraft:barrier replace minecraft:air
execute as @a[x=-145,y=20,z=-2,dx=2,dy=4,dz=10,tag=turn] run fill -147 20 1 -147 28 -3 minecraft:barrier replace minecraft:air
execute as @a[x=-130,y=20,z=1,dx=2,dy=4,dz=10,tag=turn] run fill -132 20 0 -132 28 7 minecraft:barrier replace minecraft:air
execute as @a[x=-116,y=20,z=12,dx=2,dy=4,dz=10,tag=turn] run fill -118 20 10 -118 28 19 minecraft:barrier replace minecraft:air
execute as @a[x=-111,y=20,z=26,dx=10,dy=4,dz=2,tag=turn] run fill -112 20 24 -105 28 24 minecraft:barrier replace minecraft:air
execute as @a[x=-108,y=20,z=43,dx=10,dy=4,dz=2,tag=turn] run fill -108 20 41 -102 28 41 minecraft:barrier replace minecraft:air
execute as @a[x=-104,y=20,z=58,dx=10,dy=4,dz=2,tag=turn] run fill -102 20 56 -98 28 56 minecraft:barrier replace minecraft:air
execute as @a[x=-106,y=17,z=73,dx=10,dy=4,dz=2,tag=turn] run fill -99 18 71 -105 26 71 minecraft:barrier replace minecraft:air
execute as @a[x=-107,y=15,z=84,dx=5,dy=4,dz=2,tag=turn] run fill -104 26 82 -100 15 82 minecraft:barrier replace minecraft:air
execute as @a[x=-115,y=13,z=92,dx=6,dy=4,dz=2,tag=turn] run fill -106 23 90 -114 13 90 minecraft:barrier replace minecraft:air
execute as @a[x=-122,y=12,z=96,dx=2,dy=4,dz=10,tag=turn] run fill -118 12 96 -118 20 102 minecraft:barrier replace minecraft:air
execute as @a[x=-129,y=13,z=93,dx=2,dy=4,dz=10,tag=turn] run fill -125 12 94 -125 23 103 minecraft:barrier replace minecraft:air
execute as @a[x=-133,y=15,z=93,dx=2,dy=4,dz=10,tag=turn] run fill -129 14 93 -129 24 103 minecraft:barrier replace minecraft:air
execute as @a[x=-136,y=17,z=92,dx=2,dy=4,dz=11,tag=turn] run fill -132 15 92 -132 25 103 minecraft:barrier replace minecraft:air
execute as @a[x=-139,y=18,z=92,dx=2,dy=4,dz=11,tag=turn] run fill -135 17 103 -135 27 92 minecraft:barrier replace minecraft:air
execute as @a[x=-143,y=19,z=93,dx=2,dy=4,dz=10,tag=turn] run fill -139 19 93 -139 28 103 minecraft:barrier replace minecraft:air
execute as @a[x=-148,y=22,z=93,dx=2,dy=4,dz=10,tag=turn] run fill -144 21 93 -144 31 101 minecraft:barrier replace minecraft:air
execute as @a[x=-153,y=24,z=94,dx=2,dy=4,dz=10,tag=turn] run fill -149 23 94 -149 32 101 minecraft:barrier replace minecraft:air
execute as @a[x=-160,y=25,z=95,dx=2,dy=4,dz=11,tag=turn] run fill -156 25 96 -156 33 102 minecraft:barrier replace minecraft:air
execute as @a[x=-170,y=27,z=90,dx=2,dy=4,dz=5,tag=turn] run fill -166 26 97 -166 35 91 minecraft:barrier replace minecraft:air
execute as @a[x=-183,y=28,z=85,dx=2,dy=4,dz=11,tag=turn] run fill -179 27 90 -179 35 96 minecraft:barrier replace minecraft:air
execute as @a[x=-194,y=30,z=80,dx=2,dy=8,dz=15,tag=turn] run fill -190 28 92 -190 44 83 minecraft:barrier replace minecraft:air
execute as @a[x=-201,y=35,z=77,dx=2,dy=7,dz=10,tag=turn] run fill -197 46 77 -197 32 92 minecraft:barrier replace minecraft:air
execute as @a[x=-206,y=38,z=77,dx=2,dy=4,dz=9,tag=turn] run fill -202 46 77 -202 37 82 minecraft:barrier replace minecraft:air
execute as @a[x=-219,y=39,z=75,dx=2,dy=4,dz=10,tag=turn] run fill -215 38 79 -215 50 77 minecraft:barrier replace minecraft:air
execute as @a[x=-231,y=44,z=71,dx=2,dy=4,dz=8,tag=turn] run fill -227 43 78 -227 53 74 minecraft:barrier replace minecraft:air
execute as @a[x=-235,y=47,z=65,dx=10,dy=4,dz=2,tag=turn] run fill -236 47 69 -231 55 69 minecraft:barrier replace minecraft:air
execute as @a[x=-235,y=49,z=59,dx=10,dy=4,dz=2,tag=turn] run fill -230 59 63 -234 49 63 minecraft:barrier replace minecraft:air
execute as @a[x=-232,y=53,z=49,dx=10,dy=4,dz=2,tag=turn] run fill -234 52 53 -229 62 53 minecraft:barrier replace minecraft:air
execute as @a[x=-226,y=54,z=39,dx=10,dy=4,dz=2,tag=turn] run fill -223 63 43 -226 55 43 minecraft:barrier replace minecraft:air
execute as @a[x=-215,y=54,z=33,dx=2,dy=4,dz=10,tag=turn] run fill -217 54 36 -217 63 33 minecraft:barrier replace minecraft:air
execute as @a[x=-202,y=56,z=34,dx=2,dy=4,dz=10,tag=turn] run fill -204 55 33 -204 65 36 minecraft:barrier replace minecraft:air
execute as @a[x=-200,y=57,z=41,dx=10,dy=4,dz=2,tag=turn] run fill -201 56 39 -195 65 39 minecraft:barrier replace minecraft:air
execute as @a[x=-197,y=57,z=47,dx=10,dy=4,dz=2,tag=turn] run fill -198 57 45 -195 65 45 minecraft:barrier replace minecraft:air
execute positioned -194 57 56 as @a[distance=..5,tag=turn] run fill -194 58 49 -196 65 49 minecraft:barrier replace minecraft:air


# Volcano
execute as @a[x=-686,y=63,z=-685,dx=10,dy=4,dz=2,tag=turn] run fill -686 63 -679 -685 68 -679 minecraft:barrier replace minecraft:air
execute positioned -680 64 -687 as @a[distance=..3,tag=turn] run fill -682 63 -683 -682 68 -683 minecraft:barrier replace minecraft:air
execute positioned -680 64 -687 as @a[distance=..3,tag=turn] run fill -683 63 -684 -683 68 -684 minecraft:barrier replace minecraft:air
execute positioned -680 64 -687 as @a[distance=..3,tag=turn] run fill -684 63 -685 -684 68 -685 minecraft:barrier replace minecraft:air
execute positioned -676 64 -689 as @a[distance=..3,tag=turn] run fill -680 63 -689 -680 68 -685 minecraft:barrier replace minecraft:air
execute positioned -670 64 -693 as @a[distance=..3,tag=turn] run fill -674 63 -692 -674 68 -690 minecraft:barrier replace minecraft:air
execute if entity @s[x=-659,y=66,z=-683,dx=-2,dy=4,dz=-10,tag=turn] run fill -664 64 -690 -664 69 -692 minecraft:barrier replace minecraft:air
execute positioned -653 66 -682 as @a[distance=..3,tag=turn] run fill -657 65 -685 -655 70 -685 minecraft:barrier replace minecraft:air
execute if entity @s[x=-653,y=65,z=-672,dx=10,dy=4,dz=2,tag=turn] run fill -652 65 -675 -650 70 -675 minecraft:barrier replace minecraft:air
execute positioned -657 65 -664 as @a[distance=..2.5,tag=turn] run fill -655 64 -667 -655 69 -667 minecraft:barrier replace minecraft:air
execute positioned -657 65 -664 as @a[distance=..2.5,tag=turn] run fill -654 69 -666 -654 64 -666 minecraft:barrier replace minecraft:air
execute positioned -663 66 -664 as @a[distance=..3,tag=turn] run fill -659 64 -662 -659 70 -665 minecraft:barrier replace minecraft:air
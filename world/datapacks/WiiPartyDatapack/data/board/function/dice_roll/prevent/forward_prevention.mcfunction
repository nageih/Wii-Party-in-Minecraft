#   Author        =   @ JevinLevin
#   Description   =   Fills a wall infront of the players final tile so they cant go too far
#   Called By     =   board:dice_roll/next + board:dice_roll/start

execute if score @s newBoardPos matches 0 run fill -302 12 122 -294 20 122 minecraft:barrier replace minecraft:air
execute if score @s newBoardPos matches 1 run fill -294 12 111 -302 20 111 minecraft:barrier replace minecraft:air
execute if score @s newBoardPos matches 2 run fill -302 12 93 -294 20 93 minecraft:barrier replace minecraft:air
execute if score @s newBoardPos matches 3 run fill -300 12 81 -294 21 81 minecraft:barrier replace minecraft:air
execute if score @s newBoardPos matches 4 run fill -297 15 63 -290 25 63 minecraft:barrier replace minecraft:air
execute if score @s newBoardPos matches 5 run fill -293 18 52 -287 27 52 minecraft:barrier replace minecraft:air
execute if score @s newBoardPos matches 7 run fill -287 17 19 -285 27 19 minecraft:barrier replace minecraft:air
execute if score @s newBoardPos matches 8 run fill -279 15 10 -285 24 10 minecraft:barrier replace minecraft:air
execute if score @s newBoardPos matches 9 run fill -265 15 -5 -265 23 2 minecraft:barrier replace minecraft:air
execute if score @s newBoardPos matches 10 run fill -264 15 -14 -256 23 -14 minecraft:barrier replace minecraft:air
execute if score @s newBoardPos matches 11 run fill -262 14 -25 -271 14 -25 minecraft:barrier replace minecraft:air
execute if score @s newBoardPos matches 12 run fill -258 13 -29 -258 24 -39 minecraft:barrier replace minecraft:air
execute if score @s newBoardPos matches 13 run fill -246 12 -40 -246 21 -32 minecraft:barrier replace minecraft:air
execute if score @s newBoardPos matches 14 run fill -238 12 -33 -238 21 -25 minecraft:barrier replace minecraft:air
execute if score @s newBoardPos matches 15 run fill -234 12 -21 -227 21 -21 minecraft:barrier replace minecraft:air
execute if score @s newBoardPos matches 16 run fill -227 10 -8 -220 19 -8 minecraft:barrier replace minecraft:air
execute if score @s newBoardPos matches 17 run fill -210 11 5 -210 21 12 minecraft:barrier replace minecraft:air
execute if score @s newBoardPos matches 18 run fill -191 12 20 -191 20 15 minecraft:barrier replace minecraft:air
execute if score @s newBoardPos matches 19 run fill -172 12 22 -172 22 26 minecraft:barrier replace minecraft:air
execute if score @s newBoardPos matches 20 run fill -155 12 34 -151 20 34 minecraft:barrier replace minecraft:air
execute if score @s newBoardPos matches 21 run fill -145 7 39 -145 18 50 minecraft:barrier replace minecraft:air
execute if score @s newBoardPos matches 21 run fill -149 8 44 -144 18 44 minecraft:barrier replace minecraft:air
execute if score @s newBoardPos matches 22 run fill -134 7 47 -134 15 40 minecraft:barrier replace minecraft:air
execute if score @s newBoardPos matches 23 run fill -124 7 36 -124 15 42 minecraft:barrier replace minecraft:air
execute if score @s newBoardPos matches 24 run fill -120 7 49 -115 15 49 minecraft:barrier replace minecraft:air
execute if score @s newBoardPos matches 25 run fill -120 7 60 -113 15 60 minecraft:barrier replace minecraft:air
execute if score @s newBoardPos matches 26 run fill -129 7 76 -129 15 70 minecraft:barrier replace minecraft:air
execute if score @s newBoardPos matches 27 run fill -141 7 72 -149 15 72 minecraft:barrier replace minecraft:air
execute if score @s newBoardPos matches 28 run fill -154 10 82 -154 20 88 minecraft:barrier replace minecraft:air
execute if score @s newBoardPos matches 29 run fill -155 12 94 -166 21 94 minecraft:barrier replace minecraft:air
execute if score @s newBoardPos matches 30 run fill -161 15 109 -170 24 109 minecraft:barrier replace minecraft:air
execute if score @s newBoardPos matches 31 run fill -171 19 119 -171 29 125 minecraft:barrier replace minecraft:air
execute if score @s newBoardPos matches 32 run fill -189 24 121 -189 34 114 minecraft:barrier replace minecraft:air
execute if score @s newBoardPos matches 33 run fill -202 25 111 -202 34 124 minecraft:barrier replace minecraft:air
execute if score @s newBoardPos matches 34 run fill -210 25 117 -210 33 124 minecraft:barrier replace minecraft:air
execute if score @s newBoardPos matches 35 run fill -228 25 114 -238 33 114 minecraft:barrier replace minecraft:air
execute if score @s newBoardPos matches 36 run fill -247 25 102 -247 33 110 minecraft:barrier replace minecraft:air
execute if score @s newBoardPos matches 37 run fill -257 25 96 -264 33 96 minecraft:barrier replace minecraft:air
execute if score @s newBoardPos matches 38 run fill -265 25 83 -257 34 83 minecraft:barrier replace minecraft:air
execute if score @s newBoardPos matches 39 run fill -253 26 80 -253 35 72 minecraft:barrier replace minecraft:air
execute if score @s newBoardPos matches 40 run fill -241 28 68 -241 36 68 minecraft:barrier replace minecraft:air
execute if score @s newBoardPos matches 41 run fill -227 33 60 -227 42 54 minecraft:barrier replace minecraft:air
execute if score @s newBoardPos matches 42 run fill -221 34 53 -222 43 52 minecraft:barrier replace minecraft:air
execute if score @s newBoardPos matches 43 run fill -219 34 50 -219 43 50 minecraft:barrier replace minecraft:air
execute if score @s newBoardPos matches 44 run fill -210 31 38 -209 40 38 minecraft:barrier replace minecraft:air
execute if score @s newBoardPos matches 45 run fill -201 29 24 -201 37 30 minecraft:barrier replace minecraft:air
execute if score @s newBoardPos matches 46 run fill -198 27 17 -189 37 17 minecraft:barrier replace minecraft:air
execute if score @s newBoardPos matches 47 run fill -191 26 10 -198 36 10 minecraft:barrier replace minecraft:air
execute if score @s newBoardPos matches 48 run fill -196 26 -5 -203 34 -5 minecraft:barrier replace minecraft:air
execute if score @s newBoardPos matches 49 run fill -203 25 -17 -203 34 -20 minecraft:barrier replace minecraft:air
execute if score @s newBoardPos matches 50 run fill -210 23 -28 -213 32 -28 minecraft:barrier replace minecraft:air
execute if score @s newBoardPos matches 51 run fill -215 20 -39 -208 30 -39 minecraft:barrier replace minecraft:air
execute if score @s newBoardPos matches 52 run fill -201 20 -41 -201 28 -53 minecraft:barrier replace minecraft:air
execute if score @s newBoardPos matches 53 run fill -192 20 -28 -182 28 -28 minecraft:barrier replace minecraft:air
execute if score @s newBoardPos matches 54 run fill -172 20 -13 -172 28 -6 minecraft:barrier replace minecraft:air
execute if score @s newBoardPos matches 55 run fill -164 20 -9 -164 28 0 minecraft:barrier replace minecraft:air
execute if score @s newBoardPos matches 56 run fill -154 20 -4 -154 28 2 minecraft:barrier replace minecraft:air
execute if score @s newBoardPos matches 57 run fill -140 20 5 -140 28 -2 minecraft:barrier replace minecraft:air
execute if score @s newBoardPos matches 58 run fill -125 20 2 -125 28 11 minecraft:barrier replace minecraft:air
execute if score @s newBoardPos matches 59 run fill -117 20 20 -106 28 20 minecraft:barrier replace minecraft:air
execute if score @s newBoardPos matches 60 run fill -109 20 31 -103 28 31 minecraft:barrier replace minecraft:air
execute if score @s newBoardPos matches 61 run fill -106 20 48 -99 28 48 minecraft:barrier replace minecraft:air
execute if score @s newBoardPos matches 62 run fill -104 19 63 -98 28 63 minecraft:barrier replace minecraft:air
execute if score @s newBoardPos matches 63 run fill -106 16 78 -100 26 78 minecraft:barrier replace minecraft:air
execute if score @s newBoardPos matches 64 run fill -104 15 88 -114 23 88 minecraft:barrier replace minecraft:air
execute if score @s newBoardPos matches 65 run fill -116 12 94 -116 22 102 minecraft:barrier replace minecraft:air
execute if score @s newBoardPos matches 66 run fill -124 12 95 -124 22 103 minecraft:barrier replace minecraft:air
execute if score @s newBoardPos matches 67 run fill -130 13 93 -130 26 104 minecraft:barrier replace minecraft:air
execute if score @s newBoardPos matches 68 run fill -134 15 92 -134 27 103 minecraft:barrier replace minecraft:air
execute if score @s newBoardPos matches 69 run fill -137 17 91 -137 28 104 minecraft:barrier replace minecraft:air
execute if score @s newBoardPos matches 70 run fill -140 19 93 -140 30 102 minecraft:barrier replace minecraft:air
execute if score @s newBoardPos matches 71 run fill -144 20 93 -144 31 101 minecraft:barrier replace minecraft:air
execute if score @s newBoardPos matches 72 run fill -150 23 94 -150 32 101 minecraft:barrier replace minecraft:air
execute if score @s newBoardPos matches 73 run fill -154 24 95 -154 33 102 minecraft:barrier replace minecraft:air
execute if score @s newBoardPos matches 74 run fill -161 25 92 -161 35 101 minecraft:barrier replace minecraft:air
execute if score @s newBoardPos matches 75 run fill -172 27 90 -172 35 94 minecraft:barrier replace minecraft:air
execute if score @s newBoardPos matches 76 run fill -187 27 84 -187 40 94 minecraft:barrier replace minecraft:air
execute if score @s newBoardPos matches 77 run fill -197 31 92 -197 46 77 minecraft:barrier replace minecraft:air
execute if score @s newBoardPos matches 77 run fill -190 32 83 -196 44 83 minecraft:barrier replace minecraft:air
execute if score @s newBoardPos matches 78 run fill -204 38 77 -204 47 81 minecraft:barrier replace minecraft:air
execute if score @s newBoardPos matches 79 run fill -207 35 77 -207 46 78 minecraft:barrier replace minecraft:air
execute if score @s newBoardPos matches 80 run fill -221 40 73 -221 51 79 minecraft:barrier replace minecraft:air
execute if score @s newBoardPos matches 81 run fill -230 46 71 -235 56 71 minecraft:barrier replace minecraft:air
execute if score @s newBoardPos matches 82 run fill -230 49 62 -234 59 62 minecraft:barrier replace minecraft:air
execute if score @s newBoardPos matches 83 run fill -231 51 56 -236 61 56 minecraft:barrier replace minecraft:air
execute if score @s newBoardPos matches 84 run fill -224 54 45 -228 64 45 minecraft:barrier replace minecraft:air
execute if score @s newBoardPos matches 85 run fill -221 53 37 -221 62 34 minecraft:barrier replace minecraft:air
execute if score @s newBoardPos matches 86 run fill -210 55 31 -210 63 35 minecraft:barrier replace minecraft:air
execute if score @s newBoardPos matches 87 run fill -201 56 40 -195 65 40 minecraft:barrier replace minecraft:air
execute if score @s newBoardPos matches 88 run fill -198 57 45 -195 65 45 minecraft:barrier replace minecraft:air
execute if score @s newBoardPos matches 89 run fill -193 56 51 -197 65 51 minecraft:barrier replace minecraft:air

execute if score @s newBoardPos matches 100 run fill -686 63 -679 -685 68 -679 minecraft:barrier
execute if score @s newBoardPos matches 101 run fill -681 63 -689 -681 68 -683 minecraft:barrier replace minecraft:air
execute if score @s newBoardPos matches 102 run fill -678 63 -690 -678 68 -686 minecraft:barrier
execute if score @s newBoardPos matches 103 run fill -673 63 -692 -673 68 -690 minecraft:barrier
execute if score @s newBoardPos matches 104 run fill -667 64 -694 -667 69 -691 minecraft:barrier
execute if score @s newBoardPos matches 105 run fill -657 65 -685 -657 70 -687 minecraft:barrier
execute if score @s newBoardPos matches 106 run fill -651 66 -679 -654 71 -679 minecraft:barrier
execute if score @s newBoardPos matches 107 run fill -652 65 -668 -652 69 -668 minecraft:barrier
execute if score @s newBoardPos matches 107 run fill -653 69 -669 -653 65 -669 minecraft:barrier
execute if score @s newBoardPos matches 108 run fill -660 64 -662 -660 70 -665 minecraft:barrier replace minecraft:air
execute if score @s newBoardPos matches 109 run fill -665 65 -663 -665 70 -668 minecraft:barrier

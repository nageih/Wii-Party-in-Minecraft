#   Author        =   @ T4Bl3rUs
#   Description   =   Places the start menu lecterns
#   Called By     =   games:27/start

# Tp the players
tp @a[tag=player1] 26009 25.1 25987 0 0
tp @a[tag=player2] 25991 25.1 25987 0 0

tp @a[tag=playing,tag=!ingame] 26009 25.1 25987 0 0

# # Surround the players in barriers
# fill 26010 25 25988 26008 27 25986 minecraft:barrier
# setblock 26009 26 25987 minecraft:air
# fill 25992 25 25988 25990 27 25986 minecraft:barrier
# setblock 25991 26 25987 minecraft:air

# Enable  triggers
# scoreboard players enable @a[tag=ingame] play
# scoreboard players enable @a[tag=ingame] practice

# # Set lecturns 1 block above each player
# # Books must have all basic tags (title, author, pages...) or else it won't work
# execute at @a[tag=player1] run setblock ~ ~1 ~ minecraft:lectern[has_book=true]{Book:{id:"minecraft:written_book",Count:1b,tag:{pages:["",'[{"translate":"game.mods.title","color":"dark_gray","bold":true},"\\n",{"translate":"game.mods.desc","color":"gray","bold":false}]'],# author:"Wii Party in MC!",title:"Tutorial"}}}
# execute at @a[tag=player2] run setblock ~ ~1 ~ minecraft:lectern[has_book=true]{Book:{id:"minecraft:written_book",Count:1b,tag:{pages:["",'[{"translate":"game.mods.title","color":"dark_gray","bold":true},"\\n",{"translate":"game.mods.desc","color":"gray","bold":false}]'],# author:"Wii Party in MC!",title:"Tutorial"}}}


# Replace TV screens
execute if entity @a[tag=player1,team=blue] run fill 26016 37 26009 26002 15 26012 minecraft:blue_terracotta replace minecraft:white_terracotta
execute if entity @a[tag=player1,team=red] run fill 26016 37 26009 26002 15 26012 minecraft:red_terracotta replace minecraft:white_terracotta
execute if entity @a[tag=player1,team=green] run fill 26016 37 26009 26002 15 26012 minecraft:lime_terracotta replace minecraft:white_terracotta
execute if entity @a[tag=player1,team=orange] run fill 26016 37 26009 26002 15 26012 minecraft:yellow_terracotta replace minecraft:white_terracotta

execute if entity @a[tag=player2,team=blue] run fill 25984 15 26009 25998 37 26012 minecraft:blue_terracotta replace minecraft:white_terracotta
execute if entity @a[tag=player2,team=red] run fill 25984 15 26009 25998 37 26012 minecraft:red_terracotta replace minecraft:white_terracotta
execute if entity @a[tag=player2,team=green] run fill 25984 15 26009 25998 37 26012 minecraft:lime_terracotta replace minecraft:white_terracotta
execute if entity @a[tag=player2,team=orange] run fill 25984 15 26009 25998 37 26012 minecraft:yellow_terracotta replace minecraft:white_terracotta

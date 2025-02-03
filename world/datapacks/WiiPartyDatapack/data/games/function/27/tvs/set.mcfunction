#   Author        =   @ T4Bl3rUs
#   Description   =   Assigns random values to the tvs
#   Called By     =   games:27/raytracing/step



execute store result score p1_l1= 27scores run loot spawn ~ -70 ~ loot games:27tvs
execute store result score extra= 27scores run loot spawn ~ -70 ~ loot games:27extra
execute if score p1_l1= 27scores = main= 27scores run scoreboard players operation p1_l1= 27scores += extra= 27scores
execute if score p1_l1= 27scores matches 5.. run scoreboard players remove p1_l1= 27scores 4
execute store result score p1_l2= 27scores run loot spawn ~ -70 ~ loot games:27tvs
execute store result score extra= 27scores run loot spawn ~ -70 ~ loot games:27extra
execute if score p1_l2= 27scores = main= 27scores run scoreboard players operation p1_l2= 27scores += extra= 27scores
execute if score p1_l2= 27scores matches 5.. run scoreboard players remove p1_l2= 27scores 4
execute store result score p1_l3= 27scores run loot spawn ~ -70 ~ loot games:27tvs
execute store result score extra= 27scores run loot spawn ~ -70 ~ loot games:27extra
execute if score p1_l3= 27scores = main= 27scores run scoreboard players operation p1_l3= 27scores += extra= 27scores
execute if score p1_l3= 27scores matches 5.. run scoreboard players remove p1_l3= 27scores 4
execute store result score p1_l4= 27scores run loot spawn ~ -70 ~ loot games:27tvs
execute store result score extra= 27scores run loot spawn ~ -70 ~ loot games:27extra
execute if score p1_l4= 27scores = main= 27scores run scoreboard players operation p1_l4= 27scores += extra= 27scores
execute if score p1_l4= 27scores matches 5.. run scoreboard players remove p1_l4= 27scores 4

execute store result score p1_r1= 27scores run loot spawn ~ -70 ~ loot games:27tvs
execute store result score extra= 27scores run loot spawn ~ -70 ~ loot games:27extra
execute if score p1_r1= 27scores = main= 27scores run scoreboard players operation p1_r1= 27scores += extra= 27scores
execute if score p1_r1= 27scores matches 5.. run scoreboard players remove p1_r1= 27scores 4
execute store result score p1_r2= 27scores run loot spawn ~ -70 ~ loot games:27tvs
execute store result score extra= 27scores run loot spawn ~ -70 ~ loot games:27extra
execute if score p1_r2= 27scores = main= 27scores run scoreboard players operation p1_r2= 27scores += extra= 27scores
execute if score p1_r2= 27scores matches 5.. run scoreboard players remove p1_r2= 27scores 4
execute store result score p1_r3= 27scores run loot spawn ~ -70 ~ loot games:27tvs
execute store result score extra= 27scores run loot spawn ~ -70 ~ loot games:27extra
execute if score p1_r3= 27scores = main= 27scores run scoreboard players operation p1_r3= 27scores += extra= 27scores
execute if score p1_r3= 27scores matches 5.. run scoreboard players remove p1_r3= 27scores 4
execute store result score p1_r4= 27scores run loot spawn ~ -70 ~ loot games:27tvs
execute store result score extra= 27scores run loot spawn ~ -70 ~ loot games:27extra
execute if score p1_r4= 27scores = main= 27scores run scoreboard players operation p1_r4= 27scores += extra= 27scores
execute if score p1_r4= 27scores matches 5.. run scoreboard players remove p1_r4= 27scores 4



# I might consider changing the order to make it random, but for the moment this is ok
scoreboard players operation p2_l1= 27scores = p1_l4= 27scores
scoreboard players operation p2_l2= 27scores = p1_r3= 27scores
scoreboard players operation p2_l3= 27scores = p1_r4= 27scores
scoreboard players operation p2_l4= 27scores = p1_l3= 27scores
scoreboard players operation p2_r1= 27scores = p1_r2= 27scores
scoreboard players operation p2_r2= 27scores = p1_l1= 27scores
scoreboard players operation p2_r3= 27scores = p1_l2= 27scores
scoreboard players operation p2_r4= 27scores = p1_r1= 27scores



# Score = 1
execute if score main= 27scores matches 1 run clone -957 13 -1198 -961 15 -1197 25998 41 26008
execute if score p1_l1= 27scores matches 1 run clone -957 13 -1198 -961 15 -1197 26011 34 26009
execute if score p1_l2= 27scores matches 1 run clone -957 13 -1198 -961 15 -1197 26011 28 26009
execute if score p1_l3= 27scores matches 1 run clone -957 13 -1198 -961 15 -1197 26011 22 26009
execute if score p1_l4= 27scores matches 1 run clone -957 13 -1198 -961 15 -1197 26011 16 26009
execute if score p1_r1= 27scores matches 1 run clone -957 13 -1198 -961 15 -1197 26003 34 26009
execute if score p1_r2= 27scores matches 1 run clone -957 13 -1198 -961 15 -1197 26003 28 26009
execute if score p1_r3= 27scores matches 1 run clone -957 13 -1198 -961 15 -1197 26003 22 26009
execute if score p1_r4= 27scores matches 1 run clone -957 13 -1198 -961 15 -1197 26003 16 26009
execute if score p2_l1= 27scores matches 1 run clone -957 13 -1198 -961 15 -1197 25993 34 26009
execute if score p2_l2= 27scores matches 1 run clone -957 13 -1198 -961 15 -1197 25993 28 26009
execute if score p2_l3= 27scores matches 1 run clone -957 13 -1198 -961 15 -1197 25993 22 26009
execute if score p2_l4= 27scores matches 1 run clone -957 13 -1198 -961 15 -1197 25993 16 26009
execute if score p2_r1= 27scores matches 1 run clone -957 13 -1198 -961 15 -1197 25985 34 26009
execute if score p2_r2= 27scores matches 1 run clone -957 13 -1198 -961 15 -1197 25985 28 26009
execute if score p2_r3= 27scores matches 1 run clone -957 13 -1198 -961 15 -1197 25985 22 26009
execute if score p2_r4= 27scores matches 1 run clone -957 13 -1198 -961 15 -1197 25985 16 26009

# Score = 2
execute if score main= 27scores matches 2 run clone -965 13 -1198 -969 15 -1197 25998 41 26008
execute if score p1_l1= 27scores matches 2 run clone -965 13 -1198 -969 15 -1197 26011 34 26009
execute if score p1_l2= 27scores matches 2 run clone -965 13 -1198 -969 15 -1197 26011 28 26009
execute if score p1_l3= 27scores matches 2 run clone -965 13 -1198 -969 15 -1197 26011 22 26009
execute if score p1_l4= 27scores matches 2 run clone -965 13 -1198 -969 15 -1197 26011 16 26009
execute if score p1_r1= 27scores matches 2 run clone -965 13 -1198 -969 15 -1197 26003 34 26009
execute if score p1_r2= 27scores matches 2 run clone -965 13 -1198 -969 15 -1197 26003 28 26009
execute if score p1_r3= 27scores matches 2 run clone -965 13 -1198 -969 15 -1197 26003 22 26009
execute if score p1_r4= 27scores matches 2 run clone -965 13 -1198 -969 15 -1197 26003 16 26009
execute if score p2_l1= 27scores matches 2 run clone -965 13 -1198 -969 15 -1197 25993 34 26009
execute if score p2_l2= 27scores matches 2 run clone -965 13 -1198 -969 15 -1197 25993 28 26009
execute if score p2_l3= 27scores matches 2 run clone -965 13 -1198 -969 15 -1197 25993 22 26009
execute if score p2_l4= 27scores matches 2 run clone -965 13 -1198 -969 15 -1197 25993 16 26009
execute if score p2_r1= 27scores matches 2 run clone -965 13 -1198 -969 15 -1197 25985 34 26009
execute if score p2_r2= 27scores matches 2 run clone -965 13 -1198 -969 15 -1197 25985 28 26009
execute if score p2_r3= 27scores matches 2 run clone -965 13 -1198 -969 15 -1197 25985 22 26009
execute if score p2_r4= 27scores matches 2 run clone -965 13 -1198 -969 15 -1197 25985 16 26009

# Score = 3
execute if score main= 27scores matches 3 run clone -973 13 -1198 -977 15 -1197 25998 41 26008
execute if score p1_l1= 27scores matches 3 run clone -973 13 -1198 -977 15 -1197 26011 34 26009
execute if score p1_l2= 27scores matches 3 run clone -973 13 -1198 -977 15 -1197 26011 28 26009
execute if score p1_l3= 27scores matches 3 run clone -973 13 -1198 -977 15 -1197 26011 22 26009
execute if score p1_l4= 27scores matches 3 run clone -973 13 -1198 -977 15 -1197 26011 16 26009
execute if score p1_r1= 27scores matches 3 run clone -973 13 -1198 -977 15 -1197 26003 34 26009
execute if score p1_r2= 27scores matches 3 run clone -973 13 -1198 -977 15 -1197 26003 28 26009
execute if score p1_r3= 27scores matches 3 run clone -973 13 -1198 -977 15 -1197 26003 22 26009
execute if score p1_r4= 27scores matches 3 run clone -973 13 -1198 -977 15 -1197 26003 16 26009
execute if score p2_l1= 27scores matches 3 run clone -973 13 -1198 -977 15 -1197 25993 34 26009
execute if score p2_l2= 27scores matches 3 run clone -973 13 -1198 -977 15 -1197 25993 28 26009
execute if score p2_l3= 27scores matches 3 run clone -973 13 -1198 -977 15 -1197 25993 22 26009
execute if score p2_l4= 27scores matches 3 run clone -973 13 -1198 -977 15 -1197 25993 16 26009
execute if score p2_r1= 27scores matches 3 run clone -973 13 -1198 -977 15 -1197 25985 34 26009
execute if score p2_r2= 27scores matches 3 run clone -973 13 -1198 -977 15 -1197 25985 28 26009
execute if score p2_r3= 27scores matches 3 run clone -973 13 -1198 -977 15 -1197 25985 22 26009
execute if score p2_r4= 27scores matches 3 run clone -973 13 -1198 -977 15 -1197 25985 16 26009

# Score = 4
execute if score main= 27scores matches 4 run clone -981 13 -1198 -985 15 -1197 25998 41 26008
execute if score p1_l1= 27scores matches 4 run clone -981 13 -1198 -985 15 -1197 26011 34 26009
execute if score p1_l2= 27scores matches 4 run clone -981 13 -1198 -985 15 -1197 26011 28 26009
execute if score p1_l3= 27scores matches 4 run clone -981 13 -1198 -985 15 -1197 26011 22 26009
execute if score p1_l4= 27scores matches 4 run clone -981 13 -1198 -985 15 -1197 26011 16 26009
execute if score p1_r1= 27scores matches 4 run clone -981 13 -1198 -985 15 -1197 26003 34 26009
execute if score p1_r2= 27scores matches 4 run clone -981 13 -1198 -985 15 -1197 26003 28 26009
execute if score p1_r3= 27scores matches 4 run clone -981 13 -1198 -985 15 -1197 26003 22 26009
execute if score p1_r4= 27scores matches 4 run clone -981 13 -1198 -985 15 -1197 26003 16 26009
execute if score p2_l1= 27scores matches 4 run clone -981 13 -1198 -985 15 -1197 25993 34 26009
execute if score p2_l2= 27scores matches 4 run clone -981 13 -1198 -985 15 -1197 25993 28 26009
execute if score p2_l3= 27scores matches 4 run clone -981 13 -1198 -985 15 -1197 25993 22 26009
execute if score p2_l4= 27scores matches 4 run clone -981 13 -1198 -985 15 -1197 25993 16 26009
execute if score p2_r1= 27scores matches 4 run clone -981 13 -1198 -985 15 -1197 25985 34 26009
execute if score p2_r2= 27scores matches 4 run clone -981 13 -1198 -985 15 -1197 25985 28 26009
execute if score p2_r3= 27scores matches 4 run clone -981 13 -1198 -985 15 -1197 25985 22 26009
execute if score p2_r4= 27scores matches 4 run clone -981 13 -1198 -985 15 -1197 25985 16 26009
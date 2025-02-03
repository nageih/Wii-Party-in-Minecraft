# Calculate score
# Get z pos
execute store result score z= 48scores run data get entity @s Pos[2]
# Calculate delta
scoreboard players operation dz= 48scores = z= 48scores
scoreboard players operation dz= 48scores -= 0= 48scores

scoreboard players operation @s 48distance = dz= 48scores

# Calculate distance from target
scoreboard players operation result= 48scores = dz= 48scores
scoreboard players operation result= 48scores -= distance= 48scores
# Get absolute value
execute if score result= 48scores matches ..-1 run scoreboard players operation result= 48scores *= -1 Numbers
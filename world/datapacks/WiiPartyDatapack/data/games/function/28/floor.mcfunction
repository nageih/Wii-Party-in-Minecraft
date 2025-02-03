$scoreboard players set temp= 28scores $(val)

scoreboard players operation mod= 28scores = temp= 28scores
scoreboard players operation mod= 28scores %= 2 Numbers

execute if score mod= 28scores matches 1 run scoreboard players remove temp= 28scores 1
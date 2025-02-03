scoreboard players operation mod= minigameSelect = timer= minigameSelect
execute if score currentTicks= minigameSelect matches 0..8 run scoreboard players operation mod= minigameSelect %= 3 Numbers
execute if score currentTicks= minigameSelect matches 9..11 run scoreboard players operation mod= minigameSelect %= 4 Numbers
execute if score currentTicks= minigameSelect matches 12..15 run scoreboard players operation mod= minigameSelect %= 5 Numbers
execute if score currentTicks= minigameSelect matches 16..20 run scoreboard players operation mod= minigameSelect %= 6 Numbers
execute if score currentTicks= minigameSelect matches 21.. run scoreboard players operation mod= minigameSelect %= 7 Numbers

execute if score mod= minigameSelect matches 0 run scoreboard players add selected= minigameSelect 1
execute if score mod= minigameSelect matches 0 if score selected= minigameSelect matches 4.. run scoreboard players set selected= minigameSelect 1
execute if score mod= minigameSelect matches 0 run function board:select/display_minigames
execute if score mod= minigameSelect matches 0 as @a[tag=playing] at @s run playsound block.note_block.hat master @s
execute if score mod= minigameSelect matches 0 run title @a[tag=playing] times 0 100 20


execute if score mod= minigameSelect matches 0 run scoreboard players add currentTicks= minigameSelect 1
execute if score mod= minigameSelect matches 0 if score currentTicks= minigameSelect = maxTicks= minigameSelect run function board:select/end_choose

# Check if scrolled up or down
execute store result score @s 24cur_slot run data get entity @s SelectedItemSlot
scoreboard players operation @s 24cur_slot -= @s 24last_slot 

# Adjust zoom value
execute unless score @s 24cur_slot matches 5..8 unless score @s 24cur_slot matches -4..0 if score @s 24zoom matches 2.. run scoreboard players remove @s 24zoom 1
execute unless score @s 24cur_slot matches 0..4 unless score @s 24cur_slot matches -8..-5 if score @s 24zoom matches ..8 run scoreboard players add @s 24zoom 1

execute store result score @s 24last_slot run data get entity @s SelectedItemSlot

# Set speed based on zoom value
effect clear @s speed
effect clear @s slowness

effect give @s[scores={24zoom=1}] speed infinite 3 true
effect give @s[scores={24zoom=2}] speed infinite 2 true
effect give @s[scores={24zoom=3}] speed infinite 1 true
effect give @s[scores={24zoom=4}] speed infinite 0 true
effect give @s[scores={24zoom=6}] slowness infinite 0 true
effect give @s[scores={24zoom=7}] slowness infinite 1 true
effect give @s[scores={24zoom=8}] slowness infinite 2 true
effect give @s[scores={24zoom=9}] slowness infinite 3 true

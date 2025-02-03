



execute store result score temp= newCheck run data get entity @s SelectedItemSlot

scoreboard players operation temp= newCheck -= @s newCheck

execute if score temp= newCheck matches -1 run tag @s add down
execute if score temp= newCheck matches 1 run tag @s add up
execute unless score temp= newCheck matches 0 run function general:new_check/scroll

execute store result score @s newCheck run data get entity @s SelectedItemSlot
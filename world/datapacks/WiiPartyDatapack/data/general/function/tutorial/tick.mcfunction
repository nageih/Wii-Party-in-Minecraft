#   Author        =   @ T4Bl3rUs
#   Description   =   Handles the tutorial before the games
#   Called By     =   games:*/main_start

# Cycle through the video
execute store success score %remove practice run data modify storage minecraft:tutorials temp3 set from storage minecraft:tutorials temp[0]
execute if score %remove practice matches 0 run data modify storage minecraft:tutorials temp set from storage minecraft:tutorials temp2

# Change storage
function general:tutorial/update_signs
data remove storage minecraft:tutorials temp[0]

# Update the lecterns
execute as @a[tag=ingame,team=blue] at @s run data modify block ~ ~1 ~ Book.tag.pages[0] set from storage minecraft:tutorials lecterns.blue
execute as @a[tag=ingame,team=red] at @s run data modify block ~ ~1 ~ Book.tag.pages[0] set from storage minecraft:tutorials lecterns.red
execute as @a[tag=ingame,team=orange] at @s run data modify block ~ ~1 ~ Book.tag.pages[0] set from storage minecraft:tutorials lecterns.orange
execute as @a[tag=ingame,team=green] at @s run data modify block ~ ~1 ~ Book.tag.pages[0] set from storage minecraft:tutorials lecterns.green

# Check buttons
function general:practice/main

# Modify buttons
scoreboard players enable @a[tag=ingame] practice
execute if score countdown= practice matches 1.. run function general:tutorial/play

scoreboard players enable @a[tag=ingame] play
execute if score total= practice matches 1.. run function general:tutorial/practice

execute unless score countdown= practice matches 1.. unless score total= practice matches 1.. run data modify storage minecraft:tutorials play set value {blue:'{"nbt":"colors.blue","storage":"minecraft:config","interpret":true,"extra":[{"translate":"generic.Book.Play","clickEvent":{"action":"run_command","value":"/trigger play set 1"}}]}',red:'{"nbt":"colors.red","storage":"minecraft:config","interpret":true,"extra":[{"translate":"generic.Book.Play","clickEvent":{"action":"run_command","value":"/trigger play set 1"}}]}',orange:'{"nbt":"colors.orange","storage":"minecraft:config","interpret":true,"extra":[{"translate":"generic.Book.Play","clickEvent":{"action":"run_command","value":"/trigger play set 1"}}]}',green:'{"nbt":"colors.green","storage":"minecraft:config","interpret":true,"extra":[{"translate":"generic.Book.Play","clickEvent":{"action":"run_command","value":"/trigger play set 1"}}]}'}
execute unless score countdown= practice matches 1.. unless score total= practice matches 1.. run data modify storage minecraft:tutorials practice set value {blue:'{"nbt":"colors.blue","storage":"minecraft:config","interpret":true,"extra":[{"translate":"generic.Book.Practice","clickEvent":{"action":"run_command","value":"/trigger practice set 1"}}]}',red:'{"nbt":"colors.red","storage":"minecraft:config","interpret":true,"extra":[{"translate":"generic.Book.Practice","clickEvent":{"action":"run_command","value":"/trigger practice set 1"}}]}',orange:'{"nbt":"colors.orange","storage":"minecraft:config","interpret":true,"extra":[{"translate":"generic.Book.Practice","clickEvent":{"action":"run_command","value":"/trigger practice set 1"}}]}',green:'{"nbt":"colors.green","storage":"minecraft:config","interpret":true,"extra":[{"translate":"generic.Book.Practice","clickEvent":{"action":"run_command","value":"/trigger practice set 1"}}]}'}

execute unless score countdown= practice matches 1.. run title @a[tag=ingame] title ""
execute unless score countdown= practice matches 1.. run title @a[tag=ingame] times 0 100 0
execute unless score countdown= practice matches 100.. run title @a[tag=ingame,team=blue] subtitle {"nbt":"colors.blue","storage":"minecraft:config","interpret":true,"extra":[{"translate":"generic.Practice.ViewOptions","with":[{"keybind":"key.use","type":"keybind"}]}],"source":"storage","type":"nbt"}
execute unless score countdown= practice matches 100.. run title @a[tag=ingame,team=red] subtitle {"nbt":"colors.red","storage":"minecraft:config","interpret":true,"extra":[{"translate":"generic.Practice.ViewOptions","with":[{"keybind":"key.use","type":"keybind"}]}],"source":"storage","type":"nbt"}
execute unless score countdown= practice matches 100.. run title @a[tag=ingame,team=green] subtitle {"nbt":"colors.green","storage":"minecraft:config","interpret":true,"extra":[{"translate":"generic.Practice.ViewOptions","with":[{"keybind":"key.use","type":"keybind"}]}],"source":"storage","type":"nbt"}
execute unless score countdown= practice matches 100.. run title @a[tag=ingame,team=orange] subtitle {"nbt":"colors.orange","storage":"minecraft:config","interpret":true,"extra":[{"translate":"generic.Practice.ViewOptions","with":[{"keybind":"key.use","type":"keybind"}]}],"source":"storage","type":"nbt"}
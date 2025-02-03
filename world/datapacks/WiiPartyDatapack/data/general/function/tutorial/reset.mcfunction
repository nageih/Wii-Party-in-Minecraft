#   Author        =   @ T4Bl3rUs
#   Description   =   Resets the scoreboard and the storage
#   Called By     =   games:*/start + general:practice/start_play

scoreboard players set play= pregame -1
scoreboard players set practice= pregame 0
scoreboard players set nopractice= pregame 0
scoreboard players reset %remove practice
scoreboard players reset countdown2= practice
scoreboard players reset @a practice
scoreboard players reset practice2= practice

data modify storage minecraft:tutorials play set value {blue:'{"nbt":"colors.blue","storage":"minecraft:config","interpret":true,"extra":[{"translate":"generic.Book.Play","clickEvent":{"action":"run_command","value":"/trigger play set 1"}}]}',red:'{"nbt":"colors.red","storage":"minecraft:config","interpret":true,"extra":[{"translate":"generic.Book.Play","clickEvent":{"action":"run_command","value":"/trigger play set 1"}}]}',orange:'{"nbt":"colors.orange","storage":"minecraft:config","interpret":true,"extra":[{"translate":"generic.Book.Play","clickEvent":{"action":"run_command","value":"/trigger play set 1"}}]}',green:'{"nbt":"colors.green","storage":"minecraft:config","interpret":true,"extra":[{"translate":"generic.Book.Play","clickEvent":{"action":"run_command","value":"/trigger play set 1"}}]}'}
data modify storage minecraft:tutorials practice set value {blue:'{"nbt":"colors.blue","storage":"minecraft:config","interpret":true,"extra":[{"translate":"generic.Book.Practice","clickEvent":{"action":"run_command","value":"/trigger practice set 1"}}]}',red:'{"nbt":"colors.red","storage":"minecraft:config","interpret":true,"extra":[{"translate":"generic.Book.Practice","clickEvent":{"action":"run_command","value":"/trigger practice set 1"}}]}',orange:'{"nbt":"colors.orange","storage":"minecraft:config","interpret":true,"extra":[{"translate":"generic.Book.Practice","clickEvent":{"action":"run_command","value":"/trigger practice set 1"}}]}',green:'{"nbt":"colors.green","storage":"minecraft:config","interpret":true,"extra":[{"translate":"generic.Book.Practice","clickEvent":{"action":"run_command","value":"/trigger practice set 1"}}]}'}
#   Author        =   @ T4Bl3rUs and JevinLevin
#   Description   =   Main function for the practice workspace
#   Called By     =   general:tutorial/tick

scoreboard players enable @a[tag=ingame] play

execute as @a[tag=ingame] unless score @s practice matches 1.. run scoreboard players enable @s practice

execute as @a[tag=ingame,scores={practice=1}] run function general:practice/new
execute as @a[tag=ingame,scores={practice=10}] run function general:practice/new

execute as @a[tag=ingame,scores={play=1..}] unless score starting= practice matches 1.. run function general:practice/play
execute as @a[tag=ingame,scores={play=1..}] if score starting= practice matches 1.. run function general:practice/cancel

execute if score starting= practice matches 1 run title @a[tag=playing] subtitle ""
execute if score starting= practice matches 1 run scoreboard players add countdown= practice 1
execute if score countdown= practice matches 1 run title @a[tag=playing] title {"text":"5","color":"green","type":"text"}
execute if score countdown= practice matches 1 as @a[tag=playing] at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 3 1
execute if score countdown= practice matches 1..20 run scoreboard players set countdown2= practice 5
execute if score countdown= practice matches 21 run title @a[tag=playing] title {"text":"4","color":"#6ece3f","type":"text"}
execute if score countdown= practice matches 21 as @a[tag=playing] at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 3 1.2
execute if score countdown= practice matches 21..40 run scoreboard players set countdown2= practice 4
execute if score countdown= practice matches 41 run title @a[tag=playing] title {"text":"3","color":"#d9d91a","type":"text"}
execute if score countdown= practice matches 41 as @a[tag=playing] at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 3 1.4
execute if score countdown= practice matches 41..60 run scoreboard players set countdown2= practice 3
execute if score countdown= practice matches 61 run title @a[tag=playing] title {"text":"2","color":"#ce6e3f","type":"text"}
execute if score countdown= practice matches 61 as @a[tag=playing] at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 3 1.6
execute if score countdown= practice matches 61..80 run scoreboard players set countdown2= practice 2
execute if score countdown= practice matches 81 run title @a[tag=playing] title {"text":"1","color":"red","type":"text"}
execute if score countdown= practice matches 81 as @a[tag=playing] at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 3 1.8
execute if score countdown= practice matches 81..100 run scoreboard players set countdown2= practice 1

execute if score countdown= practice matches 101 run function general:practice/start_play
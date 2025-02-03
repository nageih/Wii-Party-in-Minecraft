tp ^ ^ ^.1

# Limits
execute store result score raycastx= 18scores run data get entity @s Pos[0]
execute store result score raycasty= 18scores run data get entity @s Pos[1]
execute store result score raycastz= 18scores run data get entity @s Pos[2]

execute if score raycastx= 18scores matches 19167.. run tag @s add kill
execute if score raycastx= 18scores matches ..19148 run tag @s add kill
execute if score raycastz= 18scores matches 19164.. run tag @s add kill
execute if score raycastz= 18scores matches ..19145 run tag @s add kill
execute if score raycastx= 18scores matches 19157..19158 run tag @s add kill
execute if score raycastz= 18scores matches 19154..19155 run tag @s add kill
execute unless score raycasty= 18scores matches 38..50 run tag @s add kill

execute if entity @s[tag=!kill] if score raycasty= 18scores matches 39 run tag @s add done
execute if entity @s[tag=done] run tp ~ 40.1 ~

execute at @s if entity @s[tag=!kill,tag=!done] run function games:18/raycasting/step
execute if entity @s[tag=done] at @s run tag @e[type=minecraft:armor_stand,distance=..2,tag=game18,tag=!base,sort=nearest,limit=1] add lookingat
execute if entity @s[tag=kill] run kill @s
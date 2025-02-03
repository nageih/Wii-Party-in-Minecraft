#left click detection

#execute if score ingame 8scores matches 2 as @a[tag=!finished,scores={8hitss=50..}] run function games:8/finishchopping

execute if score ingame 8scores matches 2 run function games:8/set_slime
execute if score ingame 8scores matches 2 as @e[type=magma_cube,tag=carrot,nbt={HurtTime:10s}] at @s run function games:8/chop

execute if score ingame 8scores matches 1.. run effect give @e[type=minecraft:magma_cube,tag=carrot] minecraft:instant_health 1 20 true

effect give @e[type=minecraft:magma_cube,tag=carrot] minecraft:invisibility infinite 1 true

execute if score ingame 8scores matches 2 if score notfinished= 8scores matches ..1 run function games:8/finish
execute store result score notfinished= 8scores if entity @a[tag=ingame,tag=!finished]

execute if score ingame 8scores matches 1.. as @a[tag=ingame] unless predicate games:8knife run function games:8/give_knife

effect clear @a[tag=ingame] weakness

#timer
execute if score ingame 8scores matches 2 run scoreboard players remove timer= 8scores 1
execute if score ingame 8scores matches 2 if score timer= 8scores matches 0 run function games:8/timer_expire
execute if score timer= 8scores matches ..0 run scoreboard players reset timer= 8scores

#bossbar
execute store result bossbar minecraft:8bluetimer value run scoreboard players get timer= 8scores
execute store result bossbar minecraft:8redtimer value run scoreboard players get timer= 8scores
execute store result bossbar minecraft:8greentimer value run scoreboard players get timer= 8scores
execute store result bossbar minecraft:8orangetimer value run scoreboard players get timer= 8scores
execute store result bossbar minecraft:8spectimer value run scoreboard players get timer= 8scores
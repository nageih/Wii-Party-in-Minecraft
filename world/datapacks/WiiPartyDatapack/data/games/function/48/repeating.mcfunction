#timer
execute if score ingame= 48scores matches 2 if entity @a[tag=ingame,tag=!48locked] run scoreboard players remove timer= 48scores 1
execute if score ingame= 48scores matches 2 if entity @a[tag=ingame,tag=!48locked] if score timer= 48scores matches 0 as @a[tag=ingame,tag=!48locked] run function games:48/lock
execute if score timer= 48scores matches 0 run scoreboard players reset timer= 48scores

#bossbar
execute store result bossbar minecraft:48bluetimer value run scoreboard players get timer= 48scores
execute store result bossbar minecraft:48redtimer value run scoreboard players get timer= 48scores
execute store result bossbar minecraft:48greentimer value run scoreboard players get timer= 48scores
execute store result bossbar minecraft:48orangetimer value run scoreboard players get timer= 48scores
execute store result bossbar minecraft:48spectimer value run scoreboard players get timer= 48scores

# Title for right click
execute if score ingame= 48scores matches 2 run title @a[tag=ingame,team=blue,tag=!48locked] actionbar {"color":"#0088ff","translate":"game.WalkOff.Lock.Info"}
execute if score ingame= 48scores matches 2 run title @a[tag=ingame,team=red,tag=!48locked] actionbar {"color":"red","translate":"game.WalkOff.Lock.Info"}
execute if score ingame= 48scores matches 2 run title @a[tag=ingame,team=green,tag=!48locked] actionbar {"color":"green","translate":"game.WalkOff.Lock.Info"}
execute if score ingame= 48scores matches 2 run title @a[tag=ingame,team=orange,tag=!48locked] actionbar {"color":"gold","translate":"game.WalkOff.Lock.Info"}

# Check lock
execute if score ingame= 48scores matches 2 as @a[tag=ingame,tag=!48locked] at @s if score @s rightClick matches 1.. run function games:48/lock
execute if score ingame= 48scores matches 2 if entity @a[tag=ingame,tag=!48locked] as @a[tag=ingame,tag=48locked] at @s if score @s rightClick matches 1.. run function games:48/unlock

# Handle right click detection
execute if score ingame= 48scores matches 2 as @a[tag=ingame] unless predicate games:48stick run item replace entity @s weapon.offhand with carrot_on_a_stick[custom_data={walkoff:1b},custom_model_data=1]
kill @e[type=item,nbt={Item:{id:"minecraft:carrot_on_a_stick",count:1,components:{"minecraft:custom_data":{walkoff:1b}}}}]

# Target display
execute if score ingame= 48scores matches 2 run title @a[tag=playing] title ""
execute if score ingame= 48scores matches 2 run title @a[tag=ingame,team=blue] subtitle [{"text":"","color":"#0088ff","bold":true},{"score":{"name": "distance=","objective": "48scores"}}]
execute if score ingame= 48scores matches 2 run title @a[tag=ingame,team=red] subtitle [{"text":"","color":"red","bold":true},{"score":{"name": "distance=","objective": "48scores"}}]
execute if score ingame= 48scores matches 2 run title @a[tag=ingame,team=green] subtitle [{"text":"","color":"green","bold":true},{"score":{"name": "distance=","objective": "48scores"}}]
execute if score ingame= 48scores matches 2 run title @a[tag=ingame,team=orange] subtitle [{"text":"","color":"gold","bold":true},{"score":{"name": "distance=","objective": "48scores"}}]
execute if score ingame= 48scores matches 2 run title @a[tag=!ingame,tag=playing] subtitle [{"text":"","color":"light_purple","bold":true},{"score":{"name": "distance=","objective": "48scores"}}]

# Spectate cutscene
execute if score ingame= 48scores matches 3 run scoreboard players add cutscene= 48scores 1
execute if score ingame= 48scores matches 3 unless score cutscene= 48scores matches 181.. as @e[type=item_display,tag=48cutscene] at @s run function games:48/cutscene_play
execute if score ingame= 48scores matches 3 if score cutscene= 48scores matches 200 run function games:48/give_score
execute if score ingame= 48scores matches 3 if score cutscene= 48scores matches 220.. run function games:48/finish
execute if score ingame= 48scores matches 3 as @a[tag=playing] run spectate @e[type=item_display,tag=48cutscene,limit=1]
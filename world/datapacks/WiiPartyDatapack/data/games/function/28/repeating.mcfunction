# Time logic
execute if score ingame= 28scores matches 2.. run scoreboard players add timer= 28scores 1
execute if score ingame= 28scores matches 2.. as @e[type=text_display,tag=28timer,tag=!stopped] run function games:28/set_timers


# If the player stops
execute if score ingame= 28scores matches 3 unless score closing= 28scores matches 1.. as @a[tag=ingame,tag=!28stopped] if score @s rightClick matches 1.. run function games:28/click_stop


# End game logic
# Once all players click stop
execute if score ingame= 28scores matches 3 unless entity @a[tag=ingame,tag=!28stopped] run function games:28/reveal_start
# If player fails to stop after time runs out
execute if score ingame= 28scores matches 3 if score timer= 28scores = max= 28scores run function games:28/reveal_start

# Reveal times
execute if score ingame= 28scores matches 4 if score revealing= 28scores matches 1 run function games:28/reveal


# Closing timer mechanic
execute if score ingame= 28scores matches 2 if score timer= 28scores matches 60.. run function games:28/close_start
execute if score closing= 28scores matches 1 run function games:28/close


# Ticking sound
scoreboard players operation mod= 28scores = timer= 28scores
scoreboard players operation mod= 28scores %= 4 Numbers
execute if score ingame= 28scores matches 2..3 if score mod= 28scores matches 0 as @a[tag=playing] at @s run playsound block.note_block.hat master @s ~ ~ ~ 1 0.75


# Spectate correct stopwatch
execute as @a[tag=ingame,team=blue] run ride @s mount @e[type=magma_cube,tag=28bluedisplay,limit=1]
execute as @a[tag=ingame,team=red] run ride @s mount @e[type=magma_cube,tag=28reddisplay,limit=1]
execute as @a[tag=ingame,team=green] run ride @s mount @e[type=magma_cube,tag=28greendisplay,limit=1]
execute as @a[tag=ingame,team=orange] run ride @s mount @e[type=magma_cube,tag=28orangedisplay,limit=1]



# Set coas to everyones mainhand
execute if score ingame= 28scores matches 1.. run clear @a[tag=ingame] carrot_on_a_stick[minecraft:custom_data={28stop:1b}]
execute if score ingame= 28scores matches 1.. run item replace entity @a[tag=ingame] weapon.mainhand with carrot_on_a_stick[custom_name='""',unbreakable={},custom_model_data=1,custom_data={28stop:1b},hide_tooltip={},hide_additional_tooltip={}] 1
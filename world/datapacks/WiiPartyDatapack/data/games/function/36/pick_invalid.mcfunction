
data merge entity @s {start_interpolation:-1,interpolation_duration:8,transformation:[0.001f,0f,1f,0f,0f,1f,0f,0f,-1f,0f,0.001f,0f,0f,0f,0f,1f]}

execute as @a[tag=playing] at @s run playsound block.note_block.didgeridoo master @s

tag @e[type=item_display,tag=36valid] remove 36valid
tag @e[type=item_display,tag=36selected] remove 36selected
execute as @e[type=item_display,tag=36card,tag=!36finish] run function games:36/unhover

schedule function games:36/new_turn 10t
execute if entity @s[tag=23left] run data merge entity @e[type=item_display,tag=23cart,limit=1,sort=nearest] {start_interpolation:-1,interpolation_duration:4,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0.1f,0f,0f,1f],translation:[0f,0.1f,0.1f],scale:[1.25f,1.25f,1.25f]}}
execute if entity @s[tag=23right] run data merge entity @e[type=item_display,tag=23cart,limit=1,sort=nearest] {start_interpolation:-1,interpolation_duration:4,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[-0.1f,0f,0f,1f],translation:[0f,0.1f,-0.1f],scale:[1.25f,1.25f,1.25f]}}
execute if entity @s[tag=23forward] as @e[type=item_display,tag=23cart,limit=1,sort=nearest] run function games:23/tilt_reset
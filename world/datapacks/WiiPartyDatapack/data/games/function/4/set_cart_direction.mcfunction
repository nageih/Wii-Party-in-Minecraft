execute if entity @s[team=blue] run tag @e[type=item_display,tag=blue,tag=4cart] add tempCart
execute if entity @s[team=red] run tag @e[type=item_display,tag=red,tag=4cart] add tempCart
execute if entity @s[team=green] run tag @e[type=item_display,tag=green,tag=4cart] add tempCart
execute if entity @s[team=orange] run tag @e[type=item_display,tag=orange,tag=4cart] add tempCart

execute if score @s 4direction matches 1 run data merge entity @n[tag=tempCart] {transformation:{left_rotation:{angle:-1.57f,axis:[0f,1f,0f]}},start_interpolation:-1,interpolation_duration:3}
execute if score @s 4direction matches 2 run data merge entity @n[tag=tempCart] {transformation:{left_rotation:{angle:3.14f,axis:[0f,1f,0f]}},start_interpolation:-1,interpolation_duration:3}
execute if score @s 4direction matches 3 run data merge entity @n[tag=tempCart] {transformation:{left_rotation:{angle:1.57f,axis:[0f,1f,0f]}},start_interpolation:-1,interpolation_duration:3}
execute if score @s 4direction matches 4 run data merge entity @n[tag=tempCart] {transformation:{left_rotation:{angle:0f,axis:[0f,1f,0f]}},start_interpolation:-1,interpolation_duration:3}

tag @e remove tempCart
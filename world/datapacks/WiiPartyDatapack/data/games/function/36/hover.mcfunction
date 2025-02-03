tag @s add 36select

# data merge entity @s {Glowing:1b}
execute if entity @r[tag=36turn,team=blue] run team join blue @s
execute if entity @r[tag=36turn,team=red] run team join red @s
execute if entity @r[tag=36turn,team=green] run team join green @s
execute if entity @r[tag=36turn,team=orange] run team join orange @s

data merge entity @s {start_interpolation:-1,interpolation_duration:4,transformation:[0.001f,0f,1f,0f,0f,1f,0f,0.5f,-1f,0f,0.001f,0f,0f,0f,0f,1f]}

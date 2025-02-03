#   Author        =   @ T4Bl3rUs
#   Description   =   Runs as an aec when the player clicks
#   Called By     =   games:27/raytracing/start



#particle minecraft:firework ~ ~ ~ .1 .1 .1 0 5
tp ^ ^ ^1

# Limits
# Front
execute if entity @s[z=26009,dz=10000] run tag @s add kill
# Back
execute if entity @s[z=25963,dz=-10000] run tag @s add kill
# Middle
execute if entity @s[x=25999.6,dx=.8] run tag @s add kill
# Left
execute if entity @s[x=26037,dx=10000] run tag @s add kill
# Right
execute if entity @s[x=25963,dx=-10000] run tag @s add kill
# Top
execute if entity @s[y=38,dy=10000] run tag @s add kill
# Bottom
execute if entity @s[y=15,dy=-10000] run tag @s add kill

# TVs
# Left row (p1) (top to bottom)
execute if entity @s[x=26016,y=33,z=26009,dx=-6,dy=4,dz=3] run function games:27/tvs/p1_l1
execute if entity @s[x=26016,y=27,z=26009,dx=-6,dy=4,dz=3] run function games:27/tvs/p1_l2
execute if entity @s[x=26016,y=21,z=26009,dx=-6,dy=4,dz=3] run function games:27/tvs/p1_l3
execute if entity @s[x=26016,y=15,z=26009,dx=-6,dy=4,dz=3] run function games:27/tvs/p1_l4
# Right row (p1) (top to bottom)
execute if entity @s[x=26008,y=33,z=26009,dx=-6,dy=4,dz=3] run function games:27/tvs/p1_r1
execute if entity @s[x=26008,y=27,z=26009,dx=-6,dy=4,dz=3] run function games:27/tvs/p1_r2
execute if entity @s[x=26008,y=21,z=26009,dx=-6,dy=4,dz=3] run function games:27/tvs/p1_r3
execute if entity @s[x=26008,y=15,z=26009,dx=-6,dy=4,dz=3] run function games:27/tvs/p1_r4
# Left row (p2) (top to bottom)
execute if entity @s[x=25998,y=33,z=26009,dx=-6,dy=4,dz=3] run function games:27/tvs/p2_l1
execute if entity @s[x=25998,y=27,z=26009,dx=-6,dy=4,dz=3] run function games:27/tvs/p2_l2
execute if entity @s[x=25998,y=21,z=26009,dx=-6,dy=4,dz=3] run function games:27/tvs/p2_l3
execute if entity @s[x=25998,y=15,z=26009,dx=-6,dy=4,dz=3] run function games:27/tvs/p2_l4
# Right row (p2) (top to bottom)
execute if entity @s[x=25990,y=33,z=26009,dx=-6,dy=4,dz=3] run function games:27/tvs/p2_r1
execute if entity @s[x=25990,y=27,z=26009,dx=-6,dy=4,dz=3] run function games:27/tvs/p2_r2
execute if entity @s[x=25990,y=21,z=26009,dx=-6,dy=4,dz=3] run function games:27/tvs/p2_r3
execute if entity @s[x=25990,y=15,z=26009,dx=-6,dy=4,dz=3] run function games:27/tvs/p2_r4

execute at @s if entity @s[tag=!kill] run function games:27/raytracing/step
execute if entity @s[tag=kill] run kill @s
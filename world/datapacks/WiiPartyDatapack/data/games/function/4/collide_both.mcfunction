#   Author        =   @ JevinLevin
#   Description   =   Ran when 2 players hit each other
#   Called By     =   games:4/player

#tag @s remove 4collideBoth

tag @s add tempPlayer
# If the other player is infront then ignore this player
execute if entity @s[scores={4direction=1}] positioned ~1 ~ ~ positioned ~-.5 ~ ~-.5 if entity @a[tag=!tempPlayer,tag=4collideBoth,tag=ingame,tag=!4hit,tag=!4dead,dx=0,dy=0,dz=0] run tag @s add tempIgnore
execute if entity @s[scores={4direction=3}] positioned ~-1 ~ ~ positioned ~-.5 ~ ~-.5 if entity @a[tag=!tempPlayer,tag=4collideBoth,tag=ingame,tag=!4hit,tag=!4dead,dx=0,dy=0,dz=0] run tag @s add tempIgnore
execute if entity @s[scores={4direction=2}] positioned ~ ~ ~1 positioned ~-.5 ~ ~-.5 if entity @a[tag=!tempPlayer,tag=4collideBoth,tag=ingame,tag=!4hit,tag=!4dead,dx=0,dy=0,dz=0] run tag @s add tempIgnore
execute if entity @s[scores={4direction=4}] positioned ~ ~ ~-1 positioned ~-.5 ~ ~-.5 if entity @a[tag=!tempPlayer,tag=4collideBoth,tag=ingame,tag=!4hit,tag=!4dead,dx=0,dy=0,dz=0] run tag @s add tempIgnore
tag @s remove tempPlayer


execute if entity @s[tag=tempIgnore] run function games:4/collide

tag @s remove tempIgnore
execute anchored eyes run place template games:16/knockback_arrow ^ ^ ^-.5

execute positioned 0.0 0 0.0 run summon marker ^ ^ ^7 {Tags:["direction"]}
execute as @e[type=marker,tag=direction] at @s run tp @s ~ 0 ~

tag @n[type=arrow] add 16temp
tag @n[type=arrow,tag=16temp,tag=!16arrow] add 16arrow
execute as @n[type=arrow,tag=16temp] at @s run tp @s ~ 19 ~

# copy the markers position tag to the sheeps motion tag
#data modify entity @n[type=arrow,tag=16temp] Rotation set from entity @s Rotation
data modify entity @n[type=arrow,tag=16temp] Motion set from entity @e[type=marker,tag=direction,limit=1] Pos
data modify entity @n[type=arrow,tag=16temp] Owner set from entity @s UUID

execute store result entity @n[type=arrow,tag=16temp] Air double 1 run time query gametime

# clean up
tag @e[tag=16temp] remove 16temp
kill @e[tag=direction]
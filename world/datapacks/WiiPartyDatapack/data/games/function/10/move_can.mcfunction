$tp @e[type=magma_cube,tag=10hitbox,tag=$(color)] ~ ~ ~
$tp @e[type=item_display,tag=10can,tag=$(color)] ~ ~ ~


# Prevent falling too fast

execute store result score motion= 10scores run data get entity @s Motion[1] 100

execute if score motion= 10scores matches ..-25 run data modify entity @s Motion[1] set value -0.3d
# Gives the slime a Y motion of 0.5 when it touches the ground to simulate bouncing
data modify entity @s Motion[1] set value 0.5d

# Increases the slimes bounce scoreboard by 1, used to determine how many times it bounces and when it needs to end the go
scoreboard players add @s 22bounce 1
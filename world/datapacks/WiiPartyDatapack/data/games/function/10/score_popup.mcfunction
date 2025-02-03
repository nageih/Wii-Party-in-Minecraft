tp @s ~ ~.1 ~

scoreboard players add @s 10lifetime 1

data modify entity @s[type=text_display,tag=10score,scores={10lifetime=4}] text_opacity set value 210
data modify entity @s[type=text_display,tag=10score,scores={10lifetime=5}] text_opacity set value 170
data modify entity @s[type=text_display,tag=10score,scores={10lifetime=6}] text_opacity set value 130
data modify entity @s[type=text_display,tag=10score,scores={10lifetime=7}] text_opacity set value 90
data modify entity @s[type=text_display,tag=10score,scores={10lifetime=8}] text_opacity set value 50
data modify entity @s[type=text_display,tag=10score,scores={10lifetime=9}] text_opacity set value 10

# Kills it after 10 ticks
kill @s[scores={10lifetime=10..}]
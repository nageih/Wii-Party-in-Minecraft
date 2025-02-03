#   Author        =   @ JevinLevin
#   Description   =   Teleports the floating text up
#   Called By     =   games:26/repeating


# Teleports the text up
tp @s ~ ~.2 ~

# Increases its lifetime score
scoreboard players add @s 26scores 1

data modify entity @s[type=text_display,scores={26scores=5}] text_opacity set value 210
data modify entity @s[type=text_display,scores={26scores=6}] text_opacity set value 170
data modify entity @s[type=text_display,scores={26scores=7}] text_opacity set value 130
data modify entity @s[type=text_display,scores={26scores=8}] text_opacity set value 90
data modify entity @s[type=text_display,scores={26scores=9}] text_opacity set value 50
data modify entity @s[type=text_display,scores={26scores=10}] text_opacity set value 10

# Kills it after 10 ticks
kill @s[scores={26scores=10..}]


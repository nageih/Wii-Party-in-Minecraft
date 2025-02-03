scoreboard objectives add draw dummy
scoreboard players reset global minigame
spreadplayers -302 -31 1 5 under 11 true @a[tag=playing]
effect give @a[tag=playing] weakness infinite 255 true

# execute as @a[tag=playing] at @s run playsound music:main_finish voice @s

scoreboard players set song= draw 0

function board:draw/new_placement

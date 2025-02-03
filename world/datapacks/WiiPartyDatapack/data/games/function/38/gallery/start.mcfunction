scoreboard players reset @a 38scores
clear @a
effect clear @a[tag=ingame] minecraft:invisibility
function games:38/overlay/clear
scoreboard players set enabled= specOptions 0
function games:38/gallery/blue

stopsound @a[tag=playing] voice
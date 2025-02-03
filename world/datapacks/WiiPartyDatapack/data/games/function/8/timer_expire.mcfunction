execute if entity @a[tag=1st] if entity @a[tag=2nd] if entity @a[tag=3rd] unless entity @a[tag=4th] run tag @a[tag=ingame,tag=!finished] add 4th
execute if entity @a[tag=1st] if entity @a[tag=2nd] unless entity @a[tag=3rd] run tag @a[tag=ingame,tag=!finished] add 3rd
execute if entity @a[tag=1st] unless entity @a[tag=2nd] run tag @a[tag=ingame,tag=!finished] add 2nd
execute unless entity @a[tag=1st] run tag @a[tag=ingame,tag=!finished] add 1st 

tag @a[tag=ingame,tag=!finished] add finished

function games:8/finish
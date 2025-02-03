execute store result score players= 23scores if entity @a[tag=ingame]

# Summon carts for each player in random order
execute as @r[tag=ingame,tag=!23hascart] positioned ~ ~ ~ run function games:23/summon_cart
execute as @r[tag=ingame,tag=!23hascart] positioned ~3 ~ ~ run function games:23/summon_cart
execute if score players= 23scores matches 3.. as @r[tag=ingame,tag=!23hascart] positioned ~6 ~ ~ run function games:23/summon_cart
execute if score players= 23scores matches 4 as @r[tag=ingame,tag=!23hascart] positioned ~9 ~ ~ run function games:23/summon_cart


tag @a remove 23hascart
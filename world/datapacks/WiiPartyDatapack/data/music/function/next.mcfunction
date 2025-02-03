execute unless score @s nbs_speedmultip matches 1.. run scoreboard players set @s nbs_speedmultip 100

scoreboard players operation speed= nbs_speedmultip = speed= nbs_maintheme
execute as @a[tag=nbs_maintheme] run function music:next2
scoreboard players operation @s nbs_maintheme += speed= nbs_speedmultip

scoreboard players operation speed= nbs_speedmultip = speed= nbs_barreldare
execute as @a[tag=nbs_barreldare] run function music:next2
scoreboard players operation @s nbs_barreldare += speed= nbs_speedmultip

scoreboard players operation speed= nbs_speedmultip = speed= nbs_backattack
execute as @a[tag=nbs_backattack] run function music:next2
scoreboard players operation @s nbs_backattack += speed= nbs_speedmultip

scoreboard players operation speed= nbs_speedmultip = speed= nbs_friendlyfac
execute as @a[tag=nbs_friendlyfac] run function music:next2
scoreboard players operation @s nbs_friendlyfac += speed= nbs_speedmultip

scoreboard players operation speed= nbs_speedmultip = speed= nbs_shutterpup
execute as @a[tag=nbs_shutterpup] run function music:next2
scoreboard players operation @s nbs_shutterpup += speed= nbs_speedmultip
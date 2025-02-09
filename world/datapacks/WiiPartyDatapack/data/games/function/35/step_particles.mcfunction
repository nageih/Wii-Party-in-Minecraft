tag @s add 35temp

execute if entity @s[team=blue] as @e[type=marker,tag=35step] at @s if score @s 35step = @r[tag=35temp] 35step run particle dust{color:[0.231,0.565,1.000],scale:2} ~1 ~2.5 ~ 0 1 5 1 3 normal @a[tag=35temp,team=blue]
execute if entity @s[team=red] as @e[type=marker,tag=35step] at @s if score @s 35step = @r[tag=35temp] 35step run particle dust{color:[1.000,0.255,0.231],scale:2} ~1 ~2.5 ~ 0 1 5 1 3 normal @a[tag=35temp,team=red]
execute if entity @s[team=green] as @e[type=marker,tag=35step] at @s if score @s 35step = @r[tag=35temp] 35step run particle dust{color:[0.231,1.000,0.435],scale:2} ~1 ~2.5 ~ 0 1 5 1 3 normal @a[tag=35temp,team=green]
execute if entity @s[team=orange] as @e[type=marker,tag=35step] at @s if score @s 35step = @r[tag=35temp] 35step run particle dust{color:[1.000,0.749,0.251],scale:2} ~1 ~2.5 ~ 0 1 5 1 3 normal @a[tag=35temp,team=orange]

tag @s remove 35temp
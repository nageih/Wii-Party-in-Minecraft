tag @s add currentSpec

execute as @a[tag=ingame] if score @s 5id = @e[tag=currentSpec,limit=1] 5id run spectate @e[tag=specMain,limit=1] @s

kill @s
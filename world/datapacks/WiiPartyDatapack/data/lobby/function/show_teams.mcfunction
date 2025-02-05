tellraw @s ""
execute if entity @a[team=blue] run tellraw @s {"translate":"lobby.NotEnough.Team","bold":true,"color":"#0088ff", "with": [{"translate":"generic.Blue"},{"selector": "@a[team=blue,limit=1]","bold":false}]}
execute unless entity @a[team=blue] run tellraw @s {"translate":"lobby.NotEnough.Team","bold":true,"color":"#0088ff", "with": [{"translate":"generic.Blue"},{"translate": "lobby.NotEnough.Empty","color":"gray","bold":false}]}
execute if entity @a[team=red] run tellraw @s {"translate":"lobby.NotEnough.Team","bold":true,"color":"red", "with": [{"translate":"generic.Red"},{"selector": "@a[team=red,limit=1]","bold":false}]}
execute unless entity @a[team=red] run tellraw @s {"translate":"lobby.NotEnough.Team","bold":true,"color":"red", "with": [{"translate":"generic.Red"},{"translate": "lobby.NotEnough.Empty","color":"gray","bold":false}]}
execute if entity @a[team=green] run tellraw @s {"translate":"lobby.NotEnough.Team","bold":true,"color":"green", "with": [{"translate":"generic.Green"},{"selector": "@a[team=green,limit=1]","bold":false}]}
execute unless entity @a[team=green] run tellraw @s {"translate":"lobby.NotEnough.Team","bold":true,"color":"green", "with": [{"translate":"generic.Green"},{"translate": "lobby.NotEnough.Empty","color":"gray","bold":false}]}
execute if entity @a[team=orange] run tellraw @s {"translate":"lobby.NotEnough.Team","bold":true,"color":"gold", "with": [{"translate":"generic.Orange"},{"selector": "@a[team=orange,limit=1]","bold":false}]}
execute unless entity @a[team=orange] run tellraw @s {"translate":"lobby.NotEnough.Team","bold":true,"color":"gold", "with": [{"translate":"generic.Orange"},{"translate": "lobby.NotEnough.Empty","color":"gray","bold":false}]}
tellraw @s ""
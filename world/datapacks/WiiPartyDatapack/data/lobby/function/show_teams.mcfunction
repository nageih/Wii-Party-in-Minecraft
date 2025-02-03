tellraw @s ""
execute if entity @a[team=blue] run tellraw @s {"translate":"lobby.NotEnough.Team","bold":true,"color":"#0088ff", "with": [{"translate":"generic.BlueTeam"},{"selector": "@a[team=blue,limit=1]","bold":false}]}
execute unless entity @a[team=blue] run tellraw @s {"translate":"lobby.NotEnough.Team","bold":true,"color":"#0088ff", "with": [{"translate":"generic.BlueTeam"},{"translate": "lobby.NotEnough.Empty","color":"gray","bold":false}]}
execute if entity @a[team=red] run tellraw @s {"translate":"lobby.NotEnough.Team","bold":true,"color":"red", "with": [{"translate":"generic.RedTeam"},{"selector": "@a[team=red,limit=1]","bold":false}]}
execute unless entity @a[team=red] run tellraw @s {"translate":"lobby.NotEnough.Team","bold":true,"color":"red", "with": [{"translate":"generic.RedTeam"},{"translate": "lobby.NotEnough.Empty","color":"gray","bold":false}]}
execute if entity @a[team=green] run tellraw @s {"translate":"lobby.NotEnough.Team","bold":true,"color":"green", "with": [{"translate":"generic.GreenTeam"},{"selector": "@a[team=green,limit=1]","bold":false}]}
execute unless entity @a[team=green] run tellraw @s {"translate":"lobby.NotEnough.Team","bold":true,"color":"green", "with": [{"translate":"generic.GreenTeam"},{"translate": "lobby.NotEnough.Empty","color":"gray","bold":false}]}
execute if entity @a[team=orange] run tellraw @s {"translate":"lobby.NotEnough.Team","bold":true,"color":"gold", "with": [{"translate":"generic.OrangeTeam"},{"selector": "@a[team=orange,limit=1]","bold":false}]}
execute unless entity @a[team=orange] run tellraw @s {"translate":"lobby.NotEnough.Team","bold":true,"color":"gold", "with": [{"translate":"generic.OrangeTeam"},{"translate": "lobby.NotEnough.Empty","color":"gray","bold":false}]}
tellraw @s ""
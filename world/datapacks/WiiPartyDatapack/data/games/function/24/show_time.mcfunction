scoreboard players operation s= 24timer = @s 24timer
scoreboard players operation s= 24timer /= 20 Numbers
scoreboard players operation ms= 24timer = @s 24timer
scoreboard players operation ms= 24timer %= 20 Numbers
scoreboard players operation ms= 24timer *= 5 Numbers

# Add random val to ms just to make it seem more legit
execute store result score rand= 24timer run random value 0..4
scoreboard players operation ms= 24timer += rand= 24timer

tag @s add this
execute if score ms= 24timer matches ..9 run tellraw @a[tag=playing,tag=!this] {"color":"gray","translate":"game.DerbyDash.Finish","with":[{"selector":"@s","type":"selector"},{"color":"white","score":{"name":"s=","objective": "24timer"}},[{"text":"0","color":"white"},{"color":"white","score":{"name":"ms=","objective": "24timer"}}]],"bold":false}
execute if score ms= 24timer matches 10.. run tellraw @a[tag=playing,tag=!this] {"color":"gray","translate":"game.DerbyDash.Finish","with":[{"selector":"@s","type":"selector"},{"color":"white","score":{"name":"s=","objective": "24timer"}},{"color":"white","score":{"name":"ms=","objective": "24timer"}}],"bold":false}
execute if score ms= 24timer matches ..9 run tellraw @s {"color":"gray","translate":"game.DerbyDash.Finish","with":[{"selector":"@s","type":"selector","bold":true},{"color":"white","score":{"name":"s=","objective": "24timer"}},[{"text":"0","color":"white"},{"color":"white","score":{"name":"ms=","objective": "24timer"}}]],"bold":false}
execute if score ms= 24timer matches 10.. run tellraw @s {"color":"gray","translate":"game.DerbyDash.Finish","with":[{"selector":"@s","type":"selector","bold":true},{"color":"white","score":{"name":"s=","objective": "24timer"}},{"color":"white","score":{"name":"ms=","objective": "24timer"}}],"bold":false}
tag @s remove this
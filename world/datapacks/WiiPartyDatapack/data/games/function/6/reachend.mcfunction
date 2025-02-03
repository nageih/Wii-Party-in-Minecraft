tag @s add finished
execute if entity @s[team=blue] run tag @e[type=minecraft:horse,tag=bluehorse] add finishedhorse
execute if entity @s[team=red] run tag @e[type=minecraft:horse,tag=redhorse] add finishedhorse
execute if entity @s[team=green] run tag @e[type=minecraft:horse,tag=greenhorse] add finishedhorse
execute if entity @s[team=orange] run tag @e[type=minecraft:horse,tag=orangehorse] add finishedhorse

execute at @s run playsound minecraft:ui.toast.challenge_complete master @s ~ ~ ~ 1 2


scoreboard players operation s= 6timer = @s 6timer
scoreboard players operation s= 6timer /= 20 Numbers
scoreboard players operation ms= 6timer = @s 6timer
scoreboard players operation ms= 6timer %= 20 Numbers
scoreboard players operation ms= 6timer *= 5 Numbers

# Add random val to ms just to make it seem more legit
execute store result score rand= 6timer run random value 0..4
scoreboard players operation ms= 6timer += rand= 6timer

tag @s add this
execute if score ms= 6timer matches ..9 run tellraw @a[tag=playing,tag=!this] {"color":"gray","translate":"game.DerbyDash.Finish","with":[{"selector":"@s","type":"selector"},{"color":"white","score":{"name":"s=","objective": "6timer"}},[{"text":"0","color":"white"},{"color":"white","score":{"name":"ms=","objective": "6timer"}}]],"bold":false}
execute if score ms= 6timer matches 10.. run tellraw @a[tag=playing,tag=!this] {"color":"gray","translate":"game.DerbyDash.Finish","with":[{"selector":"@s","type":"selector"},{"color":"white","score":{"name":"s=","objective": "6timer"}},{"color":"white","score":{"name":"ms=","objective": "6timer"}}],"bold":false}
execute if score ms= 6timer matches ..9 run tellraw @s {"color":"gray","translate":"game.DerbyDash.Finish","with":[{"selector":"@s","type":"selector","bold":true},{"color":"white","score":{"name":"s=","objective": "6timer"}},[{"text":"0","color":"white"},{"color":"white","score":{"name":"ms=","objective": "6timer"}}]],"bold":false}
execute if score ms= 6timer matches 10.. run tellraw @s {"color":"gray","translate":"game.DerbyDash.Finish","with":[{"selector":"@s","type":"selector","bold":true},{"color":"white","score":{"name":"s=","objective": "6timer"}},{"color":"white","score":{"name":"ms=","objective": "6timer"}}],"bold":false}
tag @s remove this

execute store result score players 6scores if entity @a[tag=ingame]
execute if entity @a[tag=1st] if entity @a[tag=2nd] if entity @a[tag=3rd] run tag @s add 4th
execute if entity @a[tag=1st] if entity @a[tag=2nd] unless entity @a[tag=3rd] run tag @s add 3rd
execute if entity @a[tag=1st] unless entity @a[tag=2nd] run tag @s add 2nd
execute unless entity @a[tag=1st] run tag @s add 1st

ride @s dismount
gamemode spectator @s

execute if entity @s[team=blue] run bossbar set minecraft:6bluestamina visible false
execute if entity @s[team=red] run bossbar set minecraft:6redstamina visible false
execute if entity @s[team=green] run bossbar set minecraft:6greenstamina visible false
execute if entity @s[team=orange] run bossbar set minecraft:6orangestamina visible false

execute if entity @s[team=blue] run tp @e[type=horse,tag=bluehorse] 0 -1000 0
execute if entity @s[team=red] run tp @e[type=horse,tag=redhorse] 0 -1000 0
execute if entity @s[team=green] run tp @e[type=horse,tag=greenhorse] 0 -1000 0
execute if entity @s[team=orange] run tp @e[type=horse,tag=orangehorse] 0 -1000 0
execute if entity @s[team=blue] run kill @e[type=horse,tag=bluehorse]
execute if entity @s[team=red] run kill @e[type=horse,tag=redhorse]
execute if entity @s[team=green] run kill @e[type=horse,tag=greenhorse]
execute if entity @s[team=orange] run kill @e[type=horse,tag=orangehorse]

execute if entity @s[team=blue] at @s run summon minecraft:firework_rocket ~ ~ ~ {LifeTime:20,FireworksItem:{id:"minecraft:firework_rocket",components:{"minecraft:fireworks":{explosions:[{shape:"star",colors:[I;35071],fade_colors:[I;10601471],has_trail:1b,has_twinkle:1b}]}},count:1}}
execute if entity @s[team=red] at @s run summon minecraft:firework_rocket ~ ~ ~ {LifeTime:20,FireworksItem:{id:"minecraft:firework_rocket",components:{"minecraft:fireworks":{explosions:[{shape:"star",colors:[I;16727357],fade_colors:[I;16750230],has_trail:1b,has_twinkle:1b}]}},count:1}}
execute if entity @s[team=green] at @s run summon minecraft:firework_rocket ~ ~ ~ {LifeTime:20,FireworksItem:{id:"minecraft:firework_rocket",components:{"minecraft:fireworks":{explosions:[{shape:"star",colors:[I;5439331],fade_colors:[I;9568164],has_trail:1b,has_twinkle:1b}]}},count:1}}
execute if entity @s[team=orange] at @s run summon minecraft:firework_rocket ~ ~ ~ {LifeTime:20,FireworksItem:{id:"minecraft:firework_rocket",components:{"minecraft:fireworks":{explosions:[{shape:"star",colors:[I;16760412],fade_colors:[I;16769195],has_trail:1b,has_twinkle:1b}]}},count:1}}



function games:6/display
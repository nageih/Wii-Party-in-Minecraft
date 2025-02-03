scoreboard players add @s 5scores 1

execute if score @s 5scores matches 1 run summon minecraft:firework_rocket ~ ~ ~ {LifeTime:0,FireworksItem:{id:"minecraft:firework_rocket",components:{"minecraft:fireworks":{explosions:[{shape:"star",colors:[I;16746375,16764538,16514938,8454033,10278143,14525439],fade_colors:[I;16777215]}]}},count:1}}

execute if score @s 5scores matches 21 run summon minecraft:firework_rocket ~3 ~ ~ {LifeTime:0,FireworksItem:{id:"minecraft:firework_rocket",components:{"minecraft:fireworks":{explosions:[{shape:"small_ball",colors:[I;16746375,16764538,16514938,8454033,10278143,14525439],fade_colors:[I;16777215]}]}},count:1}}
execute if score @s 5scores matches 21 run summon minecraft:firework_rocket ~-3 ~ ~ {LifeTime:0,FireworksItem:{id:"minecraft:firework_rocket",components:{"minecraft:fireworks":{explosions:[{shape:"small_ball",colors:[I;16746375,16764538,16514938,8454033,10278143,14525439],fade_colors:[I;16777215]}]}},count:1}}
execute if score @s 5scores matches 21 run summon minecraft:firework_rocket ~ ~3 ~ {LifeTime:0,FireworksItem:{id:"minecraft:firework_rocket",components:{"minecraft:fireworks":{explosions:[{shape:"small_ball",colors:[I;16746375,16764538,16514938,8454033,10278143,14525439],fade_colors:[I;16777215]}]}},count:1}}
execute if score @s 5scores matches 21 run summon minecraft:firework_rocket ~ ~-3 ~ {LifeTime:0,FireworksItem:{id:"minecraft:firework_rocket",components:{"minecraft:fireworks":{explosions:[{shape:"small_ball",colors:[I;16746375,16764538,16514938,8454033,10278143,14525439],fade_colors:[I;16777215]}]}},count:1}}
execute if score @s 5scores matches 21 run summon minecraft:firework_rocket ~ ~ ~ {LifeTime:0,FireworksItem:{id:"minecraft:firework_rocket",components:{"minecraft:fireworks":{explosions:[{shape:"star",colors:[I;16746375,16764538,16514938,8454033,10278143,14525439],fade_colors:[I;16777215]}]}},count:1}}

execute if score @s 5scores matches 36 run summon minecraft:firework_rocket ~ ~ ~ {LifeTime:0,FireworksItem:{id:"minecraft:firework_rocket",components:{"minecraft:fireworks":{explosions:[{shape:"large_ball",colors:[I;16746375,16764538,16514938,8454033,10278143,14525439],fade_colors:[I;16777215]}]}},count:1}}
execute if score @s 5scores matches 36 run summon minecraft:firework_rocket ~ ~ ~ {LifeTime:0,FireworksItem:{id:"minecraft:firework_rocket",components:{"minecraft:fireworks":{explosions:[{shape:"star",colors:[I;16746375,16764538,16514938,8454033,10278143,14525439],fade_colors:[I;16777215]}]}},count:1}}

kill @s[scores={5scores=41}]
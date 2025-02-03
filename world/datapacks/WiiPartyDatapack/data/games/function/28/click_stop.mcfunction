#scoreboard players operation @s 28score = timer= 28scores

# Floor target to nearest milisecond
execute store result storage game28:data val.val double 1 run scoreboard players get timer= 28scores
function games:28/floor with storage game28:data val
scoreboard players operation @s 28score = temp= 28scores

execute if entity @s[team=blue] run tag @e[type=text_display,tag=28timer,tag=blue] add stopped
execute if entity @s[team=red] run tag @e[type=text_display,tag=28timer,tag=red] add stopped
execute if entity @s[team=green] run tag @e[type=text_display,tag=28timer,tag=green] add stopped
execute if entity @s[team=orange] run tag @e[type=text_display,tag=28timer,tag=orange] add stopped

tag @s add 28stopped

execute if entity @s[team=blue] at @e[type=text_display,tag=28timer,tag=blue] run summon minecraft:firework_rocket ~ ~3 ~ {LifeTime:0,FireworksItem:{id:"minecraft:firework_rocket",components:{"minecraft:fireworks":{explosions:[{shape:"burst",colors:[I;35071],fade_colors:[I;10601471],has_trail:1b,has_twinkle:1b}]}},count:1}}
execute if entity @s[team=red] at @e[type=text_display,tag=28timer,tag=red] run summon minecraft:firework_rocket ~ ~3 ~ {LifeTime:0,FireworksItem:{id:"minecraft:firework_rocket",components:{"minecraft:fireworks":{explosions:[{shape:"burst",colors:[I;16727357],fade_colors:[I;16750230],has_trail:1b,has_twinkle:1b}]}},count:1}}
execute if entity @s[team=green] at @e[type=text_display,tag=28timer,tag=green] run summon minecraft:firework_rocket ~ ~3 ~ {LifeTime:0,FireworksItem:{id:"minecraft:firework_rocket",components:{"minecraft:fireworks":{explosions:[{shape:"burst",colors:[I;5439331],fade_colors:[I;9568164],has_trail:1b,has_twinkle:1b}]}},count:1}}
execute if entity @s[team=orange] at @e[type=text_display,tag=28timer,tag=orange] run summon minecraft:firework_rocket ~ ~3 ~ {LifeTime:0,FireworksItem:{id:"minecraft:firework_rocket",components:{"minecraft:fireworks":{explosions:[{shape:"burst",colors:[I;16760412],fade_colors:[I;16769195],has_trail:1b,has_twinkle:1b}]}},count:1}}

execute if score @s 28score = target= 28scores run tag @s add 28exact

function games:28/display
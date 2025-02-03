tp @s ~ -70 ~
execute if entity @s[team=blue] run kill @e[type=armor_stand,tag=firework,team=blue]
execute if entity @s[team=red] run kill @e[type=armor_stand,tag=firework,team=red]
execute if entity @s[team=green] run kill @e[type=armor_stand,tag=firework,team=green]
execute if entity @s[team=orange] run kill @e[type=armor_stand,tag=firework,team=orange]
kill @s

summon minecraft:firework_rocket ~ ~1 ~ {LifeTime:0,FireworksItem:{id:"minecraft:firework_rocket",components:{"minecraft:fireworks":{explosions:[{shape:"small_ball",colors:[I;16746375,16764538,16514938,8454033,10278143,14525439],fade_colors:[I;16777215]}]}},count:1}}

scoreboard players remove left= 5scores 1

execute if score launchTimer= 5scores matches 90 if entity @s[team=blue] run scoreboard players set @a[tag=ingame,team=blue] 5scores 1
execute if score launchTimer= 5scores matches 90 if entity @s[team=red] run scoreboard players set @a[tag=ingame,team=red] 5scores 1
execute if score launchTimer= 5scores matches 90 if entity @s[team=green] run scoreboard players set @a[tag=ingame,team=green] 5scores 1
execute if score launchTimer= 5scores matches 90 if entity @s[team=orange] run scoreboard players set @a[tag=ingame,team=orange] 5scores 1

execute if score launchTimer= 5scores matches 130 if entity @s[team=blue] run scoreboard players set @a[tag=ingame,team=blue] 5scores 2
execute if score launchTimer= 5scores matches 130 if entity @s[team=red] run scoreboard players set @a[tag=ingame,team=red] 5scores 2
execute if score launchTimer= 5scores matches 130 if entity @s[team=green] run scoreboard players set @a[tag=ingame,team=green] 5scores 2
execute if score launchTimer= 5scores matches 130 if entity @s[team=orange] run scoreboard players set @a[tag=ingame,team=orange] 5scores 2

execute if score launchTimer= 5scores matches 165 if entity @s[team=blue] run scoreboard players set @a[tag=ingame,team=blue] 5scores 3
execute if score launchTimer= 5scores matches 165 if entity @s[team=red] run scoreboard players set @a[tag=ingame,team=red] 5scores 3
execute if score launchTimer= 5scores matches 165 if entity @s[team=green] run scoreboard players set @a[tag=ingame,team=green] 5scores 3
execute if score launchTimer= 5scores matches 165 if entity @s[team=orange] run scoreboard players set @a[tag=ingame,team=orange] 5scores 3
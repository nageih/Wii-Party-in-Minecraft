playsound minecraft:ui.toast.challenge_complete master @a ~ ~ ~ 3

tp @s ~ -70 ~
execute if entity @s[team=blue] run kill @e[type=armor_stand,tag=firework,team=blue]
execute if entity @s[team=red] run kill @e[type=armor_stand,tag=firework,team=red]
execute if entity @s[team=green] run kill @e[type=armor_stand,tag=firework,team=green]
execute if entity @s[team=orange] run kill @e[type=armor_stand,tag=firework,team=orange]
kill @s

schedule function games:5/end_game 3s

scoreboard players set ingame= 5scores 6

summon minecraft:area_effect_cloud ~ ~ ~ {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["finalFirework"]}
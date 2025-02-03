execute store result storage game48 player double 1 run scoreboard players get @s 48distance
#function games:48/place_line with storage game48

execute if entity @s[team=blue] positioned 48999 16 49132 run function games:48/summon_player with storage game48
execute if entity @s[team=red] positioned 48998 16 49132 run function games:48/summon_player with storage game48
execute if entity @s[team=green] positioned 48997 16 49132 run function games:48/summon_player with storage game48
execute if entity @s[team=orange] positioned 48996 16 49132 run function games:48/summon_player with storage game48
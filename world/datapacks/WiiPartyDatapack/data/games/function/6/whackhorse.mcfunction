scoreboard players remove @s 6stamina 15
scoreboard players set @s 6canwhack 5
scoreboard players set @s 6whackcooldown 150
execute at @s run playsound minecraft:entity.player.attack.knockback master @a ~ ~ ~ 10 1.5
execute if entity @s[team=blue] run effect give @e[type=minecraft:horse,tag=bluehorse] minecraft:speed 1 1 true
execute if entity @s[team=red] run effect give @e[type=minecraft:horse,tag=redhorse] minecraft:speed 1 1 true
execute if entity @s[team=green] run effect give @e[type=minecraft:horse,tag=greenhorse] minecraft:speed 1 1 true
execute if entity @s[team=orange] run effect give @e[type=minecraft:horse,tag=orangehorse] minecraft:speed 1 1 true

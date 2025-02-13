

#if the player whips
# execute as @a[tag=ingame,scores={6rightclick=1..,6stamina=15..,6canwhack=0}] run function games:6/whackhorse
# execute as @a[tag=ingame,scores={6rightclick=1..,6stamina=..14,6canwhack=0}] run function games:6/whackhorseslow
execute as @a[tag=ingame,scores={6whackcooldown=101..150,6stamina=..99}] if score cooldown1 6scores matches 0 run function games:6/addstam
execute as @a[tag=ingame,scores={6whackcooldown=51..100,6stamina=..99}] if score cooldown2 6scores matches 0 run function games:6/addstam
execute as @a[tag=ingame,scores={6whackcooldown=0..50,6stamina=..99}] if score cooldown3 6scores matches 0 run function games:6/addstam

#updated the scoreboard to show the stamina value
execute store result bossbar minecraft:6bluestamina value run scoreboard players get @a[team=blue,limit=1] 6stamina
execute store result bossbar minecraft:6redstamina value run scoreboard players get @a[team=red,limit=1] 6stamina
execute store result bossbar minecraft:6greenstamina value run scoreboard players get @a[team=green,limit=1] 6stamina
execute store result bossbar minecraft:6orangestamina value run scoreboard players get @a[team=orange,limit=1] 6stamina

#detects if the players are all riding their horses
#execute unless entity @a[tag=ingame,nbt=!{RootVehicle:{}}] if score mounting 6scores matches 1 run function games:6/countdown/start

#detects if a player finishes the race
execute if score ingame 6scores matches 2 as @a[tag=ingame,x=6035,y=13,z=6035,dx=2,dy=5,dz=12,tag=!finished,limit=1,sort=random] run function games:6/reachend
execute as @e[type=minecraft:horse,x=6035,y=13,z=6035,dx=2,dy=5,dz=12,tag=finishedhorse] at @s run tp @s ~3 ~ ~
execute if score ingame 6scores matches 2 if score notfinished 6scores matches ..1 run function games:6/endrace


#other stuff
scoreboard players remove @a[scores={6canwhack=1..}] 6canwhack 1
scoreboard players remove @a[scores={6whackcooldown=1..}] 6whackcooldown 1
execute store result score notfinished 6scores if entity @a[tag=ingame,tag=!finished]
execute if score cooldown1 6scores matches 0 run scoreboard players set cooldown1 6scores 4
execute if score cooldown2 6scores matches 0 run scoreboard players set cooldown2 6scores 2
execute if score cooldown3 6scores matches 0 run scoreboard players set cooldown3 6scores 1
execute if score cooldown1 6scores matches 1.. run scoreboard players remove cooldown1 6scores 1
execute if score cooldown2 6scores matches 1.. run scoreboard players remove cooldown2 6scores 1
execute if score cooldown3 6scores matches 1.. run scoreboard players remove cooldown3 6scores 1
scoreboard players set @a 6rightclick 0


execute if score ingame 6scores matches 1.. as @a[tag=ingame] unless predicate games:6whip run function games:6/give_whip

scoreboard players add @a[tag=ingame,tag=!finished] 6timer 1



ride @a[team=blue,tag=ingame,limit=1,nbt=!{RootVehicle:{}}] mount @e[type=horse,tag=bluehorse,limit=1]
ride @a[team=red,tag=ingame,limit=1,nbt=!{RootVehicle:{}}] mount @e[type=horse,tag=redhorse,limit=1]
ride @a[team=green,tag=ingame,limit=1,nbt=!{RootVehicle:{}}] mount @e[type=horse,tag=greenhorse,limit=1]
ride @a[team=orange,tag=ingame,limit=1,nbt=!{RootVehicle:{}}] mount @e[type=horse,tag=orangehorse,limit=1]

execute as @a[tag=ingame,team=blue] unless score @s 6canwhack matches 1.. at @s anchored eyes positioned ^ ^ ^1 run tp @e[type=interaction,tag=blue,tag=6interact] ~ ~-0.5 ~
execute as @a[tag=ingame,team=red] unless score @s 6canwhack matches 1.. at @s anchored eyes positioned ^ ^ ^1 run tp @e[type=interaction,tag=red,tag=6interact] ~ ~-0.5 ~
execute as @a[tag=ingame,team=green] unless score @s 6canwhack matches 1.. at @s anchored eyes positioned ^ ^ ^1 run tp @e[type=interaction,tag=green,tag=6interact] ~ ~-0.5 ~
execute as @a[tag=ingame,team=orange] unless score @s 6canwhack matches 1.. at @s anchored eyes positioned ^ ^ ^1 run tp @e[type=interaction,tag=orange,tag=6interact] ~ ~-0.5 ~
execute as @a[tag=ingame,team=blue] if score @s 6canwhack matches 1.. at @s anchored eyes positioned ^ ^ ^1 run tp @e[type=interaction,tag=blue,tag=6interact] ~ ~-10.5 ~
execute as @a[tag=ingame,team=red] if score @s 6canwhack matches 1.. at @s anchored eyes positioned ^ ^ ^1 run tp @e[type=interaction,tag=red,tag=6interact] ~ ~-10.5 ~
execute as @a[tag=ingame,team=green] if score @s 6canwhack matches 1.. at @s anchored eyes positioned ^ ^ ^1 run tp @e[type=interaction,tag=green,tag=6interact] ~ ~-10.5 ~
execute as @a[tag=ingame,team=orange] if score @s 6canwhack matches 1.. at @s anchored eyes positioned ^ ^ ^1 run tp @e[type=interaction,tag=orange,tag=6interact] ~ ~-10.5 ~
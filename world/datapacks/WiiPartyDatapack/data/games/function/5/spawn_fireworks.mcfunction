# Kills all previous fireworks (for debugging)
kill @e[type=minecraft:armor_stand,tag=firework]
kill @e[type=minecraft:item_frame,tag=detonator]

# Stores the number of players into the players= score
execute store result score players= 5scores if entity @a[tag=ingame]
# ?????
### scoreboard players set players= 5scores 4

# If 2 players or 4 players
execute unless score players= 5scores matches 3 run summon minecraft:armor_stand 5001 12.235 5011.25 {DisabledSlots:4144959,Marker:1b,NoBasePlate:1b,NoGravity:1b,Invisible:1b,Silent:1b,Tags:["firework"],Invulnerable:1b,ArmorItems:[{},{},{},{id:"minecraft:leather_horse_armor",count:1}]}
execute unless score players= 5scores matches 3 run summon minecraft:armor_stand 5005 12.235 5011.25 {DisabledSlots:4144959,Marker:1b,NoBasePlate:1b,NoGravity:1b,Invisible:1b,Silent:1b,Tags:["firework"],Invulnerable:1b,ArmorItems:[{},{},{},{id:"minecraft:leather_horse_armor",count:1}]}
# If 4 players
execute if score players= 5scores matches 4 run summon minecraft:armor_stand 4997 12.235 5011.25 {NoBasePlate:1b,DisabledSlots:4144959,Marker:1b,NoGravity:1b,Invisible:1b,Silent:1b,Tags:["firework"],Invulnerable:1b,ArmorItems:[{},{},{},{id:"minecraft:leather_horse_armor",count:1}]}
execute if score players= 5scores matches 4 run summon minecraft:armor_stand 5009 12.235 5011.25 {NoBasePlate:1b,DisabledSlots:4144959,Marker:1b,NoGravity:1b,Invisible:1b,Silent:1b,Tags:["firework"],Invulnerable:1b,ArmorItems:[{},{},{},{id:"minecraft:leather_horse_armor",count:1}]}
# If 3 players
execute if score players= 5scores matches 3 run summon minecraft:armor_stand 4999 12.235 5011.25 {NoBasePlate:1b,DisabledSlots:4144959,Marker:1b,NoGravity:1b,Invisible:1b,Silent:1b,Tags:["firework"],Invulnerable:1b,ArmorItems:[{},{},{},{id:"minecraft:leather_horse_armor",count:1}]}
execute if score players= 5scores matches 3 run summon minecraft:armor_stand 5003 12.235 5011.25 {NoBasePlate:1b,DisabledSlots:4144959,Marker:1b,NoGravity:1b,Invisible:1b,Silent:1b,Tags:["firework"],Invulnerable:1b,ArmorItems:[{},{},{},{id:"minecraft:leather_horse_armor",count:1}]}
execute if score players= 5scores matches 3 run summon minecraft:armor_stand 5007 12.235 5011.25 {NoBasePlate:1b,DisabledSlots:4144959,Marker:1b,NoGravity:1b,Invisible:1b,Silent:1b,Tags:["firework"],Invulnerable:1b,ArmorItems:[{},{},{},{id:"minecraft:leather_horse_armor",count:1}]}

# Runs functins as all these fireworks to make them all unique
# First it gives them a unique shape
execute as @e[type=minecraft:armor_stand,tag=firework,sort=random] run function games:5/set_type
# Then a unique pattern overlay
execute as @e[type=minecraft:armor_stand,tag=firework,sort=random] run function games:5/set_pattern
# Then gives it a random color
execute as @e[type=minecraft:armor_stand,tag=firework,sort=random] run function games:5/set_color

# Then it makes sure that the firework that uses two models is complete by adding the second half above
execute as @e[type=minecraft:armor_stand,tag=firework,scores={5cMD=501..503}] at @s run function games:5/set_double

# Finally it spawns all the detonators adjacent to the fireworks
execute as @e[type=minecraft:armor_stand,tag=firework,tag=!double] at @s run summon minecraft:item_frame ~-1 ~ ~ {Fixed:1b,Silent:1b,Facing:1,Invulnerable:1b,Invisible:1b,Tags:["detonator"],Item:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_model_data":5001},count:1}}
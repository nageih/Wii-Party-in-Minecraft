execute if entity @s[tag=volcanoFake] at @e[type=minecraft:area_effect_cloud,tag=volcanoTile] facing entity @e[type=minecraft:area_effect_cloud,tag=volcanoBoostEnd] feet run playsound minecraft:entity.ender_dragon.shoot master @a[tag=playing] ^ ^80 ^-100 30 0.75

execute unless entity @s[tag=volcanoFake] run summon minecraft:armor_stand -214 93 56 {ArmorItems:[{},{},{},{id:"minecraft:ancient_debris",count:1}],Invisible:1b,NoGravity:1b,DisabledSlots:4144959,Invulnerable:1b,Silent:1b,Marker:1b,Tags:["meteor","temp"]}
execute if entity @s[tag=volcanoFake] at @e[type=minecraft:area_effect_cloud,tag=volcanoTile] facing entity @e[type=minecraft:area_effect_cloud,tag=volcanoBoostEnd] feet run summon minecraft:armor_stand ^ ^80 ^-100 {ArmorItems:[{},{},{},{id:"minecraft:ancient_debris",count:1}],Invisible:1b,NoGravity:1b,DisabledSlots:4144959,Invulnerable:1b,Silent:1b,Marker:1b,Tags:["meteor","temp"]}

scoreboard players operation @e[type=minecraft:armor_stand,tag=meteor,tag=temp] volcanoOrder = volcanoTotal= tiles

scoreboard players remove volcanoTotal= tiles 1

tag @e[type=minecraft:armor_stand,tag=temp] remove temp
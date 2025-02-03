summon minecraft:slime ~ ~1 ~ {NoAI:1b,PersistenceRequired:1b,Size:0,Silent:1b,Tags:["firework","tempTrail"],Invulnerable:1b,active_effects:[{id:"minecraft:invisibility",duration:1000000,show_particles:0b}]}
#summon area_effect_cloud ~ ~1 ~ {Tags:["firework","tempTrail"],Age:-2147483648,Duration:-1,WaitTime:-2147483648}


execute if entity @s[team=blue] run team join blue @e[tag=tempTrail]
execute if entity @s[team=red] run team join red @e[tag=tempTrail]
execute if entity @s[team=green] run team join green @e[tag=tempTrail]
execute if entity @s[team=orange] run team join orange @e[tag=tempTrail]
execute if entity @s[team=] run team join gray @e[tag=tempTrail]

tag @e[tag=tempTrail] remove tempTrail
execute positioned 38000 15 38000 run tp @e[type=minecraft:cat,distance=..100] ~ -1000 ~
execute positioned 38000 15 38000 run tp @e[type=minecraft:wolf,distance=..100] ~ -1000 ~
execute positioned 38000 15 38000 run tp @e[type=minecraft:fox,distance=..100] ~ -1000 ~

summon minecraft:cat 37985 13 37995 {Invulnerable:1b,CatType:0}
summon minecraft:cat 37985 13 37995 {Invulnerable:1b,CatType:1}
summon minecraft:cat 37985 13 37995 {Invulnerable:1b,CatType:2}
summon minecraft:cat 37985 13 37995 {Invulnerable:1b,CatType:3}
summon minecraft:cat 37985 13 37995 {Invulnerable:1b,CatType:4}
summon minecraft:cat 37985 13 37995 {Invulnerable:1b,CatType:5}
summon minecraft:cat 37985 13 37995 {Invulnerable:1b,CatType:6}
summon minecraft:cat 37985 13 37995 {Invulnerable:1b,CatType:7}
summon minecraft:cat 37985 13 37995 {Invulnerable:1b,CatType:8}
summon minecraft:cat 37985 13 37995 {Invulnerable:1b,CatType:9}
summon minecraft:cat 37985 13 37995 {Invulnerable:1b,CatType:10}

summon minecraft:wolf 37985 13 37995 {Invulnerable:1b}
summon minecraft:wolf 37985 13 37995 {Invulnerable:1b}
summon minecraft:wolf 37985 13 37995 {Invulnerable:1b}
summon minecraft:wolf 37985 13 37995 {Invulnerable:1b}

summon minecraft:fox 37985 13 37995 {Invulnerable:1b,Type:"red"}
summon minecraft:fox 37985 13 37995 {Invulnerable:1b,Type:"red"}
summon minecraft:fox 37985 13 37995 {Invulnerable:1b,Type:"red"}
summon minecraft:fox 37985 13 37995 {Invulnerable:1b,Type:"red"}
summon minecraft:fox 37985 13 37995 {Invulnerable:1b,Type:"red"}
summon minecraft:fox 37985 13 37995 {Invulnerable:1b,Type:"red"}
summon minecraft:fox 37985 13 37995 {Invulnerable:1b,Type:"red"}
summon minecraft:fox 37985 13 37995 {Invulnerable:1b,Type:"snow"}

execute positioned 38000 15 38000 run effect give @e[type=minecraft:cat,distance=..100] minecraft:invisibility 1000000 0 true
execute positioned 38000 15 38000 run effect give @e[type=minecraft:wolf,distance=..100] minecraft:invisibility 1000000 0 true
execute positioned 38000 15 38000 run effect give @e[type=minecraft:fox,distance=..100] minecraft:invisibility 1000000 0 true

execute positioned 38000 15 38000 run effect give @e[type=minecraft:wolf,distance=..100] minecraft:speed 1000000 1 true
execute positioned 38000 15 38000 run effect give @e[type=minecraft:fox,distance=..100] minecraft:speed 1000000 0 true
summon minecraft:lightning_bolt -193 61 50
execute positioned -193 61 62 run playsound entity.lightning_bolt.impact master @a ~ ~ ~ 3 0.75
setblock -193 61 50 fire
particle explosion -193 61 50 0 0 0 0 1
summon minecraft:lightning_bolt -193 61 62
execute positioned -193 61 62 run playsound entity.lightning_bolt.impact master @a ~ ~ ~ 3 0.75
setblock -193 61 62 fire
particle explosion -193 61 62 0 0 0 0 1


#particle minecraft:enchant -194 58 56 5 5 5 0.5 250
particle minecraft:white_smoke -194 58 56 5 5 5 0.25 250
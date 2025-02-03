fill -224 13 -22 -224 14 -22 minecraft:yellow_concrete
fill -225 13 -21 -225 13 -21 minecraft:orange_concrete
fill -226 13 -20 -226 12 -20 minecraft:red_concrete
fill -227 12 -19 -227 14 -19 minecraft:orange_concrete
fill -228 11 -18 -228 12 -18 minecraft:yellow_concrete
fill -229 13 -17 -229 10 -17 air
fill -230 12 -16 -230 10 -16 air
fill -231 10 -15 -231 12 -15 minecraft:yellow_concrete
fill -232 11 -14 -232 14 -14 minecraft:orange_concrete
fill -233 11 -13 -233 13 -13 minecraft:red_concrete
fill -234 13 -12 -234 13 -12 minecraft:orange_concrete
fill -235 13 -11 -235 14 -11 minecraft:yellow_concrete
execute positioned -230 12 -17 run playsound minecraft:entity.wither.death master @a ~ ~ ~ 5
particle minecraft:flame -230 12 -17 2 2 2 0.1 20
particle minecraft:flame -226 13 -20 2 2 2 0.1 20
particle minecraft:flame -233 13 -14 2 2 2 0.1 20
schedule function board:tiles/dragonwall/stages/2 3t
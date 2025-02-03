fill 1007 146 1001 1001 146 1001 minecraft:blue_wool
fill 1005 146 1001 1003 146 1001 minecraft:blue_concrete
fill 1007 146 1002 1001 146 1002 minecraft:blue_wool
setblock 1004 146 1002 minecraft:blue_concrete
fill 1007 146 1003 1001 146 1003 minecraft:blue_wool
schedule function games:1/closeblue3/stage4 3t
execute positioned 1004 147 1000 run playsound minecraft:entity.blaze.hurt master @a ~ ~ ~ 3.5 0.7
fill 1007 146 1005 1001 146 1005 minecraft:air
fill 1007 146 1001 1001 146 1001 minecraft:blue_wool
fill 1006 146 1001 1002 146 1001 minecraft:blue_concrete
fill 1007 146 1002 1001 146 1002 minecraft:blue_wool
fill 1005 146 1002 1003 146 1002 minecraft:blue_concrete
fill 1007 146 1003 1001 146 1003 minecraft:blue_wool
setblock 1004 146 1003 minecraft:blue_concrete
fill 1007 146 1004 1001 146 1004 minecraft:blue_wool
schedule function games:1/openblue3/stage2 3t
execute positioned 1004 147 1000 run playsound minecraft:entity.blaze.hurt master @a ~ ~ ~ 10 0.5
fill 1007 240 1001 1001 240 1001 minecraft:blue_wool
fill 1006 240 1001 1002 240 1001 minecraft:blue_concrete
fill 1007 240 1002 1001 240 1002 minecraft:blue_wool
fill 1005 240 1002 1003 240 1002 minecraft:blue_concrete
fill 1007 240 1003 1001 240 1003 minecraft:blue_wool
setblock 1004 240 1003 minecraft:blue_concrete
fill 1007 240 1004 1001 240 1004 minecraft:blue_wool
schedule function games:1/closeblue1/stage5 3t
execute positioned 1004 241 1000 run playsound minecraft:entity.blaze.hurt master @a ~ ~ ~ 3.5 0.8
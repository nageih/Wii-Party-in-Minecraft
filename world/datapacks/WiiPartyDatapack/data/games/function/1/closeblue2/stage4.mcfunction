fill 1007 191 1001 1001 191 1001 minecraft:blue_wool
fill 1006 191 1001 1002 191 1001 minecraft:blue_concrete
fill 1007 191 1002 1001 191 1002 minecraft:blue_wool
fill 1005 191 1002 1003 191 1002 minecraft:blue_concrete
fill 1007 191 1003 1001 191 1003 minecraft:blue_wool
setblock 1004 191 1003 minecraft:blue_concrete
fill 1007 191 1004 1001 191 1004 minecraft:blue_wool
schedule function games:1/closeblue2/stage5 3t
execute positioned 1004 192 1000 run playsound minecraft:entity.blaze.hurt master @a ~ ~ ~ 3.5 0.8
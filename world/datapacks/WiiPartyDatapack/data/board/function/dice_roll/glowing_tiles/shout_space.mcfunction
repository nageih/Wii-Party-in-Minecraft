kill @e[type=minecraft:falling_block,tag=tileGlow]

summon minecraft:falling_block ~ ~ ~ {BlockState:{Name:"minecraft:polished_diorite"},NoGravity:1b,Time:-2147483648,Glowing:1b,Tags:["tileGlow"]}
summon minecraft:falling_block ~ ~ ~0.99 {BlockState:{Name:"minecraft:green_terracotta",Properties:{facing:"north"}},NoGravity:1b,Time:-2147483648,Glowing:1b,Tags:["tileGlow"]}
summon minecraft:falling_block ~0.99 ~ ~ {BlockState:{Name:"minecraft:green_terracotta",Properties:{facing:"west"}},NoGravity:1b,Time:-2147483648,Glowing:1b,Tags:["tileGlow"]}
summon minecraft:falling_block ~ ~ ~-0.99 {BlockState:{Name:"minecraft:green_terracotta",Properties:{facing:"south"}},NoGravity:1b,Time:-2147483648,Glowing:1b,Tags:["tileGlow"]}
summon minecraft:falling_block ~-0.99 ~ ~ {BlockState:{Name:"minecraft:green_terracotta",Properties:{facing:"east"}},NoGravity:1b,Time:-2147483648,Glowing:1b,Tags:["tileGlow"]}

execute as @e[type=minecraft:falling_block,tag=tileGlow] run team join colorGreen